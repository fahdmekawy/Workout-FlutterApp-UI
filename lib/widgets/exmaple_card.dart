import 'package:flutter/material.dart';

class ExampleCard extends StatelessWidget {
  final String image, title;
  const ExampleCard({
    Key key,
    this.image,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image.asset(
              image,
              fit: BoxFit.cover,
              height: 150.0,
              width: 130.0,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            title,
            style: TextStyle(color: Colors.white, fontSize: 14),
          )
        ],
      ),
    );
  }
}
