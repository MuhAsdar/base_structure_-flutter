import 'package:flutter/material.dart';
import 'package:flutterbasestructure/utils/colors.dart';
import 'package:flutterbasestructure/utils/ScreenUtils.dart';
import 'package:flutterbasestructure/utils/TextStyles.dart';

class Button extends StatelessWidget {
  final String text;
  final Color color;
  final VoidCallback onTap;
  final Widget widget;
  final double radius;
  final bool clear;
  final bool changeTextColor;
  final Color borderColor;
  final double borderWidth;

  Button({
    this.text = '',
    this.color = CustomColors.primary,
    this.onTap,
    this.widget = const Text(''),
    this.radius = 5.0,
    this.clear = false,
      this.borderColor = Colors.transparent,
      this.changeTextColor = false,
      this.borderWidth = 0.0
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: clear ? null : ScreenUtils.instance.setWidth(125.0, context),
      decoration: clear ? null : BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(radius),
              border: Border.all(color: borderColor,width:borderWidth ),
              boxShadow: <BoxShadow>[
                BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 30.0,
                        offset: Offset(0.0, 10.0)
                )
              ]
      ),

      child: Material(
        color: Colors.transparent,
        child: InkWell(
                onTap: onTap,
                child: Center(
                        child: Padding(
                          padding: clear
                                  ? EdgeInsets.symmetric(horizontal: 2.0)
                                  : EdgeInsets.symmetric(horizontal: 8.0),
                          child: text == ''
                                  ? widget
                                  : Text(text, style: changeTextColor ? TextStyles.buttonTextClear(context) : TextStyles.buttonText(context),textAlign: TextAlign.center,),
                        )
                )
        ),
      ),
    );
  }
}
