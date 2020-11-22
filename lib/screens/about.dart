import 'package:flutter/material.dart';
import 'package:workout_app/screens/train_screen.dart';

import '../constants.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kThirdColor,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/2.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: kThirdColor.withOpacity(0.7),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  RichText(
                    text: TextSpan(
                      text: 'HARD\t',
                      style: TextStyle(
                          fontFamily: "Bebas", fontSize: 30, letterSpacing: 5),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'ELEMENT',
                          style: TextStyle(color: kFirstColor),
                        )
                      ],
                    ),
                  ),
                  Spacer(),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "About You",
                          style: TextStyle(
                            fontSize: 40,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "we want to know more about you, follow the next \nsteps to complete the information",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  Row(
                    children: [
                      StateWidget(
                        state: "I am \ninactive",
                        detail: "I am \ninactive",
                        enable: true,
                      ),
                      SizedBox(width: 20),
                      StateWidget(
                        state: "I am\nBeginner",
                        detail: "I have trained few times",
                        enable: false,
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Row(
                    children: [
                      FlatButton(
                        onPressed: () {},
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Center(
                            child: Text(
                              "Skip Intro",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Spacer(),
                      FlatButton(
                        onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TrainScreen())),
                        child: Container(
                          height: 40,
                          width: 130,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: kFirstColor,
                          ),
                          child: Center(
                            child: Text(
                              "Next",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class StateWidget extends StatelessWidget {
  final String state, detail;
  final bool enable;
  const StateWidget({
    Key key,
    this.state,
    this.detail,
    this.enable,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 180,
          width: 150,
          decoration: BoxDecoration(
              color: kSecondColor,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  offset: Offset(3, 3),
                  blurRadius: 8,
                  spreadRadius: -8,
                )
              ]),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 30),
                Text(
                  state,
                  style: TextStyle(
                      color: kFirstColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
                SizedBox(height: 10),
                Text(
                  detail,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
          ),
        ),
        Positioned(
          top: 15,
          right: 20,
          child: Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xFF373850),
            ),
            child: enable
                ? Center(
                    child: Icon(
                      Icons.done,
                      color: kFirstColor,
                    ),
                  )
                : SizedBox(),
          ),
        )
      ],
    );
  }
}
