import 'package:flutter/material.dart';
import 'package:notes_app/widget/custom_text_feild.dart';
import 'package:notes_app/widget/custtom_botton.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: const [
             SizedBox(
              height: 32,
            ),
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
            SizedBox(height: 32,),
            CustomButton(),
            SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}

