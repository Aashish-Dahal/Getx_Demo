import 'package:flutter/material.dart'
    show
        BorderRadius,
        BorderSide,
        BuildContext,
        Color,
        Colors,
        Icon,
        IconButton,
        Icons,
        InputDecoration,
        Key,
        OutlineInputBorder,
        Radius,
        State,
        StatefulWidget,
        TextEditingController,
        TextFormField,
        TextInputAction,
        TextInputType,
        Widget;

class InputField extends StatefulWidget {
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final TextInputAction? textInputAction;
  final Widget? prefixIcon;
  final Color? fillColor;
  final String? hintText;
  final Widget? suffixIcon;
  final bool obscureText;
  final String? labelText;
  final int? maxLength;
  final String? initialValue;
  final bool readOnly;
  const InputField({
    Key? key,
    this.validator,
    this.fillColor,
    this.keyboardType,
    this.controller,
    this.textInputAction,
    this.prefixIcon,
    this.hintText,
    this.initialValue,
    this.readOnly = false,
    this.maxLength,
    this.labelText,
    this.suffixIcon,
    this.obscureText = false,
  }) : super(key: key);

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        initialValue: widget.initialValue,
        readOnly: widget.readOnly,
        validator: widget.validator,
        keyboardType: widget.keyboardType ?? TextInputType.emailAddress,
        textInputAction: widget.textInputAction ?? TextInputAction.next,
        controller: widget.controller,
        obscureText: widget.obscureText ? (isVisible ? false : true) : false,
        maxLength: widget.maxLength,
        decoration: InputDecoration(
            counterText: '',
            suffixIcon: widget.obscureText
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        isVisible = !isVisible;
                      });
                    },
                    icon: Icon(
                        isVisible ? Icons.visibility : Icons.visibility_off))
                : widget.suffixIcon,
            prefixIcon: widget.prefixIcon,
            filled: true,
            fillColor: widget.fillColor ?? Colors.white,
            hintText: widget.hintText,
            labelText: widget.labelText,
            //contentPadding: const EdgeInsets.all(8),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade400, width: 1),
                borderRadius: const BorderRadius.all(Radius.circular(8))),
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(width: 1.5),
                borderRadius: BorderRadius.all(Radius.circular(8))),
            errorBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red, width: 1.5),
                borderRadius: BorderRadius.all(Radius.circular(8))),
            focusedErrorBorder: const OutlineInputBorder(
                borderSide: BorderSide(width: 1.5),
                borderRadius: BorderRadius.all(Radius.circular(8)))));
  }
}
