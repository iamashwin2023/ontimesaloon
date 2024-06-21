import '../utils/api.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  // Generalized function to handle POST requests
  static Future<http.Response?> _postRequest(
      String url, Map<String, dynamic> body,
      {Map<String, String>? headers}) async {
    try {
      var res = await http.post(
        Uri.parse(url),
        headers: headers ?? {'Content-Type': 'application/json'},
        body: headers?['Content-Type'] == 'application/json'
            ? jsonEncode(body)
            : body,
      );

      print("Request sent to $url with data $body");

      if (res.statusCode == 200) {
        print('Success: ${res.body}');
      } else if (res.statusCode == 400) {
        print('Client Error: ${res.body}');
      } else {
        print('Server Error: ${res.statusCode}');
      }
      return res;
    } on http.ClientException catch (e, stackTrace) {
      print('ClientException: $e');
      print('StackTrace: $stackTrace');
    } on FormatException catch (e, stackTrace) {
      print('FormatException: $e');
      print('StackTrace: $stackTrace');
    } catch (e, stackTrace) {
      print('Exception: $e');
      print('StackTrace: $stackTrace');
    }
    return null;
  }

  static Future<http.Response?> signUpAPI(
      String email, String pass, String confirmpass) async {
    var map = <String, dynamic>{
      'email': email,
      'password': pass,
      'cnfpassword': confirmpass,
    };
    return await _postRequest(API.signUpAPI, map);
  }

  static Future<http.Response?> otpUpdateAPI(
      String email, String number) async {
    var map = <String, dynamic>{
      'email': email,
      'number': number,
    };
    return await _postRequest(API.otpUpdateAPI, map);
  }

  static Future<http.Response?> otpVerifyAPI(String otp, String number) async {
    var formData = <String, dynamic>{
      'otp': otp,
      'number': number,
    };
    return await _postRequest(API.otpVerifyAPI, formData,
        headers: {'Content-Type': 'application/x-www-form-urlencoded'});
  }

  static Future<http.Response?> signinAccountAPI(
      String email, String password) async {
    var formData = <String, String>{
      'email': email,
      'password': password,
    };
    return await _postRequest(
        'https://ontimesalon.com/api/Signin_Acoount.php', formData);
  }

  static Future<http.Response?> searchSalonAPI(
      String salonname, String salonaddress) async {
    var formData = <String, String>{
      'salonname': salonname,
      'salonaddress': salonaddress,
    };
    return await _postRequest(
        'https://ontimesalon.com/api/Search_Salon.php', formData);
  }

  static Future<http.Response?> salonListAPI() async {
    return await _postRequest('https://ontimesalon.com/api/Salon_list.php', {});
  }
}
