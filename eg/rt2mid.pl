#!/usr/bin/env perl

# Convert an rt-midi take (.rtmidi/<track>_<n>.json) to a standard MIDI file.
# usage: perl rt2mid.pl ~/nama/Untitled/.rtmidi/best_1.json some.mid

use v5.36;
use JSON::PP qw(decode_json);
use List::Util qw(max);
use MIDI;

my ($in, $out) = @ARGV;
($in and $out) or die "usage: $0 take.json out.mid\n";

my $json = do { open my $fh, '<', $in or die "$in: $!\n"; local $/; <$fh> };
my $take = decode_json($json);

my $TPQN          = 480;            # ticks per quarter note
my $TICKS_PER_SEC = 2 * $TPQN;      # fixed 120 BPM: one quarter note = 0.5 s

my @events = ( [ 'set_tempo', 0, 500_000 ] );
my $last = 0; # absolute tick of the previous event

for my $e (sort { $a->[0] <=> $b->[0] } $take->{events}->@*) {
	my ($seconds, $type, @args) = @$e;
	my $tick = sprintf '%.0f', $seconds * $TICKS_PER_SEC;
	push @events, [ $type, $tick - $last, @args ];
	$last = $tick;
}

# end the file at the take's length so trailing silence/release is kept
my $end = sprintf '%.0f', ($take->{length} // 0) * $TICKS_PER_SEC;
push @events, [ 'end_track', max(0, $end - $last) ];

MIDI::Opus->new({
	format => 0,
	ticks  => $TPQN,
	tracks => [ MIDI::Track->new({ events => \@events }) ],
})->write_to_file($out);

say "wrote $out";