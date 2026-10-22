# Audio::Nama::MIDI

Files to shoe-horn into Audio::Nama

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

## Usage
```
add_rt_track test
rt_set input pad
rt_set output synth
rt_record
rt_stop
rt_takes
version 1
rt_play
rt_make_track best 1 1
```

Then, after the take:

```shell
perl eg/rt2mid.pl ~/nama/your_project/.rtmidi/best_1.json best_1.mid
```