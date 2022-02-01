import 'package:flutter/material.dart';
import 'package:uber_clone_driver/screens/tab_screens/earning_tab_screen.dart';
import 'package:uber_clone_driver/screens/tab_screens/home_tab_screen.dart';
import 'package:uber_clone_driver/screens/tab_screens/profile_tab_screen.dart';
import 'package:uber_clone_driver/screens/tab_screens/rating_tab_screen.dart';


class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with SingleTickerProviderStateMixin {

  TabController? _tabController;
  int selectedIndex = 0;

  onItemClicked(int index) {
    setState(() {
      selectedIndex = index;
          _tabController!.index = selectedIndex;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _tabController = TabController(length: 4, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: _tabController,
        children: const [
          HomeTabScreen(),
          EarningTabScreen(),
          RatingTabScreen(),
          ProfileTabScreen()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home'
          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.credit_card),
              label: 'Earnings'
          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.star),
              label: 'Rate'
          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile'
          ),
        ],

        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.white54,
        selectedItemColor: Colors.white,
        backgroundColor: Colors.black,
        selectedLabelStyle: const TextStyle(fontSize:14),
        showUnselectedLabels: true,
        currentIndex: selectedIndex,
        onTap: onItemClicked,

      ),
    );
  }
}
