import 'package:flutter/material.dart';

class ScreenUtils{
  double defaultWidth = 1080.0;
  double defaultHeight = 1920.0;

  static ScreenUtils instance = new ScreenUtils();

  static ScreenUtils getInstance() {
    return instance;
  }

  setWidth(num width, BuildContext context) => width * scaledWidth(context);

  setHeight(num height, BuildContext context) => height * scaledHeight(context);


  scaledHeight(BuildContext context){
    return height(context) / defaultHeight;
  }

  scaledWidth(BuildContext context){
    return width(context) / defaultWidth;
  }

  static height(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static width(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static dp4(BuildContext context) {
    return MediaQuery.of(context).size.width / 100;
  }

  static dp6(BuildContext context) {
    return MediaQuery.of(context).size.width / 70;
  }

  static dp8(BuildContext context) {
    return MediaQuery.of(context).size.width / 54;
  }

  static dp10(BuildContext context) {
    return MediaQuery.of(context).size.width / 41;
  }

  static dp12(BuildContext context) {
    return MediaQuery.of(context).size.width / 34;
  }

  static dp14(BuildContext context) {
    return MediaQuery.of(context).size.width / 29;
  }

  static dp16(BuildContext context) {
    return MediaQuery.of(context).size.width / 26;
  }

  static dp18(BuildContext context) {
    return MediaQuery.of(context).size.width / 23;
  }

  static dp20(BuildContext context) {
    return MediaQuery.of(context).size.width / 20;
  }

  static dp22(BuildContext context) {
    return MediaQuery.of(context).size.width / 17;
  }

  static dp24(BuildContext context) {
    return MediaQuery.of(context).size.width / 16;
  }

  static dp25(BuildContext context) {
    return MediaQuery.of(context).size.width / 15;
  }

  static dp26(BuildContext context) {
    return MediaQuery.of(context).size.width / 14.5;
  }

  static dp28(BuildContext context) {
    return MediaQuery.of(context).size.width / 13;
  }

  static dp30(BuildContext context) {
    return MediaQuery.of(context).size.width / 12.5;
  }

  static dp32(BuildContext context) {
    return MediaQuery.of(context).size.width / 11.7;
  }

  static dp35(BuildContext context) {
    return MediaQuery.of(context).size.width / 10.7;
  }

  static dp40(BuildContext context) {
    return MediaQuery.of(context).size.width / 9.375;
  }

  //  custom size in percent START
  static csp100(BuildContext context) {
    return MediaQuery.of(context).size * (100/100);
  }

  static csp50(BuildContext context) {
    return MediaQuery.of(context).size * (50/100);
  }

  static csp20(BuildContext context) {
    return MediaQuery.of(context).size * (20/100);
  }
//  custom size in percent END

}