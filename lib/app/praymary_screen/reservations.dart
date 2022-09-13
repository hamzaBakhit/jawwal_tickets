import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jawwal_tickets/presintation/resources/color_manager.dart';

import '../screens_tabs_reservation/activate_screen_tab.dart';
import '../screens_tabs_reservation/cancel_screen_tab.dart';
import '../screens_tabs_reservation/complete_screen_tab.dart';

class ReservationScreen extends StatefulWidget {
  const ReservationScreen({Key? key}) : super(key: key);

  @override
  State<ReservationScreen> createState() => _ReservationScreenState();
}

class _ReservationScreenState extends State<ReservationScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // يرث   ال this تعود من اشي اسمه mixin  لازم اعرفه فوق مع الاكلاس الاساسي باستخدام with
    // الرقم هوا عدد الصفحات
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('حجوزاتي '),
        leading: Icon(color: Colors.transparent,Icons.arrow_forward_ios),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black45,
                    offset: Offset(0, 1),
                    blurRadius: 0.1,
                  ),
                ]),
            child: TabBar(
              controller: _tabController,
              labelColor: Colors.white,
              unselectedLabelColor: Colors.grey,
              labelPadding: const EdgeInsets.symmetric(vertical: 10),
              padding: EdgeInsets.only(left: 10, right: 10),
              indicator:  BoxDecoration(
                  color: ColorManager.primary,
                  borderRadius: BorderRadius.all(Radius.circular(35))),
              tabs: [
                Text(
                  'نشطة ',
                  style: GoogleFonts.cairo(),
                ),
                Text(
                  'مكتملة',
                  style: GoogleFonts.cairo(),
                ),
                Text(
                  'ملغاه',
                  style: GoogleFonts.cairo(),
                ),
              ],
            ),
          ),
          ConstrainedBox(
            constraints: BoxConstraints(
                maxHeight: MediaQuery.of(context).size.height - 220),
            child: TabBarView(
              controller: _tabController,
              children: [
                ActiveScreen(),
                CompleteScreen(),
                CancelScreen(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
