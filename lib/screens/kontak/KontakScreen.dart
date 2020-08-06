import 'dart:async';
import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:flutterbasestructure/global_widgets/loadingindicator/CustomLoadingIndicator.dart';
import 'package:flutterbasestructure/utils/colors.dart';
import 'package:flutterbasestructure/utils/TextStyles.dart';
import 'package:flutterbasestructure/models/KontakModels.dart';
import 'package:flutterbasestructure/screens/kontak/local_widgets/CustomListKontak.dart';
import 'package:flutterbasestructure/blocs/GetKontakDataBloc.dart';

class KontakPage extends StatefulWidget {
  @override
  _KontakPageState createState() => _KontakPageState();
}

class _KontakPageState extends State<KontakPage> {
  GetAllKontakDataBloc _getAllKontakDataBloc = GetAllKontakDataBloc();
  bool _isLoading = false;
  StreamSubscription connectivitySubscription;
  ConnectivityResult _previousResult;

  @override
  void initState() {
    super.initState();
    checkConnectivity();
    _getAllKontakDataBloc.getProfileData();
  }

  @override
  void dispose() {
    super.dispose();
    _getAllKontakDataBloc.dispose();
    connectivitySubscription.cancel();
  }

  checkConnectivity() {
    connectivitySubscription = Connectivity()
        .onConnectivityChanged
        .listen((ConnectivityResult connectivityResult) {
      _previousResult = connectivityResult;
    });
  }

  showLoading() {
    setState(() {
      _isLoading = true;
    });
  }

  stopLoading() {
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CustomColors.pageBackground,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Kontak', style: TextStyles.appText(context)),
          backgroundColor: CustomColors.pageBackground,
          elevation: 0.0,
          iconTheme: IconThemeData(color: CustomColors.text),
        ),
        body: SingleChildScrollView(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                StreamBuilder(
                    stream: _getAllKontakDataBloc.kontakData,
                    builder:
                        (context, AsyncSnapshot<KontakDataModel> snapshot) {
                      if (snapshot.hasData) {
                        return Column(
                          children: snapshot.data.data
                              .map((KontakModel data) => Builder(
                                    builder: (context) => CustomListKontak(
                                      image: data.photo,
                                      title: data.name,
                                      kontak: data.phone,
                                    ),
                                  ))
                              .toList(),
                        );
                      }
                      return Container(
                        padding: EdgeInsets.only(top: 230),
                        child:Center(
                          child: CustomLoadingIndicator(),
                        ) ,
                      );
                    }),
              ],
            )));
  }
}
