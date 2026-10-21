# Audio::Nama::MIDI

Files to shoe-horn into Audio::Nama.

## Installation
```shell
cd ~/repos
git clone https://github.com/ology/Audio-Nama-MIDI.git
git clone https://github.com/bolangi/nama.git
cp Audio-Nama-MIDI/lib/Audio/Nama.pm nama/lib/Audio
cd nama/lib/Audio/Nama/
ln -s ~/repos/Audio-Nama-MIDI/lib/Audio/Nama/RtMidiTrack.pm
ln -s ~/repos/Audio-Nama-MIDI/lib/Audio/Nama/RtMidiCommands.pm
mkdir RtMidiTrack
cd RtMidiTrack/
ln -s ~/repos/Audio-Nama-MIDI/lib/Audio/Nama/RtMidiTrack/NullOut.pm
```