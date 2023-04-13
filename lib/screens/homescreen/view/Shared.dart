import 'package:shared_preferences/shared_preferences.dart';

class Shr
{
  Future<void> createShr(String email,String password,bool isLogin)
  async {
    SharedPreferences sharedPreferences=await SharedPreferences.getInstance();
    sharedPreferences.setString('e', email);
    sharedPreferences.setString('p', password);
    sharedPreferences.setBool('isLogin',isLogin );
  }
  Future<Map> readShr()
  async {
    SharedPreferences sharedPreferences=await SharedPreferences.getInstance();
    String? email =sharedPreferences.getString('e');
    String? password=sharedPreferences.getString('p');
    bool? isLogin=sharedPreferences.getBool('isLogin');

    Map m1={"e":email,"p":password,"isLogin":isLogin};
    return m1;
  }
  Future<void> clearshr()
  async {
    SharedPreferences sharedPreferences=await SharedPreferences.getInstance();
    sharedPreferences.clear();
  }

}