import 'package:clone_airbnb/screen/explore/components/list_icons_widgets.dart';
import 'package:clone_airbnb/components/search_widget.dart';
import 'package:clone_airbnb/screen/explore/components/show_total_price.dart';
import 'package:flutter/material.dart';

class ExploreScreenWidget extends StatelessWidget {
  const ExploreScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
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
            ShowTotalPriceWidget(),
          ],
        ),
      ),
    );
  }
}
