import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class TicTacGame extends StatefulWidget {
  final String name;

  const TicTacGame({super.key, required this.name});

  @override
  State<TicTacGame> createState() => _TicTacGameState();
}

class _TicTacGameState extends State<TicTacGame> {
  bool belgi = true;
  bool win = false;
  String textButton1 = "";
  String textButton2 = "";
  String textButton3 = "";
  String textButton4 = "";
  String textButton5 = "";
  String textButton6 = "";
  String textButton7 = "";
  String textButton8 = "";
  String textButton9 = "";

  Color buttonColor1 = Colors.white;
  Color buttonColor2 = Colors.white;
  Color buttonColor3 = Colors.white;
  Color buttonColor4 = Colors.white;
  Color buttonColor5 = Colors.white;
  Color buttonColor6 = Colors.white;
  Color buttonColor7 = Colors.white;
  Color buttonColor8 = Colors.white;
  Color buttonColor9 = Colors.white;

  void showMessage() async {
    await showDialog(
        barrierDismissible: false,
        context: context,
        builder: (ctx) {
          return AlertDialog(
            title: const Text("Siz yutdingiz!"),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text("Ok"),
              ),
            ],
          );
        });
    win = true;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff5C9C9C),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            Gap(30.h),
            Text(
              widget.name,
              style: TextStyle(
                color: Color(0xff025F5F),
                fontSize: 30.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              width: 1.sw,
              height: 0.5.h,
              decoration: BoxDecoration(
                color: Color(0xffD0B78F),
              ),
            ),
            Gap(15.h),
            Text(
              "0 : 0",
              style: TextStyle(
                fontSize: 35.sp,
                color: Color(0xffEBEFF3),
              ),
            ),
            Gap(30.h),
            Container(
              width: 180.h,
              height: 180.h,
              decoration: BoxDecoration(
                color: Color(0xff5A9B9B),
              ),
              child: Stack(
                children: [
                  Positioned(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: ZoomTapAnimation(
                            onTap: win
                                ? null
                                : () {
                                    setState(() {
                                      if (belgi == true) {
                                        textButton1 = "O";
                                        belgi = false;
                                      } else {
                                        textButton1 = "X";
                                        belgi = true;
                                      }

                                      if (textButton1 == textButton2 &&
                                          textButton1 == textButton3) {
                                        buttonColor1 = Colors.red;
                                        buttonColor2 = Colors.red;
                                        buttonColor3 = Colors.red;
                                        showMessage();
                                      }
                                      if (textButton1 == textButton4 &&
                                          textButton1 == textButton7) {
                                        buttonColor1 = Colors.red;
                                        buttonColor4 = Colors.red;
                                        buttonColor7 = Colors.red;
                                        showMessage();
                                      }
                                      if (textButton1 == textButton5 &&
                                          textButton1 == textButton9) {
                                        buttonColor9 = Colors.red;
                                        buttonColor1 = Colors.red;
                                        buttonColor5 = Colors.red;
                                        showMessage();
                                      }
                                    });
                                  },
                            child: Container(
                              height: 80,
                              width: 50,
                              color: Color(0xff5A9B9B),
                              child: Center(
                                child: Text(
                                  textButton1,
                                  style: TextStyle(
                                      fontSize: 80.sp, color: buttonColor1),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 35),
                          child: ZoomTapAnimation(
                            onTap: win
                                ? null
                                : () {
                                    setState(() {
                                      if (belgi == true) {
                                        textButton2 = "O";
                                        belgi = false;
                                      } else {
                                        textButton2 = "X";
                                        belgi = true;
                                      }
                                      if (textButton1 == textButton2 &&
                                          textButton1 == textButton3) {
                                        buttonColor1 = Colors.red;
                                        buttonColor2 = Colors.red;
                                        buttonColor3 = Colors.red;
                                        showMessage();
                                      }
                                      if (textButton2 == textButton5 &&
                                          textButton2 == textButton8) {
                                        buttonColor2 = Colors.red;
                                        buttonColor5 = Colors.red;
                                        buttonColor8 = Colors.red;
                                        showMessage();
                                      }
                                    });
                                  },
                            child: Container(
                              height: 80,
                              width: 50,
                              color: Color(0xff5A9B9B),
                              child: Center(
                                child: Text(
                                  textButton2,
                                  style: TextStyle(
                                      fontSize: 80.sp, color: buttonColor2),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 45),
                          child: ZoomTapAnimation(
                            onTap: win
                                ? null
                                : () {
                                    setState(() {
                                      if (belgi == true) {
                                        textButton3 = "O";
                                        belgi = false;
                                      } else {
                                        textButton3 = "X";
                                        belgi = true;
                                      }
                                      if (textButton1 == textButton2 &&
                                          textButton1 == textButton3) {
                                        buttonColor1 = Colors.red;
                                        buttonColor2 = Colors.red;
                                        buttonColor3 = Colors.red;
                                        showMessage();
                                      }
                                      if (textButton3 == textButton6 &&
                                          textButton3 == textButton9) {
                                        buttonColor9 = Colors.red;
                                        buttonColor6 = Colors.red;
                                        buttonColor3 = Colors.red;
                                        showMessage();
                                      }
                                      if (textButton3 == textButton5 &&
                                          textButton3 == textButton7) {
                                        buttonColor3 = Colors.red;
                                        buttonColor5 = Colors.red;
                                        buttonColor7 = Colors.red;
                                        showMessage();
                                      }
                                    });
                                  },
                            child: Container(
                              height: 80,
                              width: 50,
                              color: Color(0xff5A9B9B),
                              child: Center(
                                child: Text(
                                  textButton3,
                                  style: TextStyle(
                                      fontSize: 80.sp, color: buttonColor3),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 60.h,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: ZoomTapAnimation(
                            onTap: win
                                ? null
                                : () {
                                    setState(() {
                                      if (belgi == true) {
                                        textButton4 = "O";
                                        belgi = false;
                                      } else {
                                        textButton4 = "X";
                                        belgi = true;
                                      }
                                      if (textButton4 == textButton5 &&
                                          textButton4 == textButton6) {
                                        buttonColor4 = Colors.red;
                                        buttonColor5 = Colors.red;
                                        buttonColor6 = Colors.red;
                                        showMessage();
                                      }
                                      if (textButton1 == textButton4 &&
                                          textButton1 == textButton7) {
                                        buttonColor1 = Colors.red;
                                        buttonColor4 = Colors.red;
                                        buttonColor7 = Colors.red;
                                        showMessage();
                                      }
                                    });
                                  },
                            child: Container(
                              height: 80,
                              width: 50,
                              color: Color(0xff5A9B9B),
                              child: Center(
                                child: Text(
                                  textButton4,
                                  style: TextStyle(
                                      fontSize: 80.sp, color: buttonColor4),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 35),
                          child: ZoomTapAnimation(
                            onTap: win
                                ? null
                                : () {
                                    setState(() {
                                      if (belgi == true) {
                                        textButton5 = "O";
                                        belgi = false;
                                      } else {
                                        textButton5 = "X";
                                        belgi = true;
                                      }
                                      if (textButton4 == textButton5 &&
                                          textButton4 == textButton6) {
                                        buttonColor4 = Colors.red;
                                        buttonColor5 = Colors.red;
                                        buttonColor6 = Colors.red;
                                        showMessage();
                                      }
                                      if (textButton1 == textButton5 &&
                                          textButton1 == textButton9) {
                                        buttonColor9 = Colors.red;
                                        buttonColor1 = Colors.red;
                                        buttonColor5 = Colors.red;
                                        showMessage();
                                      }
                                      if (textButton3 == textButton5 &&
                                          textButton3 == textButton7) {
                                        buttonColor3 = Colors.red;
                                        buttonColor5 = Colors.red;
                                        buttonColor7 = Colors.red;
                                        showMessage();
                                      }
                                      if (textButton5 == textButton2 &&
                                          textButton5 == textButton8) {
                                        buttonColor2 = Colors.red;
                                        buttonColor5 = Colors.red;
                                        buttonColor8 = Colors.red;
                                        showMessage();
                                      }
                                    });
                                  },
                            child: Container(
                              height: 80,
                              width: 50,
                              color: Color(0xff5A9B9B),
                              child: Center(
                                child: Text(
                                  textButton5,
                                  style: TextStyle(
                                      fontSize: 80.sp, color: buttonColor5),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 45),
                          child: ZoomTapAnimation(
                            onTap: win
                                ? null
                                : () {
                                    setState(() {
                                      if (belgi == true) {
                                        textButton6 = "O";
                                        belgi = false;
                                      } else {
                                        textButton6 = "X";
                                        belgi = true;
                                      }
                                      if (textButton4 == textButton5 &&
                                          textButton4 == textButton6) {
                                        buttonColor4 = Colors.red;
                                        buttonColor5 = Colors.red;
                                        buttonColor6 = Colors.red;
                                        showMessage();
                                      }
                                      if (textButton3 == textButton6 &&
                                          textButton3 == textButton9) {
                                        buttonColor9 = Colors.red;
                                        buttonColor6 = Colors.red;
                                        buttonColor3 = Colors.red;
                                        showMessage();
                                      }
                                    });
                                  },
                            child: Container(
                              height: 80,
                              width: 50,
                              color: Color(0xff5A9B9B),
                              child: Center(
                                child: Text(
                                  textButton6,
                                  style: TextStyle(
                                      fontSize: 80.sp, color: buttonColor6),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 120.h,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: ZoomTapAnimation(
                            onTap: win
                                ? null
                                : () {
                                    setState(() {
                                      if (belgi == true) {
                                        textButton7 = "O";
                                        belgi = false;
                                      } else {
                                        textButton7 = "X";
                                        belgi = true;
                                      }
                                      if (textButton7 == textButton8 &&
                                          textButton7 == textButton9) {
                                        buttonColor7 = Colors.red;
                                        buttonColor8 = Colors.red;
                                        buttonColor9 = Colors.red;
                                        showMessage();
                                      }
                                      if (textButton3 == textButton5 &&
                                          textButton3 == textButton7) {
                                        buttonColor3 = Colors.red;
                                        buttonColor5 = Colors.red;
                                        buttonColor7 = Colors.red;
                                        showMessage();
                                      }
                                      if (textButton1 == textButton4 &&
                                          textButton1 == textButton7) {
                                        buttonColor1 = Colors.red;
                                        buttonColor4 = Colors.red;
                                        buttonColor7 = Colors.red;
                                        showMessage();
                                      }
                                    });
                                  },
                            child: Container(
                              height: 80,
                              width: 50,
                              color: Color(0xff5A9B9B),
                              child: Center(
                                child: Text(
                                  textButton7,
                                  style: TextStyle(
                                      fontSize: 80.sp, color: buttonColor7),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 35),
                          child: ZoomTapAnimation(
                            onTap: win
                                ? null
                                : () {
                                    setState(() {
                                      if (belgi == true) {
                                        textButton8 = "O";
                                        belgi = false;
                                      } else {
                                        textButton8 = "X";
                                        belgi = true;
                                      }
                                      if (textButton8 == textButton7 &&
                                          textButton8 == textButton9) {
                                        buttonColor7 = Colors.red;
                                        buttonColor8 = Colors.red;
                                        buttonColor9 = Colors.red;
                                        showMessage();
                                      }
                                      if (textButton8 == textButton2 &&
                                          textButton8 == textButton5) {
                                        buttonColor8 = Colors.red;
                                        buttonColor5 = Colors.red;
                                        buttonColor2 = Colors.red;
                                        showMessage();
                                      }
                                      if (textButton8 == textButton2 &&
                                          textButton8 == textButton5) {
                                        buttonColor2 = Colors.red;
                                        buttonColor5 = Colors.red;
                                        buttonColor8 = Colors.red;
                                        showMessage();
                                      }
                                    });
                                  },
                            child: Container(
                              height: 80,
                              width: 50,
                              color: Color(0xff5A9B9B),
                              child: Center(
                                child: Text(
                                  textButton8,
                                  style: TextStyle(
                                      fontSize: 80.sp, color: buttonColor8),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 45),
                          child: ZoomTapAnimation(
                            onTap: win
                                ? null
                                : () {
                                    setState(() {
                                      if (belgi == true) {
                                        textButton9 = "O";
                                        belgi = false;
                                      } else {
                                        textButton9 = "X";
                                        belgi = true;
                                      }
                                      if (textButton9 == textButton8 &&
                                          textButton9 == textButton7) {
                                        buttonColor7 = Colors.red;
                                        buttonColor8 = Colors.red;
                                        buttonColor9 = Colors.red;
                                        showMessage();
                                      }
                                      if (textButton9 == textButton1 &&
                                          textButton9 == textButton5) {
                                        buttonColor9 = Colors.red;
                                        buttonColor1 = Colors.red;
                                        buttonColor5 = Colors.red;
                                        showMessage();
                                      }
                                      if (textButton9 == textButton6 &&
                                          textButton9 == textButton3) {
                                        buttonColor9 = Colors.red;
                                        buttonColor6 = Colors.red;
                                        buttonColor3 = Colors.red;
                                        showMessage();
                                      }
                                    });
                                  },
                            child: Container(
                              height: 80,
                              width: 50,
                              color: Color(0xff5A9B9B),
                              child: Center(
                                child: Text(
                                  textButton9,
                                  style: TextStyle(
                                      fontSize: 80.sp, color: buttonColor9),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 60.h,
                    child: Container(
                      width: 1.sw,
                      height: 2.h,
                      decoration: BoxDecoration(color: Color(0xffDDB884)),
                    ),
                  ),
                  Positioned(
                    top: 120.h,
                    child: Container(
                      width: 1.sw,
                      height: 2.h,
                      decoration: BoxDecoration(color: Color(0xffDDB884)),
                    ),
                  ),
                  Positioned(
                    left: 60.h,
                    child: Container(
                      width: 2.w,
                      height: 1.sh,
                      decoration: BoxDecoration(color: Color(0xffDDB884)),
                    ),
                  ),
                  Positioned(
                    left: 120.h,
                    child: Container(
                      width: 2.w,
                      height: 1.sh,
                      decoration: BoxDecoration(color: Color(0xffDDB884)),
                    ),
                  ),
                ],
              ),
            ),
            Gap(34.h),
            ZoomTapAnimation(
              onTap: () {
                setState(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return TicTacGame(name: "New Game");
                      },
                    ),
                  );
                });
              },
              child: Container(
                width: 180.h,
                height: 40.h,
                decoration: BoxDecoration(
                  color: Color(0xff008287),
                ),
                child: Center(
                  child: Text(
                    "NEW GAME",
                    style: TextStyle(
                      fontSize: 25.sp,
                      color: Color(0xffEBEDF0),
                    ),
                  ),
                ),
              ),
            ),
            Gap(10.h),
            ZoomTapAnimation(
              onTap: () {
                setState(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return TicTacGame(name: "New Game");
                      },
                    ),
                  );
                });
              },
              child: Container(
                width: 180.h,
                height: 40.h,
                decoration: BoxDecoration(
                  color: Color(0xff008287),
                ),
                child: Center(
                  child: Text(
                    "RESET GAME",
                    style: TextStyle(
                      fontSize: 25.sp,
                      color: Color(0xffEBEDF0),
                    ),
                  ),
                ),
              ),
            ),
            Gap(20.h),
            Text(
              "Ver.01.2019",
              style: TextStyle(
                color: Color(0xffEBEDF0),
                fontSize: 12.sp,
              ),
            )
          ],
        ),
      ),
    );
  }
}
