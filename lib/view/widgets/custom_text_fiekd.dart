import 'package:flutter/material.dart';
import 'custom_text.dart';

class CustomTextField extends StatelessWidget {

  final String text;
  final String hint;
  final FormFieldSetter<String>? onSave;
  final FormFieldValidator<String>? validator;

  const CustomTextField({required this.text, required this.hint, this.onSave, this.validator});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(text: text, fontsize: 14, color: Colors.grey.shade900,),
        TextFormField(
          onSaved: onSave,
          validator: validator,
          decoration: InputDecoration(
              hintText: hint,
              hintStyle: TextStyle(
                  color: Colors.black
              ),
              fillColor: Colors.white
          ),
        )
      ],
    );
  }
}
