import 'package:flutter/material.dart';
import 'package:hydraroundedbox/hydraroundedbox.dart';

class HydraTextBox extends StatelessWidget {
  String? Function(String?)? validator;
  bool autocorrect;
  HydraTextBox({this.validator, this.autocorrect = true});
  @override
  Widget build(BuildContext context) {
    return RoundedBox(
      addedWidget: TextFormField(
        validator: validator,
        autocorrect: autocorrect,
      ),
    );
  }
}
