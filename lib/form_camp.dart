import 'package:flutter/material.dart';

class FormCamp extends StatelessWidget {
  final String label;
  final int MaxLength;
  final bool Enable;

  FormCamp({required this.label, this.MaxLength = 80, this.Enable = true});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: Enable,
      maxLength: MaxLength,
      decoration: InputDecoration(
          label: Text(label),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            borderSide: BorderSide(color: Colors.black38, width: 0.0),
          ),
          border: const OutlineInputBorder()),
    );
  }
}

class TextCamp extends StatelessWidget {
  final String label;
  final int MaxLength;
  final bool Enable;

  TextCamp({required this.label, this.MaxLength = 256, this.Enable = true});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: Enable,
      maxLength: MaxLength,
      maxLines: 4,
      decoration: InputDecoration(
          label: Text(label),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            borderSide: BorderSide(color: Colors.black38, width: 0.0),
          ),
          border: const OutlineInputBorder()),
    );
  }
}
