import 'package:flutter/material.dart';
import 'package:salon/features/booking_features/add_address_book_details.dart';
import 'package:salon/features/booking_features/service_booking_page.dart';
import 'package:salon/features/booking_features/show_success_page.dart';

import 'package:salon/utils/colors.dart';
import 'package:salon/widgets/home_items_list.dart';

class AddressBookPage extends StatefulWidget {
  const AddressBookPage({super.key});

  @override
  State<AddressBookPage> createState() => _AddressBookPageState();
}

class _AddressBookPageState extends State<AddressBookPage> {
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
                  builder: (context) => const BookingServicePage(),
                ),
              );
            },
            child: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        title: const Text(
          'Address Book',
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AddAdressPage()));
                },
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                )),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 10, top: 10),
        child: ListView.builder(
          itemCount: addressListItem.length,
          itemBuilder: (context, index) {
            return Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              height: 190,
              width: double.infinity,
              margin: const EdgeInsets.only(left: 16, right: 16, top: 16),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        addressListItem[index].fullName,
                        style: const TextStyle(
                          color: AppColors.appbackgroundColor,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const Row(
                        children: [
                          Icon(
                            Icons.flag_outlined,
                            color: AppColors.appbackgroundColor,
                          ),
                          Text(
                            'Default',
                            style: TextStyle(
                              color: AppColors.appbackgroundColor,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  CustomPaint(
                    painter: LinePainter(),
                    size: const Size(500, 0.10),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Container(
                    constraints:
                        const BoxConstraints.tightFor(width: double.infinity),
                    child: Wrap(
                      alignment: WrapAlignment.start,
                      children: [
                        Text(
                          addressListItem[index].streeAddress,
                          style: const TextStyle(
                            color: AppColors.appbackgroundColor,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const Text(','),
                        Text(
                          addressListItem[index].city,
                          style: const TextStyle(
                            color: AppColors.appbackgroundColor,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const Text(','),
                        Text(
                          addressListItem[index].state,
                          style: const TextStyle(
                            color: AppColors.appbackgroundColor,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const Text(','),
                        Text(
                          addressListItem[index].postalCode,
                          style: const TextStyle(
                            color: AppColors.appbackgroundColor,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Transform.scale(
                        scale: 1.2, // Scale the checkbox size
                        child: Checkbox(
                          side: const BorderSide(
                              color: AppColors.appbackgroundColor),
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(2))),
                          value: isChecked,
                          onChanged: (value) {
                            setState(() {
                              isChecked = value!;
                            });
                          },
                          activeColor: AppColors.appbackgroundColor,
                          checkColor: Colors.white,
                        ),
                      ),
                      const Text(
                        'Use as the payment address',
                        style: TextStyle(
                          color: AppColors.appbackgroundColor,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const ShowSuccessPage(),
              ));
        },
        backgroundColor:Colors.blue,
        child: const Icon(
          Icons.arrow_forward,
          color: Colors.white,
        ),
      ),
    );
  }
}

class LinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = AppColors.appbackgroundColor
      ..strokeWidth = 0.66;

    final starPoint = Offset(0, size.height / 2);
    final endPoint = Offset(size.width, size.height / 2);

    canvas.drawLine(starPoint, endPoint, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
