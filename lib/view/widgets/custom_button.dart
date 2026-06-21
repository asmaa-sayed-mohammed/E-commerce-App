import 'package:e_commerce_app/constance.dart';
import 'package:e_commerce_app/view/widgets/custom_text.dart';
import 'package:e_commerce_app/view/widgets/custom_text_fiekd.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback OnPressed;
  final ButtonStyle? style;
  final String text;
  final Widget? icon;
  final Color? textColor;
  final Color? backGroundColor;
  const CustomButton({super.key, required this.OnPressed, required this.text,
     this.style,
     this.icon,
    this.textColor, this.backGroundColor

  });
  @override
  Widget build(BuildContext context) {

    final buttonStyle = style ?? ElevatedButton.styleFrom(
      padding: const EdgeInsets.all(18),
      backgroundColor: backGroundColor ?? primaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    );

    if (icon != null) {
      return ElevatedButton.icon(
        onPressed: OnPressed,
        style: buttonStyle,
        icon: icon!,
        label: CustomText(
          text: text,
          fontsize: 14,
          color: textColor ?? Colors.white,
          alignment: Alignment.center,
        ),
      );
    }
    return Container(
      child: ElevatedButton(
        onPressed: OnPressed,
        style: style ?? buttonStyle,
        child:CustomText(text: text, fontsize: 14, color: textColor ?? Colors.white, alignment: Alignment.center,),
      ),
    );
  }
}
