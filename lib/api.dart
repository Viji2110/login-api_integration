// import 'dart:convert';
// import 'package:http/http.dart' as http;
//
// import 'config.dart';
// import 'model.dart';
//
// class APIService {
//   static var client = http.Client();
//
//   static Future<LoginResponseModel> otpLogin(String mobileNo) async {
//     Map<String, String> requestHeaders = {
//       'Content-Type': 'application/json',
//     };
//
//     var url = Uri.http(Config.apiURL, Config.LoginAPI);
//
//     var response = await client.post(
//       url,
//       headers: requestHeaders,
//       body: jsonEncode({"phone": mobileNo}),
//     );
//     print(response.body);
//     return loginResponseModel(response.body);
//   }
// }
