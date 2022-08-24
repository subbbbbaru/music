import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:simple_shadow/simple_shadow.dart';

class BodyMusicDetail extends StatefulWidget {
  const BodyMusicDetail({Key? key}) : super(key: key);

  @override
  State<BodyMusicDetail> createState() => _BodyMusicDetailState();
}

class _BodyMusicDetailState extends State<BodyMusicDetail> {
  double _count = 0.0;
  double sizeic = 87;

  bool bg = false;

  bool playBtnPress = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Container(
          width: size.width,
          height: size.height,
          color: bg ? Colors.white : Colors.black,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SimpleShadow(
                color: Colors.black,
                child: LinearGradientMask(
                  child: SvgPicture.asset(
                    "assets/musicDetailLogo.svg",
                    width: size.width * 0.775,
                    height: size.height * 0.538,
                  ),
                ),
              ),
              // Padding(
              // padding: EdgeInsets.only(top: size.height * 0.009),
              //child:
              SimpleShadow(
                //color: Colors.black,
                child: LinearGradientMask(
                  child: Text(
                    "Новый годвсссс!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      // color: Colors.purple,
                      fontSize: 13,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                ),
              ),
              // ),
              // Padding(
              // padding: EdgeInsets.only(
              //     top: size.height * 0.01056, bottom: size.height * 0.01585),
              // child:
              SimpleShadow(
                //color: Colors.black,
                child: LinearGradientMask(
                  child: Text(
                    "Автор",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      // color: Colors.purple,
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              //  ),
              Padding(
                padding: EdgeInsets.only(
                  bottom: size.height * 0.01585,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SimpleShadow(
                      color: Colors.black,
                      child: LinearGradientMask(
                        child: IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset(
                            "assets/mixAudio.svg",
                            width: size.width * 0.065625,
                            height: size.height * 0.0368,
                          ),
                        ),
                      ),
                    ),
                    SimpleShadow(
                      color: Colors.black,
                      child: LinearGradientMask(
                        child: IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset(
                            "assets/addAudio.svg",
                            width: size.width * 0.065625,
                            height: size.height * 0.0368,
                          ),
                        ),
                      ),
                    ),
                    SimpleShadow(
                      color: Colors.black,
                      child: LinearGradientMask(
                        child: IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset(
                            "assets/repeatAudio.svg",
                            width: size.width * 0.065625,
                            height: size.height * 0.0368,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    bottom: 1,
                    left: size.width * 0.03,
                    right: size.width * 0.03),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SimpleShadow(
                      color: Colors.black,
                      child: LinearGradientMask(
                        child: Text('$_count'),
                      ),
                    ),
                    SimpleShadow(
                      color: Colors.black,
                      child: LinearGradientMask(
                        child: Text('$_count'),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 1.0),
                child: SimpleShadow(
                  color: Colors.black,
                  child: LinearGradientMaskSlider(
                    child: Slider(
                      value: _count,
                      //inactiveColor: Colors.black,
                      max: 100,
                      divisions: 100,
                      thumbColor: Colors.pink.withBlue(250),
                      //label: _count.round().toString(),
                      onChanged: (double val) {
                        setState(() {
                          _count = val;
                        });
                      },
                    ),
                  ),
                ),
              ),
              // Padding(
              //   padding: EdgeInsets.only(
              //     bottom: size.height * 0.032,
              //  ),
              //  child:
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Center(
                    child: SimpleShadow(
                      color: Colors.transparent,
                      child: LinearGradientMask(
                        child: IconButton(
                          iconSize: 80,
                          onPressed: () {},
                          icon: SvgPicture.asset(
                            "assets/prevButton.svg",
                            //width: size.width * 0.23125,
                            //height: size.height * 0.130,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: SimpleShadow(
                      color: Colors.transparent,
                      child: LinearGradientMask(
                        child: IconButton(
                          iconSize: 87,
                          onPressed: () {
                            // setState(() {
                            //   if (playBtnPress == true) {
                            //     playBtnAsset = "assets/pauseButton.svg";
                            //     playBtnPress = false;
                            //     return;
                            //   }
                            //   playBtnAsset == "assets/playButton.svg";
                            //   playBtnPress = true;
                            // });
                            setState(() {
                              if (!playBtnPress && !bg) {
                                playBtnPress = true;
                                bg = true;
                                sizeic = 87;
                              } else {
                                playBtnPress = false;
                                bg = false;
                                sizeic = 87;
                              }
                            });
                          },
                          icon: playBtnPress
                              ? Icon(Icons.pause_circle)
                              // ? SvgPicture.asset(
                              //     "assets/prevButton.svg",
                              //     // width: size.width * 0.23125,
                              //     // height: size.height * 0.130,
                              //   )
                              : SvgPicture.asset(
                                  "assets/playButton.svg",
                                  // width: size.width * 0.23125,
                                  // height: size.height * 0.130,
                                ),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: SimpleShadow(
                      color: Colors.transparent,
                      child: LinearGradientMask(
                        child: IconButton(
                          onPressed: () {
                            //playBtnPress = true;
                          },
                          iconSize: 80,
                          icon: SvgPicture.asset(
                            "assets/nextButton.svg",
                            //width: size.width * 0.23125,
                            //height: size.height * 0.130,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              // ),
              // SimpleShadow(
              //   color: Colors.black,
              //   child: LinearGradientMask(
              //     child: IconButton(
              //       iconSize: 87,
              //       onPressed: () {},
              //       icon: SvgPicture.asset(
              //         "assets/playButton.svg",
              //         // width: size.width * 0.23125,
              //         // height: size.height * 0.130,
              //       ),
              //     ),
              //   ),
              // ),
              // Text(
              //   "width = " +
              //       playBtnAsset +
              //       size.width.toString() +
              //       " height = " +
              //       size.height.toString(),
              //   style: TextStyle(color: Colors.white),
              // ),
              // Container(
              //   color: Colors.black,
              //   child: Text(
              //     "width = " +
              //         size.width.toString() +
              //         " height = " +
              //         size.height.toString(),
              //     style: TextStyle(color: Colors.white),
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }

  // CrossFadeState fadeState(bool fd) {
  //   if (fd == true) {
  //     playBtnPress = false;
  //     return CrossFadeState.showFirst;
  //   } else {
  //     playBtnPress = true;
  //     return CrossFadeState.showSecond;
  //   }
  // }
}

class LinearGradientMask extends StatelessWidget {
  LinearGradientMask({required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) {
        return LinearGradient(
          colors: [Color(0xFFF664E8), Color(0xFF5F63C1)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          tileMode: TileMode.clamp,
        ).createShader(bounds);
      },
      child: child,
    );
  }
}

class LinearGradientMaskSlider extends StatelessWidget {
  LinearGradientMaskSlider({required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) {
        return LinearGradient(
          colors: [Color(0xFFF664E8), Color(0xFF5F63C1)],
          begin: Alignment.centerRight,
          end: Alignment.centerLeft,
          tileMode: TileMode.clamp,
        ).createShader(bounds);
      },
      child: child,
    );
  }
}
