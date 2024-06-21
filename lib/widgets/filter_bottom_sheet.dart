// import 'package:flutter/material.dart';


// import 'package:salon/utils/colors.dart';
// import 'package:salon/widgets/home_items_list.dart';

// class FilerBottomSheet extends StatelessWidget {
//   const FilerBottomSheet({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: const BoxDecoration(
//           color: AppColors.appbackgroundColor,
//           borderRadius: BorderRadius.vertical(top: Radius.circular(28))),
//       padding: const EdgeInsets.symmetric(horizontal: 16),
//       child: Column(
//         children: [
//           const SizedBox(
//             height: 12,
//           ),
//           Center(
//             child: Container(
//               height: 5,
//               width: 50,
//               decoration: BoxDecoration(
//                   color: Colors.grey.shade400,
//                   borderRadius: BorderRadius.circular(20)),
//             ),
//           ),
//           const SizedBox(
//             height: 20,
//           ),
//           Container(
           
//           color: Colors.amber,
//             width: double.infinity,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 const Text(
//                   'Services',
//                   style: TextStyle(
//                       fontWeight: FontWeight.w600,
//                       fontSize: 20,
//                       color: Colors.white),
//                 ),
//                 const SizedBox(
//                   height: 4,
//                 ),
//                 SizedBox(
//                   height: 100,
//                   child: GridView.builder(
//                     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                         crossAxisCount: 3),
//                     // physics: const AlwaysScrollableScrollPhysics(),
//                     // shrinkWrap: true,
//                     itemCount: serviceTitleListItem.length,
//                     // scrollDirection: Axis.vertical,
//                     itemBuilder: (context, index) {
//                       // return Padding(
//                       //   padding: const EdgeInsets.all(8.0),
//                       //   child: Container(
//                       //     height: 10,
//                       //     width: 20,
//                       //     decoration: BoxDecoration(color: Colors.white),
//                       //     child:  Text(
//                       //       serviceTitleListItem[index].title,
//                       //       style: const TextStyle(
//                       //           fontSize: 16,
//                       //           fontWeight: FontWeight.w500,
//                       //           color: AppColors.appbackgroundColor),
//                       //     ),
//                       //   ),
                      
//                       return Chip(
//                         label: Text(
//                           serviceTitleListItem[index].title,
//                           style: const TextStyle(
//                               fontSize: 16,
//                               fontWeight: FontWeight.w500,
//                               color: AppColors.appbackgroundColor),
//                         ),
//                       );
//                     },
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
