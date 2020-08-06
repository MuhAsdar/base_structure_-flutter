import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart' as prefix0;
import 'package:flutter/material.dart';
import 'package:flutterbasestructure/utils/colors.dart';
import 'package:flutterbasestructure/utils/ScreenUtils.dart';

class TextStyles{
  static titleFirstLine (BuildContext context){
    return TextStyle(
        fontSize: ScreenUtils.dp40(context),
        height: ScreenUtils.instance.setHeight(2.0, context),
        color: CustomColors.text,
        fontWeight: FontWeight.bold
    );
  }

  static secondTitleLine(BuildContext context){
    return TextStyle(
      fontSize: ScreenUtils.dp40(context),
      height: ScreenUtils.instance.setHeight(2.5, context),
      color: CustomColors.text,
    );
  }

  static authText(BuildContext context){
    return TextStyle(
      fontSize: ScreenUtils.dp16(context),
      height: ScreenUtils.instance.setHeight(2.5, context),
      color: CustomColors.textLight,
    );
  }

  static buttonText(BuildContext context){
    return TextStyle(
        fontSize: ScreenUtils.dp16(context),
        height: ScreenUtils.instance.setHeight(2.5, context),
        color: Colors.white
    );
  }
  static buttonTextClear(BuildContext context){
    return TextStyle(
        fontSize: ScreenUtils.dp16(context),
        height: ScreenUtils.instance.setHeight(2.5, context),
        color: CustomColors.text,
        fontWeight: FontWeight.bold
    );
  }

  static cardTitle(BuildContext context){
    return TextStyle(
      fontSize: ScreenUtils.dp16(context),
      height: ScreenUtils.instance.setHeight(2.5, context),
      color: CustomColors.textDark,
    );
  }

  static commentCardTitle(BuildContext context){
    return TextStyle(
        fontSize: ScreenUtils.dp16(context),
        height: ScreenUtils.instance.setHeight(2.5, context),
        color: CustomColors.textDark,
        fontWeight: FontWeight.bold
    );
  }

  static profileStyleTitle(BuildContext context){
    return TextStyle(
      fontSize: ScreenUtils.dp16(context),
      height: ScreenUtils.instance.setHeight(2.5, context),
      color: CustomColors.text,
    );
  }
  static profileStyleDark(BuildContext context){
    return TextStyle(
        fontSize: ScreenUtils.dp20(context),
        height: ScreenUtils.instance.setHeight(2.5, context),
        color: CustomColors.textDark,
        fontWeight: FontWeight.normal
    );
  }

  static cardDescription(BuildContext context){
    return TextStyle(
      fontSize: ScreenUtils.dp14(context),
      height:  ScreenUtils.instance.setHeight(2.0, context),
      color: CustomColors.textLight,
    );
  }

  static cardDate(BuildContext context){
    return TextStyle(
      fontSize: ScreenUtils.dp10(context),
      height: ScreenUtils.instance.setHeight(1.5, context),
      color: CustomColors.textLight,
    );
  }

  static appText(BuildContext context){
    return TextStyle(color: CustomColors.pageBackground);
  }

  static detailTitle(BuildContext context){
    return TextStyle(
        fontSize: ScreenUtils.dp20(context),
        height: ScreenUtils.instance.setHeight(2.0, context),
        color: CustomColors.textDark,
        fontWeight: FontWeight.bold
    );
  }

  static detailSubTitle(BuildContext context){
    return TextStyle(
      fontSize: ScreenUtils.dp12(context),
      height: ScreenUtils.instance.setHeight(2.0, context),
      color: CustomColors.textLight,
    );
  }
  static detailSubTitleWhite(BuildContext context){
    return TextStyle(
      fontSize: ScreenUtils.dp10(context),
      height: ScreenUtils.instance.setHeight(2.0, context),
      color: Colors.white,
    );
  }

  static detailText(BuildContext context){
    return TextStyle(
        fontSize: ScreenUtils.dp16(context),
        height: ScreenUtils.instance.setHeight(3.0, context),
        color: CustomColors.text,
        fontStyle: FontStyle.italic
    );
  }

  static detailUsernameText(BuildContext context){
    return TextStyle(
        fontSize: ScreenUtils.dp14(context),
        height: ScreenUtils.instance.setHeight(3.0, context),
        color: CustomColors.text,
        fontWeight: FontWeight.bold
    );
  }

  static commentUsernameText(BuildContext context){
    return TextStyle(
        fontSize: ScreenUtils.dp12(context),
        height: ScreenUtils.instance.setHeight(2.0, context),
        color: CustomColors.text,
        fontWeight: FontWeight.bold
    );
  }

  static commentText(BuildContext context){
    return TextStyle(
      fontSize: ScreenUtils.dp16(context),
      height: ScreenUtils.instance.setHeight(3.0, context),
      fontStyle: FontStyle.italic,
      color: CustomColors.text,
    );
  }

  static textAreaHint(BuildContext context){
    return TextStyle(
      fontSize: ScreenUtils.dp16(context),
      height: ScreenUtils.instance.setHeight(2.0, context),
      fontStyle: FontStyle.italic,
      color: CustomColors.textAreaHint,
    );
  }

  static textFeedUsername(BuildContext context){
    return TextStyle(
        fontSize: ScreenUtils.dp12(context),
        color: CustomColors.text,
        fontWeight: FontWeight.bold
    );
  }

  static textFeedDate(BuildContext context){
    return TextStyle(
      fontSize: ScreenUtils.dp10(context),
      color: CustomColors.textLight,

    );
  }

  static textFeedIconLabel(BuildContext context){
    return TextStyle(
      fontSize: ScreenUtils.dp14(context),
      color: CustomColors.icon,
    );
  }

  static textFeedIconLabelActive(BuildContext context){
    return TextStyle(
      fontSize: ScreenUtils.dp14(context),
      color: CustomColors.iconActive,
    );
  }

  static textFeedTitle(BuildContext context){
    return TextStyle(
        fontSize: ScreenUtils.dp18(context),
        height: ScreenUtils.instance.setHeight(2.0, context),
        color: CustomColors.textDark,
        fontWeight: FontWeight.bold
    );
  }

  static textFeedText(BuildContext context){
    return TextStyle(
      fontSize: ScreenUtils.dp14(context),
      height: ScreenUtils.instance.setHeight(3.0, context),
      color: CustomColors.textLight,
    );
  }

  static textProfileUserName(BuildContext context){
    return TextStyle(
        color: Color(0xFF282C2E),
        fontSize:ScreenUtils.dp32(context),
        height:  ScreenUtils.instance.setHeight(2.0, context),
        fontWeight: FontWeight.bold
    );
  }
  static textProfileLocations(BuildContext context){
    return TextStyle(
      color: Color(0xFF757B7E),
      fontSize: ScreenUtils.dp12(context),
      height: ScreenUtils.instance.setHeight(2.0, context),
    );
  }
}
