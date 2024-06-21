import 'package:flutter/material.dart';
import 'package:salon/utils/colors.dart';



class TimeChoiceChip extends StatefulWidget {
  const TimeChoiceChip({super.key});

  @override
  State<TimeChoiceChip> createState() => _TimeChoiceChipState();
}
class _TimeChoiceChipState extends State<TimeChoiceChip> {
  int _selectedChoice = 0;

  final List<String> _choices = [
    '09:00',
    '10:00',
    '11:00',
    '12:00',
    '13:00',
    '14:00',
    '15:00',
    '16:00',
    '17:00',
    '18:00',
    '19:00',
    '20:00',
    
  ];

  @override
  Widget build(BuildContext context) {
    return  Wrap(
        spacing: 10.0,
        
        children: List<Widget>.generate(
         12,
          (int index) {
            return Padding(
              
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: ChoiceChip(
                labelPadding:const EdgeInsets.symmetric(horizontal: 4),
                label: Text(
                  _choices[index],
                  style: TextStyle(
                    color: _selectedChoice == index ? Colors.white : Colors.black,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                   ),
                selected: _selectedChoice == index,
                onSelected: (bool selected) {
                  setState(() {
                    _selectedChoice = selected ? index : 0;
                  });
                },
                backgroundColor: Colors.grey[300],
                showCheckmark: false,
                selectedColor: AppColors.appbackgroundColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  side: BorderSide(
                    color: _selectedChoice == index ? AppColors.appbackgroundColor : Colors.grey,
                    width: 2.0,
                  ),
                ),
                padding:const  EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
              ),
            );
          },
        ).toList(),
      
);
}
}
