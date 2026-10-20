package Audio::Nama::RtMidiTrack::NullOut;

sub new { bless {}, shift }
sub send_event {}
sub close_port {}
sub open_virtual_port {}

1;