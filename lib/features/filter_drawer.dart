// // import 'package:flutter/material.dart';


// // import 'package:salon/utils/colors.dart';

// // // class MenuNavBar extends StatelessWidget {
// // //   const MenuNavBar({super.key});

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return const Drawer();
// // //   }
// // // }

// // class FilterNavBar extends StatelessWidget {
// //   const FilterNavBar({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return Drawer(
// //       backgroundColor: AppColors.appbackgroundColor,
// //       child: ListView(
// //         padding: EdgeInsets.zero,
// //         children: <Widget>[
// //           // SizedBox(
// //           //   height: 140,
// //           //   child: DrawerHeader(
// //           //     decoration: const BoxDecoration(
// //           //       border: Border(bottom: BorderSide.none),
// //           //       color: Colors.white,
// //           //     ),
// //           //     child: Row(children: [
// //           //       ClipRRect(
// //           //         child: Container(
// //           //           width: 60,
// //           //           height: 60,
// //           //           decoration: const BoxDecoration(
// //           //             borderRadius: BorderRadius.all(Radius.circular(100)),
// //           //             image: DecorationImage(
// //           //                 image: ExactAssetImage('assets/onboarding1.png'),
// //           //                 fit: BoxFit.cover),
// //           //           ),
// //           //         ),
// //           //       ),
// //           //      const  SizedBox(width: 10,),
      
// //           //       const SizedBox(
// //           //         height: 70,
// //           //         width: 180,
// //           //         child:  Column(
// //           //           mainAxisAlignment: MainAxisAlignment.center,
// //           //           crossAxisAlignment: CrossAxisAlignment.start,
// //           //           children: [
// //           //             Text(
// //           //               'Kesav',
// //           //               style: TextStyle(
// //           //                   fontWeight: FontWeight.bold,
// //           //                   fontSize: 18,
// //           //                   color: AppColors.appbackgroundColor),
// //           //             ),
// //           //             Text(
// //           //               '+91 85259  05774',
// //           //               style: TextStyle(
// //           //                   fontWeight: FontWeight.bold,
// //           //                   fontSize: 14,
// //           //                   color: AppColors.appbackgroundColor),
// //           //             )
// //           //           ],
// //           //         ),
// //           //       )
// //           //     ]),
// //           //   ),
// //           // ),
// //           ListTile(
// //             leading: const Icon(Icons.home, color: Colors.white,),
// //             title: const Text('Home', style: TextStyle(color: Colors.white),),
// //             onTap: () {
// //               // Update the state of the app
// //               // ...
// //               // Then close the drawer
// //               Navigator.pop(context);
// //             },
// //           ),
// //           ListTile(
// //             leading: const Icon(Icons.calendar_month_rounded , color: Colors.white,),
// //             title: const Text('Appointment', style: TextStyle(color: Colors.white),),
// //             onTap: () {
// //               // Update the state of the app
// //               // ...
// //               // Then close the drawer
// //               Navigator.pop(context);
// //             },
// //           ),
// //           ListTile(
// //             leading: const Icon(Icons.payment,color: Colors.white,),
// //             title: const Text('Payment', style: TextStyle(color: Colors.white),),
// //             onTap: () {
// //               // Update the state of the app
// //               // ...
// //               // Then close the drawer
// //               Navigator.pop(context);
// //             },
// //           ),
// //           ListTile(
// //             leading: const Icon(Icons.notifications,color: Colors.white,),
// //             title: const Text('Notification', style: TextStyle(color: Colors.white),),
// //             onTap: () {
// //               // Update the state of the app
// //               // ...
// //               // Then close the drawer
// //               Navigator.pop(context);
// //             },
// //           ),
// //           ListTile(
// //             leading: const Icon(Icons.settings,color: Colors.white,),
// //             title: const Text('Settings', style: TextStyle(color: Colors.white),),
// //             onTap: () {
// //               // Update the state of the app
// //               // ...
// //               // Then close the drawer
// //               Navigator.pop(context);
// //             },
// //           ),
// //           ListTile(
// //             leading: const Icon(Icons.bookmark,color: Colors.white,),
// //             title: const Text('Bookmark', style: TextStyle(color: Colors.white),),
// //             onTap: () {
// //               // Update the state of the app
// //               // ...
// //               // Then close the drawer
// //               Navigator.pop(context);
// //             },
// //           ),
// //           ListTile(
// //             leading: const Icon(Icons.history,color: Colors.white,),
// //             title: const Text('History', style: TextStyle(color: Colors.white),),
// //             onTap: () {
// //               // Update the state of the app
// //               // ...
// //               // Then close the drawer
// //               Navigator.pop(context);
// //             },
// //           ),
// //           ListTile(
// //             leading: const Icon(Icons.logout,color: Colors.white,),
// //             title: const Text('Sign Out', style: TextStyle(color: Colors.white),),
// //             onTap: () {
// //               // Update the state of the app
// //               // ...
// //               // Then close the drawer
// //               Navigator.pop(context);
// //             },
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }




// import 'package:flutter/material.dart';
// import 'package:salon/widgets/home_items_list.dart';


// class FilterScreen extends StatefulWidget {
//   final List<Product> products;
//   const FilterScreen({super.key, required this.products});

//   @override
//   State<FilterScreen> createState() => _FilterScreenState();
// }

// // class _FilterScreenState extends State<FilterScreen> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return const Placeholder();
// //   }
// // }

// class _FilterScreenState extends State<FilterScreen> {
//   String selectedCategory = 'All';
//   double minPrice = 0;
//   double maxPrice = 1000;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Filter Products'),
//       ),
//       body: Column(
//         children: [
//           DropdownButton<String>(
//             value: selectedCategory,
//             items: <String>['All', 'Electronics', 'Clothing', 'Books']
//                 .map((String value) {
//               return DropdownMenuItem<String>(
//                 value: value,
//                 child: Text(value),
//               );
//                }).toList(),
//             onChanged: (newValue) {
//               setState(() {
//                 selectedCategory = newValue!;
//               });
//             },
//           ),
//           RangeSlider(
//             values: RangeValues(minPrice, maxPrice),
//             min: 0,
//             max: 1000,
//             divisions: 20,
//             labels: RangeLabels('\$${minPrice.round()}', '\$${maxPrice.round()}'),
//             onChanged: (RangeValues values) {
//               setState(() {
//                 minPrice = values.start;
//                 maxPrice = values.end;
//               });
//             },
//           ),
//           ElevatedButton(
//             onPressed: () {
//               List<Product> filteredProducts = widget.products.where((product) {
//                 bool matchesCategory = selectedCategory == 'All' || product.category == selectedCategory;
//                 bool matchesPrice = product.price >= minPrice && product.price <= maxPrice;
//                 return matchesCategory && matchesPrice;
//               }).toList();

//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => FilteredProductListScreen(products: filteredProducts),
//                 ),
//               );
//             },
//             child: const Text('Apply Filters'),
//           ),
//         ],
//   ),
// );}

// }





// class FilteredProductListScreen extends StatelessWidget {

  
//   const FilteredProductListScreen({super.key, required this.products});

//   final List<Product> products;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Filtered Products'),
//       ),
//       body: ListView.builder(
//         itemCount: products.length,
//         itemBuilder: (context, index) {
//           return ListTile(
//             title: Text(products[index].name),
//             subtitle: Text('${products[index].category} - \$${products[index].price}'),
//           );
//         },
//      ),
// );
// }
// }


