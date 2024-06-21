import 'package:custom_clippers/custom_clippers.dart';

import 'package:flutter/material.dart';
import 'package:salon/features/home_page.dart';


import 'package:salon/utils/colors.dart';

class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage({super.key});

  @override
  State<ResetPasswordPage> createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  TextEditingController confirmpass = TextEditingController();
  bool obsecuretxt = true;
  bool confrimobsecuretxt = true;
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    final inputBorder = OutlineInputBorder(
        borderSide: BorderSide.none, borderRadius: BorderRadius.circular(5));

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
                    'Re-set password',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Center(
                  child: Form(
                    key: _formkey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Row(
                          children: [
                            ///
                            Text(
                              'Password',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        TextFormField(
                          controller: _passwordController,
                          decoration: InputDecoration(
                            errorBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white)),
                            suffixIcon: GestureDetector(
                              child: obsecuretxt
                                  ? const Icon(
                                      Icons.visibility_off,
                                      size: 16,
                                    )
                                  : const Icon(
                                      Icons.visibility,
                                      size: 16,
                                    ),
                              onTap: () {
                                setState(() {
                                  // ignore: avoid_print
                                  print(obsecuretxt);
                                  obsecuretxt = !obsecuretxt;
                                });
                              },
                            ),
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 16, horizontal: 16),
                            hintText: 'Type password',
                            filled: true,
                            fillColor: Colors.white,
                            focusColor: Colors.white,
                            focusedBorder: inputBorder,
                            enabledBorder: inputBorder,
                            border: InputBorder.none,
                          ),
                          keyboardType: TextInputType.emailAddress,
                          obscureText: obsecuretxt,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "please Enter your password";
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 20),
                        const Row(
                          children: [
                            ///
                            Text(
                              'Confirm Password',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        TextFormField(
                          controller: _confirmPasswordController,
                          decoration: InputDecoration(
                            errorBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white)),
                            suffixIcon: GestureDetector(
                              child: confrimobsecuretxt
                                  ? const Icon(
                                      Icons.visibility_off,
                                      size: 16,
                                    )
                                  : const Icon(
                                      Icons.visibility,
                                      size: 16,
                                    ),
                              onTap: () {
                                setState(() {
                                  confrimobsecuretxt = !confrimobsecuretxt;
                                });
                              },
                            ),
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 16, horizontal: 16),
                            hintText: 'Type password',
                            filled: true,
                            fillColor: Colors.white,
                            focusColor: Colors.white,
                            focusedBorder: inputBorder,
                            enabledBorder: inputBorder,
                            border: InputBorder.none,
                          ),
                          keyboardType: TextInputType.emailAddress,
                          obscureText: confrimobsecuretxt,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "please Enter your password";
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 35),
                        InkWell(
                          
                          onTap: () => _showDecoratedAlert(context),
                          child: Container(
                            // // padding: const EdgeInsets.all(32),
                            // margin: const EdgeInsets.symmetric(horizontal: 30),
                            height: 50,
                            width: double.infinity,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            child: const Center(
                                child: Text(
                              'RESET',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 0, 11, 70),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            )),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



void _showDecoratedAlert(BuildContext context) {
  showDialog(
    context: context,
    barrierColor:const  Color.fromARGB(200, 0, 11, 70,),
    builder: (BuildContext context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 11, 70),
        icon: const Icon(
          Icons.check_circle_rounded,
          size: 60,
          color: Colors.white,
        ),
        title: const Text(
          'Code has been sent to\nreset a new passwrod',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
        content: const Text(
          'Successfully password is reset\nnow enjoy our app',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white70,
            fontSize: 16.0,
          ),
        ),
        actions: <Widget>[
          ButtonBar(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ),
                  );

                 
                },
                child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  margin: const EdgeInsets.all(0),
                  width: 300,
                  height: 48,
                  padding: const EdgeInsets.all(10),
                  child: const Center(
                    child: Text(
                      'DONE',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Color.fromARGB(255, 0, 11, 70),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      );
    },
  );
}
