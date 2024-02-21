import 'package:flutter/material.dart';
import 'package:flutter_swipe_button/flutter_swipe_button.dart';
import 'package:jubilant/home/utils/constants.dart';
import 'package:jubilant/home/views/amout_text_field.dart';

class SwipeToPay extends StatelessWidget {
  const SwipeToPay({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Swipe to Pay"),
        ),
        body: Stack(
          children: [
            Container(
              // Your main content here
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('ENTER AMOUNT'),
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
                      activeTrackColor: Colors.grey,
                      activeThumbColor: Colors.green,
                      borderRadius: BorderRadius.zero,
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
