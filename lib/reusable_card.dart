import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  const ReusableCard({super.key, this.cardChild, required this.colour});

  final Color colour;
  final Widget? cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      // ignore: sort_child_properties_last
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(color: colour, borderRadius: BorderRadius.circular(10.0)),
    );
  }
}
