import 'package:flutter/widgets.dart';
import 'package:music_mixer/provider.dart';
import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

class MyProvider extends ChangeNotifier {
 


  IconData iconData = Icons.play_arrow;

  Future<void> playPause(
    AssetsAudioPlayer assetsAudioPlayer1,
    AssetsAudioPlayer assetsAudioPlayer2,
    AssetsAudioPlayer assetsAudioPlayer3,
    AssetsAudioPlayer assetsAudioPlayer4,
  
  ) async {
    if (iconData == Icons.play_arrow) {
      iconData = Icons.pause;
      await assetsAudioPlayer1.playOrPause();
      await assetsAudioPlayer2.playOrPause();
      await assetsAudioPlayer3.playOrPause();
      await assetsAudioPlayer4.playOrPause();
    } else {
      iconData = Icons.play_arrow;
      await assetsAudioPlayer1.playOrPause();
      await assetsAudioPlayer2.playOrPause();
      await assetsAudioPlayer3.playOrPause();
      await assetsAudioPlayer4.playOrPause();
    }

    notifyListeners();
  } 
}
