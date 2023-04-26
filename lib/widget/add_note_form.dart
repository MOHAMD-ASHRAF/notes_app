import 'package:flutter/material.dart';
import 'package:notes_app/widget/custom_text_feild.dart';
import 'package:notes_app/widget/custtom_botton.dart';

class AddNotesForm extends StatefulWidget {
  const AddNotesForm({
    super.key,
  });

  @override
  State<AddNotesForm> createState() => _AddNotesFormState();
}

class _AddNotesFormState extends State<AddNotesForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autoValidateMode =AutovalidateMode.disabled;
  String? title,subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autoValidateMode,
      child: Column(
        children:  [
          const SizedBox(
            height: 32,
          ),
          CustomTextFeild(
            onSaved: (value){
              title= value;
            },
            hint: 'title',
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextFeild(
            onSaved: (value){
              subTitle= value;
            },
            hint: 'content',
            maxLine: 8,
          ),
          const SizedBox(height: 32,),
          CustomButton(
            onTap: (){
              if(formKey.currentState!.validate()){
                formKey.currentState!.save();
              }else{
                autoValidateMode = AutovalidateMode.always;
                setState(() {

                });
              }
            },
          ),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}

