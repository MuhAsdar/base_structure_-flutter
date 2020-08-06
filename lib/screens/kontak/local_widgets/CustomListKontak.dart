import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutterbasestructure/global_widgets/card/CustomCard.dart';
import 'package:flutterbasestructure/utils/ScreenUtils.dart';
import 'package:flutterbasestructure/utils/TextStyles.dart';
import 'package:flutter_open_whatsapp/flutter_open_whatsapp.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomListKontak extends StatelessWidget {
  final String id;
  final String image;
  final String title;
  final String kontak;
  final Function(String) onTap;

  CustomListKontak({this.image, this.title, this.kontak, this.onTap, this.id});

  Future whatsAppOpen(String phone) async {
    if (phone.contains('0', 0)) {
      String number = await phone.replaceRange(0, 1, '62');
      FlutterOpenWhatsapp.sendSingleMessage(number, "Hallo");
    } else if (phone.contains('6', 0) == "6" && phone.contains('2', 1) == "2") {
      FlutterOpenWhatsapp.sendSingleMessage(phone, "Hallo");
    }
  }

  Future _openUrl(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: ScreenUtils.dp18(context)),
      child: CustomCard(
          radius: 5,
          padding: ScreenUtils.dp14(context),
          child: Container(
            child: Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: ScreenUtils.dp10(context),
                      horizontal: ScreenUtils.dp4(context)),
                  child: FadeInImage(
                    placeholder: AssetImage(
                        'assets/images/covid/fitur/contact.png'),
                    image: AssetImage(
                        'assets/images/covid/fitur/contact.png'),
                    width: ScreenUtils.dp40(context),
                    height: ScreenUtils.dp40(context),
                  ),
                ),
                Container(
                    padding: EdgeInsets.only(top: 15, bottom: 15, left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        title == null
                            ? Container()
                            : Padding(
                          padding: EdgeInsets.symmetric(vertical: 5.0),
                          child: Text(title,
                              style: TextStyles.cardTitle(context)),
                        ),
                        kontak == null
                            ? Container()
                            : Padding(
                            padding: EdgeInsets.only(
                              top: 4.0,
                              bottom: 8.0,
                            ),
                            child: Row(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 5),
                                  child: Icon(Icons.call,color: Colors.grey,),
                                ),
                                Text(kontak,
                                    style: TextStyles.cardDescription(context)),
                              ],
                            )
                        ),
                        Row(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              width: ScreenUtils.dp40(context),
                              height: 25,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(15.0),
                                boxShadow: <BoxShadow>[
                                  BoxShadow(
                                      color: Color(0xFFD8D8D8),
                                      blurRadius: 16.0,
                                      offset: Offset(0.0, 8.0)
                                  )
                                ],
                              ),
                              child: InkWell(
                                onTap: () {
                                  whatsAppOpen(kontak);
                                },
                                child: Center(
                                  child: Text('Whatsup', style: TextStyles.buttonText(context)),
                                ),
                              )
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              width: ScreenUtils.dp40(context),
                              height: 25,
                              decoration: BoxDecoration(
                                color: Colors.blueGrey,
                                borderRadius: BorderRadius.circular(15.0),
                                boxShadow: <BoxShadow>[
                                  BoxShadow(
                                      color: Color(0xFFD8D8D8),
                                      blurRadius: 16.0,
                                      offset: Offset(0.0, 8.0)
                                  )
                                ],
                              ),
                              child: InkWell(
                                onTap: () {
                                  _openUrl('tel:$kontak');
                                },
                                child: Center(
                                  child: Text('Call', style: TextStyles.buttonText(context)),
                                ),
                              )
                            ),
//                            Container(
//                              margin: EdgeInsets.symmetric(horizontal: 5),
//                              width: ScreenUtils.dp64(context),
//                              height: 25,
//                              decoration: BoxDecoration(
//                                color: Colors.redAccent,
//                                borderRadius: BorderRadius.circular(15.0),
//                                boxShadow: <BoxShadow>[
//                                  BoxShadow(
//                                      color: Color(0xFFD8D8D8),
//                                      blurRadius: 16.0,
//                                      offset: Offset(0.0, 8.0)
//                                  )
//                                ],
//                              ),
//                              child: InkWell(
//                                onTap: () {
//                                  _openUrl('mailto:tes@gmail.com?subject=Tanya_Covid&body=Tulis%20disini');
//                                },
//                                child: Center(
//                                  child: Text('Email', style: TextStyles.buttonTextSmall(context)),
//                                ),
//                              )
//                            ),
                          ],
                        )
                      ],
                    )),
              ],
            ),
          )),
    );
  }
}
