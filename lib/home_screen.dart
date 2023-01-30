import 'package:flutter/material.dart';
import 'package:music_mixer/custom_slider.dart';
import 'package:music_mixer/provider.dart';
import 'package:provider/provider.dart';
import 'provider.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
final assetsAudioPlayer1 = AssetsAudioPlayer();
  final assetsAudioPlayer2 = AssetsAudioPlayer();
  final assetsAudioPlayer3 = AssetsAudioPlayer();
  final assetsAudioPlayer4 = AssetsAudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<MyProvider>(builder: (context, provider, child) {
        return SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                color: Color.fromARGB(255, 254, 208, 48),
                height: MediaQuery.of(context).size.height / 2,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(),
                      Text(
                        'Another Love',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 40),
                      ),
                      GestureDetector(
                        onTap: ()async {
                          await provider.playPause(assetsAudioPlayer1,assetsAudioPlayer2,
                          assetsAudioPlayer3,assetsAudioPlayer4
                          );
                        },
                        child: CircleAvatar(
                          radius: 50,
                          backgroundColor: Colors.black,
                          child: Icon(
                            provider.iconData,
                            color: Color.fromARGB(255, 254, 208, 48),
                            size: 50,
                          ),
                        ),
                      ),
                      CustomSlider(
                        assetsAudioPlayer: assetsAudioPlayer1,
                        audio:Audio("music/1.mp3") ,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:8.0),
                child: Container(
                  height: MediaQuery.of(context).size.height / 2 - 70,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Music 1 "Original"',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                      CustomSlider(
                        assetsAudioPlayer: assetsAudioPlayer2,
                        audio:Audio("music/2.mp3") ,
                      ),
                      Text(
                        'Music 2',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                      CustomSlider(
                        assetsAudioPlayer: assetsAudioPlayer3,
                        audio:Audio("music/3.mp3") ,
                      ),
                      Text(
                        'Music 3',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                      CustomSlider(
                        assetsAudioPlayer: assetsAudioPlayer4,
                        audio:Audio("music/4.mp3") ,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
