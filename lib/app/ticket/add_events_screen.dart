import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jawwal_tickets/app/ticket/taps/basic_info_screen.dart';
import 'package:jawwal_tickets/app/ticket/taps/seatings_screen.dart';

import '../../presintation/resources/color_manager.dart';


class AddEventScreen extends StatefulWidget {
  const AddEventScreen({Key? key}) : super(key: key);

  @override
  State<AddEventScreen> createState() => _AddEventScreenState();
}

class _AddEventScreenState extends State<AddEventScreen>   with SingleTickerProviderStateMixin{

  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 2, vsync: this);

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

        title: Text('إضافة فعالية',style: GoogleFonts.cairo(
          color: ColorManager.primary,
        ),),
      ),
body: Column(
  children: [


    TabBar(controller: _tabController,
        labelColor:ColorManager.primary,
        unselectedLabelColor: Colors.grey,
        indicatorColor: ColorManager.primary,


        tabs: [
          Tab(text: 'معلومات أساسية'),
          Tab(text: 'المقاعد'),

        ]),


    Expanded(
      child: TabBarView(
          controller: _tabController,
          children: [
            //    ProductDescritionScreen(product: ),


            BasicInfoScreen(),
            SeatingsScreen(),

          ]),
    )
  ],
),

    );
  }
}
