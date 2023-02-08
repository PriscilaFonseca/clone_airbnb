import 'package:clone_airbnb/screen/profile/profile.dart';
import 'package:clone_airbnb/screen/explore/explore.dart';
import 'package:clone_airbnb/screen/wishlist/wishlist.dart';
import 'package:clone_airbnb/screen/inbox/inbox.dart';
import 'package:clone_airbnb/screen/trips/trips.dart';
import 'package:flutter/material.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({super.key});

  @override
  State<BottomNavigationBarWidget> createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  int _selectIndex = 0;

  final List<Widget> _screensBottomNavigation = const [
    ExploreScreenWidget(),
    WishListScreenWidget(),
    TripsScreenWidget(),
    InboxScreenWidget(),
    ProfileScreenWidget(),
  ];

  void _toggleIndex(int index) {
    setState(
      () {
        _selectIndex = index;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _screensBottomNavigation[_selectIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color(0xFFEEEEEE),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: BottomNavigationBar(
            backgroundColor: Colors.white,
            onTap: _toggleIndex,
            currentIndex: _selectIndex,
            selectedItemColor: const Color(0xFFF25764),
            unselectedItemColor: const Color(0xFF808080),
            showUnselectedLabels: true,
            type: BottomNavigationBarType.fixed,
            elevation: 0,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Explore',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border),
                label: 'Wishlists',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.travel_explore_outlined),
                label: 'Trips',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.messenger_outline_outlined),
                label: 'Inbox',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_outline),
                label: 'Profile',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
