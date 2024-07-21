import 'package:flutter/material.dart';

// ignore: camel_case_types
class MyTextFiled extends StatelessWidget {
  final String hintText;
  final bool obscured;
  final TextEditingController controller;
  final FocusNode? focusNode;
  const MyTextFiled({
    super.key,
    required this.hintText,
    required this.obscured,
    required this.controller, this.focusNode,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        obscureText: obscured,
        controller: controller,
        focusNode: focusNode,
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(color: Theme.of(context).colorScheme.tertiary),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(color: Theme.of(context).colorScheme.primary),
            ),
            fillColor: Theme.of(context).colorScheme.secondary,
            filled: true,
            hintText: hintText,
            hintStyle: TextStyle(color: Theme.of(context).colorScheme.primary)),
      ),
    );
  }
}
