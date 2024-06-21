import 'package:flutter/material.dart';

import 'package:salon/features/home_page.dart';
import 'package:salon/utils/colors.dart';
import 'package:salon/widgets/home_items_list.dart';

class ServiceViewAllPage extends StatelessWidget {
  const ServiceViewAllPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ClipPath(
            child: Container(
              width: double.infinity,
              height: 300,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: ExactAssetImage('assets/onboarding1.png'),
                    fit: BoxFit.cover),
              ),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 22),
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const HomePage(),
                                ),
                              );
                            },
                            child: Container(
                                height: 36,
                                width: 36,
                                decoration: const BoxDecoration(
                                    color: Colors.black54,
                                    borderRadius: BorderRadiusDirectional.all(
                                        Radius.circular(50))),
                                child: const Icon(
                                  Icons.arrow_back,
                                  size: 26,
                                  color: Colors.white,
                                )),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.location_on,
                                  color: Colors.white,
                                  size: 20,
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                Container(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 8),
                                  height: 26,
                                  width: 160,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: const Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Location',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black87,
                                            fontSize: 14),
                                      ),
                                      Icon(
                                        Icons.arrow_drop_down_outlined,
                                        color: Colors.black87,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ]),
                        Container(
                            height: 36,
                            width: 36,
                            decoration: const BoxDecoration(
                              color: Colors.black54,
                              borderRadius: BorderRadiusDirectional.all(
                                Radius.circular(50),
                              ),
                            ),
                            child: const Icon(
                              Icons.filter_list_alt,
                              size: 26,
                              color: Colors.white,
                            )),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 70,
                  ),
                  Container(
                    height: 50,
                    decoration: const BoxDecoration(
                      color: Colors.white54,
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    margin: const EdgeInsets.symmetric(horizontal: 36),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Salon, Services, Barber',
                          style: TextStyle(fontSize: 16, color: Colors.black54),
                        ),
                        Icon(Icons.search, color: AppColors.appbackgroundColor)
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 26,
                  ),
                ],
              ),
            ),
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.68,
            minChildSize: 0.68,
            builder:
                (BuildContext context, ScrollController myScrollController) {
              return ListView.builder(
                  controller: myScrollController,
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return Container(
                      width: double.infinity,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(30))),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 12,
                          ),
                          Center(
                            child: Container(
                              height: 5,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade300,
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: SizedBox(
                              child: Column(
                                children: [
                                  const Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Select a Service',
                                        style: TextStyle(
                                            color: AppColors.appbackgroundColor,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  SizedBox(
                                    height: 700,
                                    child: GridView.builder(
                                        gridDelegate:
                                            const SliverGridDelegateWithFixedCrossAxisCount(
                                                crossAxisCount: 2),
                                        physics:
                                            const AlwaysScrollableScrollPhysics(),
                                        shrinkWrap: true,
                                        itemCount: serviceListItem.length,
                                        scrollDirection: Axis.vertical,
                                        itemBuilder: (context, index) {
                                          return Container(
                                            width: 120,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                border: Border.all(
                                                    color:
                                                        Colors.grey.shade200)),
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 20),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceBetween,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(horizontal: 8),
                                                  child: SizedBox(
                                                    height: 100,
                                                    width: 120,
                                                    child: ClipRect(
                                                      // borderRadius: const BorderRadius.vertical(bottom: Radius.elliptical(340, 180)),

                                                      child: Container(
                                                        width: double.infinity,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                          image: DecorationImage(
                                                              image: ExactAssetImage(
                                                                  serviceListItem[
                                                                          index]
                                                                      .imageUrl),
                                                              fit:
                                                                  BoxFit.cover),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                 
                                                ),
                                               
                                                Text(
                                                  serviceListItem[index].title,
                                                  style: const TextStyle(
                                                      color: AppColors
                                                          .appbackgroundColor,
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ],
                                            ),
                                          );
                                        }),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  });
            },
          ),
        ],
      ),
    );
  }
}
