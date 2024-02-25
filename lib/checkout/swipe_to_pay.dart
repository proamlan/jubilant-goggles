import 'package:flutter/material.dart';
import 'package:flutter_swipe_button/flutter_swipe_button.dart';
import 'package:jubilant/checkout/swipe_app_bar.dart';
import 'package:jubilant/home/utils/constants.dart';
import 'package:jubilant/home/views/amout_text_field.dart';

class SwipeToPayScreen extends StatelessWidget {
  const SwipeToPayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            SwipeToPayAppBar(),
            Container(
              // Your main content here
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text('ENTER AMOUNT'),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: TextFieldWithHint(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                margin: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                color: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  children: [
                    const Row(
                      children: [
                        Expanded(
                            child: Text(
                          'Balance ${rupeeSymbol}1,00,000',
                          textAlign: TextAlign.start,
                        )),
                        Expanded(
                            child: Text('Required: {$rupeeSymbol}0',
                                textAlign: TextAlign.end)),
                      ],
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    //TODO update with correct colors
                    SwipeButton(
                      activeTrackColor: Color(0xffE7E5E4),
                      activeThumbColor: Color(0xff15803D),
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      height: 60,
                      child: const Text(
                        "SWIPE TO PAY",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      onSwipe: () {
                        print("Swiped");
                        // TODO validate and navigate to next screen
                        Navigator.pushNamed(context, '/success');
                      },
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
