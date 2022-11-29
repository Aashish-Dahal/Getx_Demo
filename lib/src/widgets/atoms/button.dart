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
  final VoidCallback onPressed;
  const Button({Key? key, required this.label, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
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
