import 'package:flutter/material.dart';

import 'package:salon/features/home_page.dart';

import 'package:salon/utils/colors.dart';
import 'package:salon/widgets/home_items_list.dart';

class BookMarkPage extends StatefulWidget {
  const BookMarkPage({super.key});

  @override
  State<BookMarkPage> createState() => _BookMarkPageState();
}

class _BookMarkPageState extends State<BookMarkPage> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.appbackgroundColor,
        leading: GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomePage(),
                ),
              );
            },
            child: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        title: const Text(
          'Book ',
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: ListView.builder(
          itemCount: luxuryListItem.length,
          itemBuilder: (context, index) {
            return Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              height: 90,
              width: double.infinity,
              margin: const EdgeInsets.symmetric(vertical: 10),
              // padding: const EdgeInsets.all(6),
              child: ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                leading: Container(
                  width: 90,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.grey,
                    image: DecorationImage(
                        image: AssetImage(luxuryListItem[index].imageUrl),
                        fit: BoxFit.fill),
                  ),
                ),
                title: Text(luxuryListItem[index].title),
                subtitle: Text(luxuryListItem[index].location),
                trailing: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.star,
                      size: 16,
                      color: Colors.amber,
                    ),
                  
                    Text(
                      '4.8',
                      style: TextStyle(
                          color: AppColors.appbackgroundColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 16),
                    )
                    
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
