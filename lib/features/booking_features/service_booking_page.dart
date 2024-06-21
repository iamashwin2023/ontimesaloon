import 'package:flutter/material.dart';
import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:salon/features/booking_features/address_book_age.dart';

import 'package:salon/utils/colors.dart';
import 'package:salon/widgets/choice_chip.dart';



class BookingServicePage extends StatefulWidget {
  const BookingServicePage({super.key});
  @override
  State< BookingServicePage> createState() => _BookingServicePageState();
}

class _BookingServicePageState extends State< BookingServicePage> {
  late DateTime _selectedDate;

  @override
  void initState() {
    super.initState();
    _resetSelectedDate();
  }

  void _resetSelectedDate() {
    _selectedDate = DateTime.now().add(const Duration(days: 2));
  }
 int l=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: AppColors.appbackgroundColor,
        leading: GestureDetector(
           onTap: () {
                                                              Navigator
                                                                  .pop(context);
                                                            },child: const Icon(Icons.arrow_back, color: Colors.white,)),
        title: const Text(
          'Book',
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
     
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 16,vertical: 18),
          child: Column(

            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                 'Date',
                 style: TextStyle(color: Colors.white, fontSize: 18,fontWeight: FontWeight.w600),
                 
                 
               ),
           const  SizedBox(height: 14,),

             Container(
              padding:const  EdgeInsets.only( right:16 , top: 20, bottom: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
               child: MediaQuery(data: MediaQuery.of(context).copyWith(textScaler:const TextScaler.linear(1.0)), child: CalendarTimeline(
                
                  showYears: false,
                  initialDate: _selectedDate,
                  firstDate: DateTime.now(),
                  lastDate: DateTime.now().add(const Duration(days: 365 * 1)),
                  onDateSelected: (date) => setState(() => _selectedDate = date),
                  leftMargin: 10,
                  
                  monthColor: AppColors.appbackgroundColor,
                  dayColor:  AppColors.appbackgroundColor,
                  dayNameColor: const Color.fromARGB(255, 173, 174, 175),
                  activeDayColor: const Color.fromARGB(255, 205, 200, 200),
                  shrink:false ,
                  activeBackgroundDayColor:AppColors.appbackgroundColor,
                  dotsColor:  const Color.fromARGB(255, 173, 174, 175),
                  selectableDayPredicate: (date) => date.day != 23,
                  locale: 'en',
                 
                ),
                ),
             ),

              // const SizedBox(height: 40),
              // TextButton(
              //   style: ButtonStyle(
              //     backgroundColor: MaterialStateProperty.all(Colors.teal[200]),
              //   ),
              //   child: const Text(
              //     'RESET',
              //     style: TextStyle(color: Color(0xFF333A47)),
              //   ),
              //   onPressed: () => setState(() => _resetSelectedDate()),
              // ),
              // const SizedBox(height: 20),
              // Center(
              //   child: Text(
              //     'Selected date is $_selectedDate',
              //     style: const TextStyle(color:Color.fromARGB(255, 32, 180, 165)),
              //   ),
              // )
          const    SizedBox(height: 20,),

              const Text(
                 'Time',
                 style: TextStyle(color: Colors.white, fontSize: 18,fontWeight: FontWeight.w600),
                 
                 
               ),
           const  SizedBox(height: 14,),

             Container(
              //padding:const  EdgeInsets.only( right:16 , top: 20, bottom: 20),
              padding:const  EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
               child:const  TimeChoiceChip(),
               ),
               const SizedBox(height: 80),
                        InkWell(
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const AddressBookPage(),
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
                              'MAKE PAYMENT',
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
      ),
    );
  }
}