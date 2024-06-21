import 'package:flutter/material.dart';
import 'package:salon/features/home_page.dart';
import 'package:salon/utils/colors.dart';

class ShowSuccessPage extends StatelessWidget {
  const ShowSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.appbackgroundColor,
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 32),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.blue.shade300,
                  child: const CircleAvatar(
                    maxRadius: 50,
                    backgroundColor: Colors.blue,
                    child: Icon(
                      Icons.check,
                      size: 48,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Thank You!',
              style: TextStyle(
                  fontSize: 34,
                  color: Colors.white,
                  fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 2,
            ),
            const Text(
              'Payment done Successfully',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'You will redirected to the home page shortly\nor chick here to return to home page',
              style: TextStyle(
                
                  fontSize: 14,
                  color: Colors.white70,
                  fontWeight: FontWeight.w400),textAlign: TextAlign.center,
            ),
             const SizedBox(height: 60),
                        InkWell(
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const HomePage(),
                                ),);
                          },
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
                              'GO TO HOME',
                              style: TextStyle(
                                  color:  Color.fromARGB(255, 0, 11, 70),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            )),
                          ),
                        ),
          ],
        ),
      ),
    );
  }
}
