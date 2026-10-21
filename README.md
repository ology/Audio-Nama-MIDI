# Audio::Nama::MIDI

Files to shoe-horn into Audio::Nama.

## Installation
```shell
git clone https://github.com/ology/Audio-Nama-MIDI.git
git clone https://github.com/bolangi/nama.git
cd nama/lib/Audio/Nama/
ln -s ~/sandbox/Audio-Nama-MIDI/lib/Audio/Nama/RtMidiTrack.pm
ln -s ~/sandbox/Audio-Nama-MIDI/lib/Audio/Nama/RtMidiCommands.pm
mkdir RtMidiTrack
cd RtMidiTrack/
ln -s ~/sandbox/Audio-Nama-MIDI/lib/Audio/Nama/RtMidiTrack/NullOut.pm
```