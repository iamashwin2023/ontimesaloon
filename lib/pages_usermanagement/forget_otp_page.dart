// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:custom_clippers/custom_clippers.dart';

import 'package:salon/pages_usermanagement/reset_password_page.dart';

import 'package:salon/utils/colors.dart';
import 'package:salon/widgets/otp_text_box.dart';

class ForegetOTPPage extends StatefulWidget {
  const ForegetOTPPage({super.key});

  @override
  State<ForegetOTPPage> createState() => _ForegetOTPPageState();
}

class _ForegetOTPPageState extends State<ForegetOTPPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            color: AppColors.appbackgroundColor,
          ),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ClipPath(
                  clipper: SinCosineWaveClipper(),
                  // borderRadius: const BorderRadius.vertical(bottom: Radius.elliptical(340, 180)),

                  child: Container(
                    width: double.infinity,
                    height: 250,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: ExactAssetImage('assets/onboarding3.png'),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 32),
                  child: Center(
                    child: Text(
                      'Enter the 4-digit code\nsent to Your Number',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        height: 1.6,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 28,
                ),
                Form(
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 32),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        OtpBox(),
                        OtpBox(),
                        OtpBox(),
                        OtpBox(),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 32),
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      RichText(
                        text: const TextSpan(
                            text: 'Not receive code yet? ',
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 14,
                              color: Colors.white,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: 'Resend',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.lightBlueAccent),
                              ),
                            ]),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ResetPasswordPage(),
                      ),
                    );
                  },
                  child: Container(
                    // // padding: const EdgeInsets.all(32),
                    margin: const EdgeInsets.symmetric(horizontal: 32),
                    height: 50,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    child: const Center(
                        child: Text(
                      'VERIFICATION',
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 11, 70),
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    )),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
