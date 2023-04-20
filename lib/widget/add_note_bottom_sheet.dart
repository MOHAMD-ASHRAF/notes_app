import 'package:flutter/material.dart';
import 'package:notes_app/widget/custom_text_feild.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const[
        CustomTextFeild(
          hint: 'title',
        ),
        SizedBox(
          height: 16,
        ),
        CustomTextFeild(
          hint: 'content',
          maxLine: 8,
        ),
      ],
    );
  }
}
