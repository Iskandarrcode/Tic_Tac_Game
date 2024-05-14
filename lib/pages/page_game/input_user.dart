import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:may14/pages/page_game/tic_tac.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class TikTak extends StatefulWidget {
  @override
  State<TikTak> createState() {
    return _MyGameState();
  }
}

class _MyGameState extends State<TikTak> {
  late String name;
  TextEditingController userInputController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff5C9C9C),
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          children: [
            Center(
              child: Text(
                "WELCOME",
                style: TextStyle(
                    fontSize: 25.sp,
                    color: const Color.fromARGB(252, 2, 26, 27),
                    fontWeight: FontWeight.bold),
              ),
            ),
            const Gap(20),
            Container(
              padding: const EdgeInsets.only(left: 15, right: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: const Color(0xff008287),
              ),
              child: Center(
                child: TextField(
                  controller: userInputController,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    labelText: 'Name ...',
                    labelStyle: TextStyle(
                      color: Color.fromARGB(252, 2, 26, 27),
                    ),
                  ),
                ),
              ),
            ),
            Gap(50.h),
            ZoomTapAnimation(
              onTap: () {
                name = userInputController.text;
                setState(
                  () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return TicTacGame(name: name);
                        },
                      ),
                    );
                  },
                );
              },
              child: Container(
                width: 130.w,
                height: 30.h,
                padding: const EdgeInsets.only(left: 15, right: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(60),
                  color: const Color(0xff008287),
                ),
                child: Center(
                  child: Text(
                    "Next",
                    style: TextStyle(
                      fontSize: 22.sp,
                      color: const Color.fromARGB(252, 2, 26, 27),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
