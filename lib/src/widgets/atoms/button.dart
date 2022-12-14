import 'package:flutter/material.dart'
    show
        BorderRadius,
        BuildContext,
        Colors,
        Key,
        MaterialButton,
        RoundedRectangleBorder,
        StatelessWidget,
        Text,
        TextStyle,
        VoidCallback,
        Widget;

class Button extends StatelessWidget {
  final String label;
  final double? minWidth;
  final VoidCallback onPressed;
  const Button(
      {Key? key, required this.label, required this.onPressed, this.minWidth})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: minWidth,
      height: 45,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
      elevation: 0,
      color: Colors.orange.shade600,
      onPressed: onPressed,
      child: Text(
        label,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
