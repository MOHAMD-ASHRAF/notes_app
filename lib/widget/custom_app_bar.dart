import 'package:flutter/material.dart';
import 'package:notes_app/widget/custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key, required this.tittle, required this.icon})
      : super(key: key);
  final String tittle;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          tittle,
          style: const TextStyle(
            fontSize: 28,
          ),
        ),
        const Spacer(),
        CustomIcon(
          icon: icon,
        ),
      ],
    );
  }
}
