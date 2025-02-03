import 'package:http/http.dart';
import '../model/login.dart';
import 'dart:convert';

class LoginService {
  Future<Login> login(String email, String password) async {
    var auth = 'Basic ${base64Encode(utf8.encode('$email:$password'))}';
    Response response = await post(
      Uri.parse('http://localhost:3000/api/wanaka/accounts/login'),
      headers: {'Authorization': auth},
      body: {
        'email': email,
        'password': password,
      },
    );

    if(response.statusCode == 200){
      var data = Login.fromJson(jsonDecode(response.body.toString()));
      return data;
    }
    throw Exception('Invalid user name or password');
  }
}