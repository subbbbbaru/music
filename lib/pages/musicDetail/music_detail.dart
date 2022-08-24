import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:music/pages/musicDetail/components/body_music_detail.dart';

class MusicDetail extends StatelessWidget {
  const MusicDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: BodyMusicDetail(),
      //appBar: CustomA,
    );
  }
}
