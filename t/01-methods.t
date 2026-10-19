#!/usr/bin/env perl
use strict;
use warnings;

use Test::More;

use_ok 'Audio::Nama::MIDI';

new_ok 'Audio::Nama::MIDI';

my $obj = new_ok 'Audio::Nama::MIDI' => [
    verbose => 1,
];

is $obj->verbose, 1, 'verbose';

done_testing();
