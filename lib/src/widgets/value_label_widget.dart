import 'package:flutter/material.dart';

class ValueLabelWidget extends StatelessWidget {
  final String value;
  final String label;
  final TextStyle valueStyle;
  final TextStyle labelStyle;

  ValueLabelWidget({this.value, this.label, this.valueStyle, this.labelStyle});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          value,
          style: valueStyle,
        ),
        Text(
          label,
          style: labelStyle,
        ),
      ],
    );
  }
}
