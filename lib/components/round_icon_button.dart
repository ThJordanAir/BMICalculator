import "package:flutter/material.dart";

class RoundIconButton extends StatelessWidget {
  const RoundIconButton({super.key, this.icon, this.onPressed});

  final IconData? icon;
  final Function? onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () => onPressed != null ? onPressed!() : null,
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(width: 54.0, height: 56.0),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F52),
      child: Icon(icon),
    );
  }
}
