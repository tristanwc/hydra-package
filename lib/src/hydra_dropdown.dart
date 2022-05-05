import 'package:flutter/material.dart';
import 'package:hydraroundedbox/hydraroundedbox.dart';

class HydraDropdown extends StatelessWidget {
  void Function(Object?)? onChanged;
  HydraDropdown({Key? key, this.onChanged}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return RoundedBox(
        addedWidget:
            DropdownButton<Object?>(items: const [], onChanged: onChanged));
  }
}
