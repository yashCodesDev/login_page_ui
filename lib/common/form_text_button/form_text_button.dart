import 'package:flutter/material.dart';

class FormTextButton extends StatelessWidget {
  const FormTextButton({
    super.key,
    required this.title,
    required this.onPressed,
    required this.subtitle,
  });
  final String title;
  final String subtitle;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          subtitle,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
        ),
        TextButton(
            onPressed: onPressed,
            child: Text(
              title,
              style: TextStyle(
                  color: Colors.blue[600],
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            )),
      ],
    );
  }
}
