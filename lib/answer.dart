import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String buttonText;
  final VoidCallback scoreHandeler;
  Answer(this.buttonText, this.scoreHandeler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: ElevatedButton(
        onPressed: scoreHandeler,
        child: Text(
          buttonText,
        ),
      ),
    );
  }
}
