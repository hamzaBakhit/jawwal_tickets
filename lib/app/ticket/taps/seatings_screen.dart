import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../widgets/adding_row.dart';

class SeatingsScreen extends StatefulWidget {
  const SeatingsScreen({Key? key}) : super(key: key);

  @override
  State<SeatingsScreen> createState() => _SeatingsScreenState();
}

class _SeatingsScreenState extends State<SeatingsScreen> {
  List<String> seatNumber = <String> [
    'الأول',
    'الثاني',
    'الثالث',
    'الرابع'

  ];

  final Color customColor = Colors.blue;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Column(
              children: [
                ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemCount: 4,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {


                      return Card(
                        elevation: 5,
                        shadowColor: Color(0xFF72FFFF),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                          child: Adding_row(Title: 'مقاعد الصف ${seatNumber[index]}  ',),
                        ),
                      );
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
