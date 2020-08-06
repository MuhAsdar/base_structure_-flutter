import 'package:shared_preferences/shared_preferences.dart';

class SharedPreference{
  saveIntro(String intro) async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('isInro', intro);
  }

  Future<String> getIntro() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if(prefs.getString('isInro') == null){
      print(prefs.getString('isInro'));
      return "null";
    }else {
      print("isInro : ${prefs.getString('isInro')}");
      return prefs.getString('isInro');
    }
  }
  removeData() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove('isInro');
    prefs.clear();
  }
}
