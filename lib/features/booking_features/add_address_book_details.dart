import 'package:flutter/material.dart';
import 'package:salon/features/booking_features/address_book_age.dart';

import 'package:salon/utils/colors.dart';


class AddAdressPage extends StatefulWidget {
  
  const AddAdressPage({super.key, });

  @override
  State<AddAdressPage> createState() => _AddAdressPageState();
}

class _AddAdressPageState extends State<AddAdressPage> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();


  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _streetAddressController = TextEditingController();
  final TextEditingController _stateController = TextEditingController();
  final TextEditingController _cityController = TextEditingController();
  final TextEditingController _postalCodeController = TextEditingController();

  bool isChecked = false;

  final inputBorder = OutlineInputBorder(
      borderSide: BorderSide.none, borderRadius: BorderRadius.circular(5));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.appbackgroundColor,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        title: const Text(
          'Add Address Details',
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Column(
            children: [
              Center(
                child: Form(
                  key: _formkey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Row(
                        children: [
                          Text(
                            'Full Name',
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          )
                          
                        ],
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      TextFormField(
                        controller: _fullNameController,
                        validator:(value){if (value == null || value.isEmpty){return 'Please enter your full name';}return null;},
                        decoration: InputDecoration(
                          errorBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 16, horizontal: 16),
                          hintText: 'Enter full name',
                          filled: true,
                          fillColor: Colors.white,
                          focusColor: Colors.white,
                          focusedBorder: inputBorder,
                          enabledBorder: inputBorder,
                          border: InputBorder.none,
                          
                        ),
                        keyboardType: TextInputType.text,
                      ),

                     const  SizedBox(height: 20,),
                     
                     const Row(
                        children: [
                          Text(
                            'Street Address',
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      TextFormField(
                        controller: _streetAddressController,
                        validator:(value){if (value == null || value.isEmpty){return 'Please enter your street address';}return null;},
                        decoration: InputDecoration(
                          errorBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 16, horizontal: 16),
                          hintText: 'Enter address',
                          filled: true,
                          fillColor: Colors.white,
                          focusColor: Colors.white,
                          focusedBorder: inputBorder,
                          enabledBorder: inputBorder,
                          border: InputBorder.none,
                        ),
                        keyboardType: TextInputType.text,
                      ),
                        const  SizedBox(height: 20,),
                         
                     const Row(
                        children: [
                          Text(
                            'City',
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      TextFormField(
                        controller: _cityController,
                        validator:(value){if (value == null || value.isEmpty){return 'Please enter your city';}return null;},
                        decoration: InputDecoration(
                          errorBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 16, horizontal: 16),
                          hintText: 'Enter city',
                          filled: true,
                          fillColor: Colors.white,
                          focusColor: Colors.white,
                          focusedBorder: inputBorder,
                          enabledBorder: inputBorder,
                          border: InputBorder.none,
                        ),
                        keyboardType: TextInputType.text,
                      ),
                      const  SizedBox(height: 20,),
                     const Row(
                        children: [
                          Text(
                            'State',
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      TextFormField(
                        controller: _stateController,
                        validator:(value){if (value == null || value.isEmpty){return 'Please enter your state';}return null;},
                        decoration: InputDecoration(
                          errorBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 16, horizontal: 16),
                          hintText: 'Enter State',
                          filled: true,
                          fillColor: Colors.white,
                          focusColor: Colors.white,
                          focusedBorder: inputBorder,
                          enabledBorder: inputBorder,
                          border: InputBorder.none,
                        ),
                        keyboardType: TextInputType.text,
                      ),
                       
                        const  SizedBox(height: 20,),
                     const Row(
                        children: [
                          Text(
                            'Postal Code',
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      TextFormField(
                        controller: _postalCodeController,
                        validator:(value){if (value == null || value.isEmpty){return 'Please enter your postal code';}return null;},
                        decoration: InputDecoration(
                          errorBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 16, horizontal: 16),
                          hintText: 'Enter postal code',
                          filled: true,
                          fillColor: Colors.white,
                          focusColor: Colors.white,
                          focusedBorder: inputBorder,
                          enabledBorder: inputBorder,
                          border: InputBorder.none,
                        ),
                        keyboardType: TextInputType.number,
                      ),
                       const SizedBox(height: 80),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              // onTap: () {
                              //   Navigator.pushReplacement(
                              //       context,
                              //       MaterialPageRoute(
                              //         builder: (context) =>
                              //             const AddressBookPage(),
                              //       ),);
                              // },
                              child: Container(
                                // // padding: const EdgeInsets.all(32),
                                // margin: const EdgeInsets.symmetric(horizontal: 30),
                                height: 50,
                                width: 160,
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5))),
                                child: const Center(
                                    child: Text(
                                  'DELETE',
                                  style: TextStyle(
                                      color:  Color.fromARGB(255, 0, 11, 70),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                )),
                              ),
                            ),
                            InkWell(
                              // onTap: () {
                              //   Navigator.pushReplacement(
                              //       context,
                              //       MaterialPageRoute(
                              //         builder: (context) =>
                              //             const AddressBookPage(),
                              //       ),);
                              // },

                              onTap: () {
                            if (_formkey.currentState!.validate()) {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const AddressBookPage(),
                                ),
                              );
                            }
                          },

                              child: Container(
                                // // padding: const EdgeInsets.all(32),
                                // margin: const EdgeInsets.symmetric(horizontal: 30),
                                height: 50,
                                width: 160,
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5))),
                                child: const Center(
                                    child: Text(
                                  'SAVE',
                                  style: TextStyle(
                                      color:  Color.fromARGB(255, 0, 11, 70),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                )),
                              ),
                            ),
                          ],
                        ),

                    ],
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


