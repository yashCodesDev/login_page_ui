import 'package:flutter/material.dart';

class FormElevatedButton extends StatelessWidget {
  const FormElevatedButton({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: const ButtonStyle(
          shape: MaterialStatePropertyAll(RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(5)))),
          backgroundColor:
              MaterialStatePropertyAll(Color.fromRGBO(14, 100, 210, 1.0))),
      child: Text(
        title,
        style: const TextStyle(
            color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500),
      ),
    );
  }
}
