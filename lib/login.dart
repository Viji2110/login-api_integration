import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sample_login_api/button.dart';
import 'package:sample_login_api/verify_otp.dart';
import 'package:snippet_coder_utils/FormHelper.dart';
import 'package:snippet_coder_utils/hex_color.dart';

import 'config.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String mobileNumber = '';
  bool enableBtn = false;
  bool isAPIcallProcess = false;
  final controller = Get.put(Config());

  @override
  void initState() {
    super.initState();
    mobileNumber = '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: 40),
          //cake image
          Center(child: Image.asset('images/Cake.png')),

          SizedBox(height: 20),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 40.0),
            child: Row(
              children: [
                Text(
                  'Login',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 8),

          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 40.0),
            child: Row(
              children: [
                Text(
                  'Enter your mobile number to proceed',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Colors.black26,
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 5),
          //usernumber textfeild
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: Column(
              children: [
                TextField(
                  keyboardType: TextInputType.number,
                  onSubmitted: controller.doLogin,
                  textInputAction: TextInputAction.done,
                  maxLines: 1,
                  decoration: InputDecoration(
                    labelText: "Enter your phone number",
                    prefixIcon: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 6),
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          GestureDetector(
                            onTap: () async {},
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 14, vertical: 4),
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                              ),
                              child: Text(
                                "+1",
                                style: TextStyle(
                                  color: Colors.black45,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    labelStyle: TextStyle(
                      fontFamily: 'Plus Jakarta Sans',
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500,
                      color: Color(
                        0xFF848484,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15),
          ElevatedButton(
            onPressed: () {
              // bool otpVerified = (await search()) ; // call your function to verify the OTP
              // if (otpVerified) {
              //   Get.to(MyHomePage()); // navigate to the validation screen
              // } else {
              //   // show an error message
              //   Get.snackbar('Error', 'Invalid OTP',
              //       snackPosition: SnackPosition.BOTTOM,
              //       backgroundColor: Colors.red,
              //       colorText: Colors.white);
              // }
            },
            child: Container(
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.symmetric(horizontal: 30),
              decoration: BoxDecoration(
                color: Color(0xFF9470FF),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Text(
                  "Next",
                  style: const TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyHomePage()),
              );
            },
            child: Container(
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.symmetric(horizontal: 30),
              decoration: BoxDecoration(
                color: Color(0xFF9470FF),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Text(
                  'Continue',
                  style: const TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ),

          // Center(
          //   child: FormHelper.submitButton(
          //     "Continue",
          //     () async {
          //       if (enableBtn && mobileNumber.length > 8) {
          //         setState(() {
          //           isAPIcallProcess = true;
          //         });
          //
          //         APIService.otpLogin(mobileNumber).then((response) async {
          //           setState(() {
          //             isAPIcallProcess = false;
          //           });
          //
          //           if (response.data != null) {
          //             Navigator.pushAndRemoveUntil(
          //               context,
          //               MaterialPageRoute(
          //                 builder: (context) => MyButton(
          //                     // otpHash: response.data,
          //                     //  mobileNo: mobileNumber,
          //                     ),
          //               ),
          //               (route) => false,
          //             );
          //           }
          //         });
          //       }
          //     },
          //     btnColor: HexColor("#78D0B1"),
          //     borderColor: HexColor("#78D0B1"),
          //     txtColor: HexColor(
          //       "#000000",
          //     ),
          //     borderRadius: 20,
          //   ),
          // ),

          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'or connect with',
                style: TextStyle(
                  color: Colors.black26,
                  fontWeight: FontWeight.normal,
                  fontSize: 15,
                ),
              ),
            ],
          ),

          //FB + Mail + Google

          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                ' Terms and condition',
                style: TextStyle(
                  color: Colors.blue[200],
                  fontWeight: FontWeight.normal,
                  fontSize: 13,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void navigateToNextPage(BuildContext context) {
    if (controller.doLogin == true) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => MyHomePage()),
      );
    }
  }
}
