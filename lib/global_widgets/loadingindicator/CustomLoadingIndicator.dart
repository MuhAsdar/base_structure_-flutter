import 'package:flutter/material.dart';
import 'package:flutterbasestructure/utils/colors.dart';

class CustomLoadingIndicator extends StatefulWidget {
  final Color color;

  CustomLoadingIndicator({this.color});

  @override
  _CustomLoadingIndicatorState createState() => _CustomLoadingIndicatorState(color: color);
}

class _CustomLoadingIndicatorState extends State<CustomLoadingIndicator> {
  Color color;

  _CustomLoadingIndicatorState({this.color});

  @override
  Widget build(BuildContext context) {
    return  CircularProgressIndicator(
          valueColor: color == null ? AlwaysStoppedAnimation<Color>(CustomColors.primary) : AlwaysStoppedAnimation<Color>(color),
    );
  }
}
