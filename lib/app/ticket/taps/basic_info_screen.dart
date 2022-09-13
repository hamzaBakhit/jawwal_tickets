import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jawwal_tickets/presintation/resources/color_manager.dart';

import '../../../widgets/adding_row.dart';

class BasicInfoScreen extends StatefulWidget {
  const BasicInfoScreen({Key? key}) : super(key: key);

  @override
  State<BasicInfoScreen> createState() => _BasicInfoScreenState();
}

class _BasicInfoScreenState extends State<BasicInfoScreen> {
  DateTime dateStart = DateTime(2022, 9, 12);
  DateTime dateEnd = DateTime(2022, 9, 12);

   Color customColor = ColorManager.primary;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'اسم الفعالية ',
                style: GoogleFonts.cairo(color: Color(0xff2cbb05)),
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'أضف اسم الفعالية',

                ),
              ),
              Text(
                'الراعي الرسمي ',
                style: GoogleFonts.cairo(color: customColor),
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'اضف اسم الراعي الرسمي',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                elevation: 3,
                shadowColor: customColor,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Adding_row(
                    Title: 'سعر التذكرة العادية',
                  ),
                ),
              ),

              Card(
                elevation: 3,
                shadowColor: customColor,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Adding_row(
                    Title: 'سعر التذكرة الخاصة',
                  ),
                ),
              ),

              //  '${date.year}/${date.month}/${date.day}'

              Card(
                elevation: 3,
                shadowColor: customColor,
                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      TextButton(
                          onPressed: () async {
                            DateTime? newDate = await showDatePicker(
                                context: context,
                                initialDate: dateStart,
                                firstDate: DateTime(2022),
                                lastDate: DateTime(2023));
                            if (newDate == null) return;
                            setState(() {
                              dateStart = newDate;
                            });
                          },
                          child: Text('تاريخ البدء')),
                      IconButton(onPressed: ()async {
                        DateTime? newDate = await showDatePicker(
                            context: context,
                            initialDate: dateStart,
                            firstDate: DateTime(2022),
                            lastDate: DateTime(2023));
                        if (newDate == null) return;
                        setState(() {
                          dateStart = newDate;
                        });
                      }, icon: Icon(Icons.edit)),
                      Spacer(),
                      Text(
                          '${dateStart.year}/${dateStart.month}/${dateStart.day}')
                    ],
                  ),
                ),
              ),

              Card(
                elevation: 3,
                shadowColor: customColor,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      TextButton(
                          onPressed: () async {
                            DateTime? newDate = await showDatePicker(
                                context: context,
                                initialDate: dateEnd,
                                firstDate: DateTime(2022),
                                lastDate: DateTime(2023));
                            if (newDate == null) return;
                            setState(() {
                              dateEnd = newDate;
                            });
                          },
                          child: Text('تاريخ الانتهاء',)),
                      IconButton(onPressed: ()async {
                        DateTime? newDate = await showDatePicker(
                            context: context,
                            initialDate: dateEnd,
                            firstDate: DateTime(2022),
                            lastDate: DateTime(2023));
                        if (newDate == null) return;
                        setState(() {
                          dateEnd = newDate;
                        });
                      }, icon: Icon(Icons.edit)),

                      Spacer(),
                      Text('${dateEnd.year}/${dateEnd.month}/${dateEnd.day}')
                    ],
                  ),
                ),
              ),

              Text(
                'التحذيرات ',
                style: GoogleFonts.cairo(color: customColor),
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'اكتب التحذيرات',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
