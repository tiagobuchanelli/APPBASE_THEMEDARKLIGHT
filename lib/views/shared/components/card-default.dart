import 'package:flutter/material.dart';

class CardDefault extends StatelessWidget {
  final Widget widgets;

  /// you can add more fields that meet your needs
  const CardDefault({Key key, this.widgets}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      semanticContainer: true,
      child: widgets,
    );
  }
}
