import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String btnText;
  final Function onPressed;

  const AppButton({
    Key key,
    @required this.btnText,
    @required this.onPressed,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350.0,
      decoration: BoxDecoration(),
      child: RaisedButton(
        padding: EdgeInsets.all(15.0),
        color: Color(0xff2A2AC0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Text(
          // 'Sign in with mobile number',
          btnText,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        onPressed: onPressed,
      ),
    );
  }
}
