import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.colour, this.child, this.onTap});

  final Function onTap;
  final Color colour;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: colour, borderRadius: BorderRadius.circular(10)),
        margin: EdgeInsets.all(17),
        child: child,
      ),
    );
  }
}
