import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';

import 'package:notes_app/widget/custom_app_bar.dart';
import 'package:notes_app/widget/custom_text_feild.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({Key? key, required this.note}) : super(key: key);
  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? tittle, content;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
          const SizedBox(height: 50,),
        CustomAppBar(tittle: 'Edit', icon: FontAwesomeIcons.check,
          onPressed: () {
           widget.note.title = tittle ?? widget.note.title;
           widget.note.subTitle = content ?? widget.note.subTitle;
           widget.note.save();
           BlocProvider.of<NotesCubit>(context).fetchAllNotes();
           Navigator.pop(context);
          },),
        const SizedBox(height: 50,),
        CustomTextFeild(hint: widget.note.title, onChanged: (value) {
          tittle = value;
        },),
        const SizedBox(height: 16,),
        CustomTextFeild(hint: widget.note.subTitle, maxLine: 6,onChanged: (value){
      content = value;
      },),
      ],
    ),)
    ,
    );
  }
}
