import 'package:flutter/material.dart';
import 'package:salon/features/book_mark.dart';


import 'package:salon/utils/colors.dart';


class MenuNavBar extends StatelessWidget {
  const MenuNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.appbackgroundColor,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          SizedBox(
            height: 140,
            child: DrawerHeader(
              decoration: const BoxDecoration(
                border: Border(bottom: BorderSide.none),
                color: Colors.white,
              ),
              child: Row(children: [
                ClipRRect(
                  child: Container(
                    width: 60,
                    height: 60,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                      image: DecorationImage(
                          image: ExactAssetImage('assets/onboarding1.png'),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
               const  SizedBox(width: 10,),
      
                const SizedBox(
                  height: 70,
                  width: 180,
                  child:  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Kesav',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: AppColors.appbackgroundColor),
                      ),
                      Text(
                        '+91 85259  05774',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: AppColors.appbackgroundColor),
                      )
                    ],
                  ),
                )
              ]),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home, color: Colors.white,),
            title: const Text('Home', style: TextStyle(color: Colors.white),),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.calendar_month_rounded , color: Colors.white,),
            title: const Text('Appointment', style: TextStyle(color: Colors.white),),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.payment,color: Colors.white,),
            title: const Text('Payment', style: TextStyle(color: Colors.white),),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.notifications,color: Colors.white,),
            title: const Text('Notification', style: TextStyle(color: Colors.white),),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings,color: Colors.white,),
            title: const Text('Settings', style: TextStyle(color: Colors.white),),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.bookmark,color: Colors.white,),
            title: const Text('Bookmark', style: TextStyle(color: Colors.white),),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const BookMarkPage(),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.history,color: Colors.white,),
            title: const Text('History', style: TextStyle(color: Colors.white),),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.logout,color: Colors.white,),
            title: const Text('Sign Out', style: TextStyle(color: Colors.white),),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
