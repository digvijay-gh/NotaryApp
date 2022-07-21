import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MailAndCallWidget extends StatelessWidget {
  final String title;
  final TextStyle titleTextStyle;
  const MailAndCallWidget({
    Key? key,
    required this.title,
    required this.titleTextStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: titleTextStyle,
        ),
        Row(
          children: [
            Icon(
              CupertinoIcons.mail,
              color: Color(0xff4e5eba),
              size: 22,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.08,
            ),
            Icon(
              CupertinoIcons.phone_fill,
              color: Color(0xff4e5eba),
              size: 22,
            ),
          ],
        ),
      ],
    );
  }
}

class SpaceWidget extends StatelessWidget {
  final double height;
  const SpaceWidget(this.height, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
    );
  }
}
