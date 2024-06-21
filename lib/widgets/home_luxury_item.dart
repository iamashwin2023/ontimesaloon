
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:salon/home_subpages/luxury_viewall.dart';
import 'package:salon/widgets/home_items_list.dart';

class LuxurySection extends StatelessWidget {
  const LuxurySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                padding: const EdgeInsets.all(16),
                // color: const Color.fromARGB(255, 217, 217, 217),
                // margin: const EdgeInsets.symmetric(horizontal: 14),
                child: Column(
                  children: [
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                       const  Text(
                          'Luxury',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(context) => const LuxuryViewAllPage() ),);
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
                      height: 700,
                      child: ListView.builder(
                          physics: const AlwaysScrollableScrollPhysics(),
                          shrinkWrap: true,
                          primary: false,
                          itemCount: luxuryListItem.length,
                          scrollDirection: Axis.vertical,
                          itemBuilder: (context, index) {
                            return Container(
                              width: 120,
                              padding: const EdgeInsets.symmetric(vertical: 20),
                              child: Column(
                                // mainAxisAlignment:
                                //     MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        width: 120,
                                        height: 90,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: Colors.grey,
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  luxuryListItem[index]
                                                      .imageUrl),
                                              fit: BoxFit.fill),
                                        ),
                                      ),
                                      //  const  SizedBox(width:8),
                                      Container(
                                        width: 130,

                                        // padding: const EdgeInsets.symmetric(horizontal: 4),
                                        margin: const EdgeInsets.symmetric(
                                            horizontal: 18),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              luxuryListItem[index].title,
                                              style: const TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white),
                                            ),
                                            Text(
                                              luxuryListItem[index].location,
                                              style: const TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.white60),
                                            ),
                                            const SizedBox(height: 8),
                                            RatingBar.builder(
                                              initialRating: 4,
                                              minRating: 1,
                                              direction: Axis.horizontal,
                                              itemCount: 5,
                                              itemSize: 16,
                                              itemPadding:
                                                  const EdgeInsets.only(
                                                      right: 4),
                                              itemBuilder: (context, index) =>
                                                  const Icon(
                                                Icons.star,
                                                color: Colors.blue,
                                              ),
                                              onRatingUpdate: (index) {},
                                            ),
                                            const SizedBox(height: 6),
                                            Text(
                                              luxuryListItem[index].timing,
                                              style: const TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.white60),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        padding: const EdgeInsets.only(left: 4),
                                        height: 90,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Row(
                                              children: [
                                                const Icon(
                                                  Icons.location_on,
                                                  size: 12,
                                                  color: Colors.white60,
                                                ),
                                                const SizedBox(
                                                  width: 2,
                                                ),
                                                Text(
                                                  luxuryListItem[index]
                                                      .distance,
                                                  style: const TextStyle(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Colors.white60),
                                                ),
                                              ],
                                            ),
                                            InkWell(
                                              
                                              child: Container(
                                                // // padding: const EdgeInsets.all(32),
                                                // margin: const EdgeInsets.symmetric(horizontal: 30),
                                                height: 30,
                                                width: 60,
                                                decoration: const BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                15))),
                                                child: const Center(
                                                    child: Text(
                                                  'Book',
                                                  style: TextStyle(
                                                      color: Color.fromARGB(
                                                          255, 0, 11, 70),
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w600),
                                                )),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            );
                          }),
                    ),
                  ],
                ),
              );
  }
}