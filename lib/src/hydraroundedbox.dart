import 'package:flutter/material.dart';

class RoundedBox extends StatefulWidget {
  RoundedBox(
      {Key? key,
      required this.addedWidget,
      required this.height,
      required this.width})
      : super(key: key);
  final double height;
  final double width;
  final Widget addedWidget;
  Color? boxColor;
  double? borderRadius;
  @override
  State<RoundedBox> createState() => _RoundedBoxState();
}

class _RoundedBoxState extends State<RoundedBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      child: SizedBox(
        height: widget.height,
        width: widget.width,
        child: DecoratedBox(
            decoration: BoxDecoration(
                color: (widget.boxColor == null)
                    ? const Color(0xFFFFFFFF)
                    : widget.boxColor,
                borderRadius: BorderRadius.circular(
                    (widget.borderRadius == null)
                        ? 12.0
                        : widget.borderRadius!)),
            child: widget.addedWidget),
      ),
    );
  }
}
