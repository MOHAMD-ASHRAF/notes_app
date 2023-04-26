import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextFeild extends StatelessWidget {
  const CustomTextFeild({Key? key, required this.hint,  this.maxLine= 1,this.onSaved}) : super(key: key);
 final String hint;
 final int maxLine;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          onSaved: onSaved,
          cursorColor: kPrimaryColor,
          maxLines: maxLine,
          validator: (value){
            if(value?.isEmpty ?? true){
              return 'Feild is empty';
            }else{
              return null;
            }
          },
          decoration: InputDecoration(
              hintText: hint,
              border: buildBorder(),
              enabledBorder: buildBorder(),
              focusedBorder: buildBorder(kPrimaryColor)),
        )
      ],
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
