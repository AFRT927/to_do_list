import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:intl/intl.dart';

enum MonthsNames {
  Jen,
  Feb,
  Mar,
  Apr,
  May,
  Jun,
  Jul,
  Aug,
  Sep,
  Oct,
  Nov,
  Dec
}

class DtPicker extends StatefulWidget {
  const DtPicker({super.key});

  @override
  State<DtPicker> createState() => _DtPickerState();
}

class _DtPickerState extends State<DtPicker> {


  Map<int, MonthsNames>  MonthsMap = {
    1: MonthsNames.Jen,
    2: MonthsNames.Feb,
    3: MonthsNames.Mar,
    4: MonthsNames.Apr,
    5: MonthsNames.May,
    6: MonthsNames.Jun,
    7: MonthsNames.Jul,
    8: MonthsNames.Aug,
    9: MonthsNames.Sep,
    10: MonthsNames.Oct,
    11: MonthsNames.Nov,
    12: MonthsNames.Dec
  };
  
  DateTime? dtSelected = DateTime.now();

  Future _selectetTime(BuildContext context) async {

          final picked = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime.now(),
              lastDate: DateTime(DateTime.now().year +1)
            );

            if(picked != null && picked != dtSelected){
              setState((){
               dtSelected = picked;
               print('la fecha seleccionada es: $dtSelected');
            });
            }
  }

  

  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(      
           onTap: () async {
             _selectetTime(context);
            }             
           ,
           child: DottedBorder(
             color: Colors.indigo.shade200,
             strokeWidth: 1,
             dashPattern: [7, 7],  
             borderType: BorderType.RRect,   
             padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),        
             child: Container(
              height: 20,
              width: 120,          
               child: Center(
                 child: Text(
                  '${dtSelected?.hour}:${dtSelected?.second}, ${dtSelected?.day}  ${MonthsMap[dtSelected?.month].toString().substring(12)}',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 16,
                  ),
                 ),
               ),
             ),
           ),
    );
  }
}