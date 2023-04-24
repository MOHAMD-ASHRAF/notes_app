import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:notes_app/widget/custom_app_bar.dart';
import 'package:notes_app/widget/custom_text_feild.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: const [
            SizedBox(height: 50,),
            CustomAppBar(tittle: 'Edit', icon: FontAwesomeIcons.check,),
            SizedBox(height: 50,),
            CustomTextFeild(hint: 'title'),
            SizedBox(height: 16,),
            CustomTextFeild(hint: 'content',maxLine: 6,),
          ],
        ),
      ),
    );
  }
}
