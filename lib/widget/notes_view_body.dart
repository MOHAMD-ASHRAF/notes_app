import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/widget/custom_app_bar.dart';
import 'package:notes_app/widget/notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
      ),
      child: Column(
        children: const [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(tittle: 'Notes',icon: FontAwesomeIcons.searchengin,),
          SizedBox(
            height: 10,
          ),
          Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}
