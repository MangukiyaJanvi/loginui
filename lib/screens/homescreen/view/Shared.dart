import 'package:shared_preferences/shared_preferences.dart';

class Shr
{
  Future<void> createShr(String email,String password)
  async {
    SharedPreferences sharedPreferences=await SharedPreferences.getInstance();
    sharedPreferences.setString('e', email);
    sharedPreferences.setString('p', password);
  }
  Future<Map> readShr()
  async {
    SharedPreferences sharedPreferences=await SharedPreferences.getInstance();
    String? email =sharedPreferences.getString('e');
    String? password=sharedPreferences.getString('p');

    Map m1={"e":email,"p":password};
    return m1;
  }
}