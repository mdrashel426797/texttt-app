import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final String hintText;
  final bool obscureText;
  final Widget? suffix;
  final Widget? prefix;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final TextStyle? hintStyle;
  final void Function(String)? onChanged;

  const CustomTextField({
    super.key,
    required this.hintText,
    this.obscureText = false,
    this.suffix,
    this.prefix,
    this.controller,
    this.validator,
    this.hintStyle,
    this.onChanged,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late bool _obscureText;

  ValueChanged<String>? get onChanged => null;

  @override
  void initState() {
    super.initState();
    _obscureText = widget.obscureText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFF00000033),
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 0,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: TextFormField(
        onChanged: onChanged,
        controller: widget.controller,
        keyboardType: TextInputType.text,
        obscureText: _obscureText,
        validator: widget.validator,
        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: widget.hintStyle,
          // contentPadding: const EdgeInsets.symmetric(horizontal: 5, vertical: 12),
          filled: true,
          fillColor: Color(0xFF00000033),
          border: InputBorder.none,
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,

          // border: OutlineInputBorder(
          //   borderRadius: BorderRadius.circular(8),
          //   // borderSide: BorderSide(
          //   //   width: 0,
          //   //   color: Colors.red
          //   // ),
          // ),

          prefixIcon: widget.prefix,
          suffixIcon: widget.obscureText
              ? IconButton(
            icon: Icon(
              _obscureText
                  ? Icons.visibility_off_outlined
                  : Icons.visibility_outlined,
              color: Color(0xFF4A4F5E),
             weight: 16.5,
            ),
            onPressed: () {
              setState(() {
                _obscureText = !_obscureText;
              });
            },
          )
              : widget.suffix,
        ),
      ),
    );
  }
}
