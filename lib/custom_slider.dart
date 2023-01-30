import 'package:flutter/material.dart';
import 'package:music_mixer/provider.dart';
import 'package:provider/provider.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

class CustomSlider extends StatefulWidget {
  CustomSlider({super.key, required this.assetsAudioPlayer, required this.audio});
  AssetsAudioPlayer assetsAudioPlayer;
  Audio audio;

  @override
  State<CustomSlider> createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  double _val = 0.5;

  void playPause() async {}

  @override
  void initState() {
    super.initState();
    widget.assetsAudioPlayer.open(
      widget.audio,
      autoStart: false,
      playSpeed: 1,
    );

    widget.assetsAudioPlayer.playlistAudioFinished.listen((Playing playing) {
      widget.assetsAudioPlayer.open(
        widget.audio,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyProvider(),
      child: Consumer<MyProvider>(builder: (context, provider, child) {
        return Slider(
          value: _val,
          min: 0,
          max: 1,
          thumbColor: Colors.black,
          activeColor: Colors.black,
          inactiveColor: Colors.black,
          secondaryActiveColor: Colors.black,
          onChanged: (i) {
            this.setState(() {
              _val = i;
              widget.assetsAudioPlayer.setVolume(i);
            });
          },
        );
      }),
    );
  }
}
