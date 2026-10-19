package Audio::Nama::MIDI;

# ABSTRACT: Moo Module

our $VERSION = '0.0100';

use Moo;
use strictures 2;
use Carp qw(croak);
use namespace::clean;

=head1 SYNOPSIS

  use Audio::Nama::MIDI ();

  my $x = Audio::Nama::MIDI->new(verbose => 1);

=head1 DESCRIPTION

A C<Audio::Nama::MIDI> is a Moo module.

=head1 ATTRIBUTES

=head2 verbose

  $verbose = $x->verbose;

Show progress.

=cut

has verbose => (
    is      => 'ro',
    isa     => sub { croak "$_[0] is not a boolean" unless $_[0] =~ /^[01]$/ },
    default => sub { 0 },
);

=head1 METHODS

=head2 new

  $x = Audio::Nama::MIDI->new(verbose => 1);

Create a new C<Audio::Nama::MIDI> object.

=for Pod::Coverage BUILD

=cut

1;
__END__

=head1 SEE ALSO

L<Moo>

L<http://somewhere.el.se>

=cut
