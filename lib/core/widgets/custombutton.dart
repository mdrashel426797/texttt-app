import 'package:flutter/material.dart';

class Custombutton extends StatelessWidget {
  final Color? color;
  final BorderRadiusGeometry? borderRadius;
  final String? text;
  final IconData? icon; // new for icon
  final TextStyle? textStyle;
  final Function()? onTap;
  final double? height;
  final double? width;
  final BoxBorder? border;
  final TextStyle? style;

  const Custombutton({
    super.key,
    this.color,
    this.borderRadius,
    this.text,
    this.icon, // icon
    this.textStyle,
    this.onTap,
    this.height,
    this.width,
    this.border,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height ?? 50,
        width: width ?? 170,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF0A0F4F), Color(0xFF1622A8)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: borderRadius ?? BorderRadius.circular(25),
          border: border,
        ),
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [

            Text(
              text ?? "",
              style: style,
            ),
            SizedBox(width: 10,),
            if (icon != null) Icon(icon, color: Colors.white),
            if (icon != null) SizedBox(width: 5),

          ],
        ),
      ),
    );
  }
}
