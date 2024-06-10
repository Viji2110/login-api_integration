import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/snackbar/snackbar.dart';
import 'button.dart';

class LoginScreen2 extends StatelessWidget {
  final _mobileController = TextEditingController();
  Future<String> sendOTP(String mobileNumber) async {
    try {
      final response = await Dio().post('http://34.207.222.173:9000/store/auth',
          data: {"login_type": "mobile", 'mobile_number': mobileNumber});
      if (response.statusCode == 200) {
        return response.data['message'];
      } else {
        throw Exception('Failed to send OTP');
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<bool> verifyOTP(String otp) async {
    try {
      final response = await Dio().post(
          'http://34.207.222.173:9000/store/auth/validate',
          data: {'otp': otp});
      if (response.statusCode == 200) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  void login(String mobileNumber, String otp) async {
    try {
      // Send OTP to the user's mobile number
      final message = await sendOTP(mobileNumber);
      // Show a snackbar with the OTP message
      Get.snackbar('OTP Sent', message);
      // Wait for the user to enter the OTP
      final result = await Get.dialog(
        AlertDialog(
          title: Text('Enter OTP'),
          content: TextField(
            keyboardType: TextInputType.number,
            onChanged: (value) => otp = value,
          ),
          actions: [
            TextButton(
              child: Text('VERIFY'),
              onPressed: () => Get.back(result: otp),
            ),
          ],
        ),
      );
      if (result != null) {
        // Verify the entered OTP
        final success = await verifyOTP(result);
        if (success) {
          // Navigate to the home page
          Get.offAll(MyButton());
        } else {
          throw Exception('Invalid OTP');
        }
      } else {
        throw Exception('OTP verification cancelled');
      }
    } catch (e) {
      // Show an error snackbar
      Get.snackbar('Error', e.toString(),
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.red,
          colorText: Colors.white);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _mobileController,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                labelText: 'Mobile Number',
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              child: Text('LOGIN'),
              onPressed: () => login(_mobileController.text, ''),
            ),
          ],
        ),
      ),
    );
  }
}
