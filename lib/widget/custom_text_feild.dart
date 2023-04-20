import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextFeild extends StatelessWidget {
  const CustomTextFeild({Key? key, required this.hint,  this.maxLine= 1}) : super(key: key);
 final String hint;
 final int maxLine;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          TextField(
            cursorColor: kPrimaryColor,
            maxLines: maxLine,
            decoration: InputDecoration(
                hintText: hint,
                border: buildBorder(),
                enabledBorder: buildBorder(),
                focusedBorder: buildBorder(kPrimaryColor)),
          )
        ],
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
          color: color ?? Colors.white,
        ));
  }
}
