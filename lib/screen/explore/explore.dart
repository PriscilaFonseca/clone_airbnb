import 'package:clone_airbnb/components/floating_action_button_widget.dart';
import 'package:clone_airbnb/screen/explore/components/list_categories_widget.dart';
import 'package:clone_airbnb/components/search_widget.dart';
import 'package:clone_airbnb/screen/explore/components/places_to_trips_widget.dart';
import 'package:clone_airbnb/screen/explore/components/display_total_price_widget.dart';
import 'package:flutter/material.dart';

class ExploreScreenWidget extends StatelessWidget {
  const ExploreScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 60.0),
        child: Column(
          children: const [
            SearchWidget(),
            SizedBox(
              height: 2,
            ),
            ListIconsCategoriesWidget(),
            DisplayTotalPriceWidget(),
            PlacesToTripsWidget(),
          ],
        ),
      ),
      floatingActionButton: const FloatingActionButtonWidget(),
    );
  }
}
