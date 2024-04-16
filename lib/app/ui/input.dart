import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Input extends StatelessWidget {
  
  const Input({super.key, required this.controller, this.inputFormatters, this.keyboardType});

  final TextEditingController controller;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      style: Theme.of(context).textTheme.labelMedium?.merge(TextStyle(color: Theme.of(context).colorScheme.secondary)),
      inputFormatters: inputFormatters,
      keyboardType: keyboardType
    );
  }

}