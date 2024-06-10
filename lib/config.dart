import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart';
import 'package:sample_login_api/verify_otp.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'button.dart';

class Config extends GetxController {
  final isLoading = false.obs;

  void doLogin(String query) async {
    try {
      isLoading(true);
      var response = await Dio().post(
        "http://34.207.222.173:9000/api/store/auth",
        data: {
          "login_type": "mobile",
          "mobile_number": query,
          "country_code": "91"
        },
      );
      print(response.statusCode);
      print(response.data.toString());
      var mobile_number = response.data['data']['mobile_number'];
      var otp = response.data['data']['otp'];
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('mobilenumber', mobile_number);
      await prefs.setString('otp', otp);
      print(mobile_number);
      if (otp != null) {
        // Navigate to the next page
        // Get.to(() => MyButton());
      }
      // List<Hit> hits = (response.data['hits'] as List)
      //     .map((hits) => Hit.fromJson(hits))
      //     .toList();
      // searchResults.assignAll(hits);

    } catch (e) {
      print(e);
    }

    // navigator.pushReplacement(context,MaterialPageRoute(builder:((Context))))
     finally {
      isLoading(false);
    }
  }

  void validate(String query) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final mobile_number = prefs.getString('mobilenumber');

      isLoading(true);
      var response = await Dio().post(
        "http://34.207.222.173:9000/api/store/auth/tokens",
        data: {
          "mobile_number": mobile_number,
          "otp": query,
        },
      );

      print(response.statusCode);
      print(response.data.toString());
      var access_token = response.data['data']['accesstoken'];
      var refresh_token = response.data['data']['refreshtoken'];

      await prefs.setString('accesstoken', access_token);
      await prefs.setString('refreshtoken', refresh_token);
      print(access_token);

      // List<Hit> hits = (response.data['hits'] as List)
      //     .map((hits) => Hit.fromJson(hits))
      //     .toList();
      // searchResults.assignAll(hits);

    } catch (e) {
      print(e);
    }
    // navigator.pushReplacement(context,MaterialPageRoute(builder:((Context))))
     finally {
      isLoading(false);
    }
  }
}

class Validate extends GetxController {
  final isLoading = false.obs;

  void search(String query) async {
    try {
      isLoading(true);
      var response = await Dio().post(
        "http://34.207.222.173:9000/api/store/auth/tokens",
        data: {
          "otp": query,
        },
      );
      print(response.statusCode);
      print(response.data.toString());

      // List<Hit> hits = (response.data['hits'] as List)
      //     .map((hits) => Hit.fromJson(hits))
      //     .toList();
      // searchResults.assignAll(hits);

    } catch (e) {
      print(e);
    }
    // navigator.pushReplacement(context,MaterialPageRoute(builder:((Context))))
     finally {
      isLoading(false);
    }
  }
}
// //
// // class Config {
// //   static const String apiURL =
// //       "http://34.207.222.173:9000/store/auth/customer/";
// //   var params = {"phone_number": query};
// //   static const String LoginAPI = "/users/Login";
// //   static const String otpLoginAPI = "/users/otpLogin";
// //
