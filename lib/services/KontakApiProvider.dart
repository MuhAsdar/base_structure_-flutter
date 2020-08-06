import 'package:dio/dio.dart';
import 'package:flutterbasestructure/utils/strings.dart';
import 'package:flutterbasestructure/models/KontakModels.dart';


class KontakApiProvider{
  Dio dio = Dio();
  Response response;

  Future<KontakDataModel> getAllKontak() async{
    try {
      var head = {
        'content-type': 'application/json',
        'accept': 'application/json',

      };
      response = await dio.get("${Strings.baseUrl}/contact-persons", options: Options(method: 'GET', headers: head));
      return KontakDataModel.fromJson(response.data);
    } on DioError catch (e) {
      return KontakDataModel.fromJson(e.response.data);
    }
  }

}