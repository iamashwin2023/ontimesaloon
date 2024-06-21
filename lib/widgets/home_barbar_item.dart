import 'package:flutter/material.dart';
import 'package:salon/home_subpages/barbar_viewall.dart';


import 'package:salon/widgets/home_items_list.dart';

class Barbar extends StatelessWidget {
  const Barbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                padding: const EdgeInsets.all(16),
                width: double.infinity,
                // color: const Color.fromARGB(255, 217, 217, 217),
                // margin: const EdgeInsets.symmetric(horizontal: 14),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Choose Your Barber',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(context) => const BarbarViewAllPage() ),);
                          },
                          child:const  Text(
                            'View all',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 100,
                      width: double.infinity,
                      child: ListView.builder(
                          itemCount: barbarListItem.length,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Row(
                              children: [
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8),
                                      child: CircleAvatar(
                                        radius: 32,
                                        backgroundImage: AssetImage(
                                            barbarListItem[index].imageUrl),
                                      ),
                                    ),
                                    // const SizedBox(
                                    //   height: 0,
                                    // ),
                                    Text(
                                      barbarListItem[index].title,
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ],
                            );
                          }),
                    ),
                  ],
                ),
              );
  }
}