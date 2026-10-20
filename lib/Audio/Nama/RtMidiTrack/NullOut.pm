package Audio::Nama::RtMidiTrack::NullOut;
use v5.36;
sub new      { bless {}, shift }
sub AUTOLOAD { return }   # accept any method call
sub DESTROY  {}
1;