import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jawwal_tickets/presintation/resources/color_manager.dart';
import '../../widgets/second_home_widget.dart';
import '../screen/home_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>
    with SingleTickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    _controller = TabController(vsync: this, length: 4);
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      appBar: AppBar(
        leading: Icon(color: Colors.transparent, Icons.arrow_forward_ios),
        elevation: 0,
        // backgroundColor: Color(0xffF2F2F2),
        title: Text(
          'اهلا وسهلا بك',
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.normal,
              color: Color(0xFF120007)),
        ),
        centerTitle: true,

        bottom: TabBar(
          isScrollable: true,
          labelColor: ColorManager.primary,
          unselectedLabelColor: Color(0xFF8B8B8B),
          indicatorColor: Colors.transparent,
          controller: _controller,
          tabs: const [
            Tab(
              icon: Text(
                'العروض',
              ),
            ),
            Tab(
              text: 'فعاليات الثقافة',
            ),
            Tab(
              text: 'فعاليات تراثية',
            ),
            Tab(
              text: 'فعاليات تراثية',
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: [
          HomeScreen(),
          SecondHomeWidget(),
          HomeScreen(),
          HomeScreen(),
        ],
      ),
    );
  }
}
