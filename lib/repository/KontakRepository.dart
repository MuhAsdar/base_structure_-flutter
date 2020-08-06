import 'package:flutterbasestructure/models/KontakModels.dart';
import 'package:flutterbasestructure/services//KontakApiProvider.dart';

class KontakRepository{
  KontakApiProvider _kontakApiProvider = KontakApiProvider();

  Future <KontakDataModel> getProfileData() => _kontakApiProvider.getAllKontak();

}