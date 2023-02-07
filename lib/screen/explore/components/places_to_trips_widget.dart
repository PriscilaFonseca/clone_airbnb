import 'package:clone_airbnb/screen/explore/components/places_details_widget.dart';
import 'package:flutter/material.dart';

class PlacesToTripsWidget extends StatefulWidget {
  const PlacesToTripsWidget({super.key});

  @override
  State<PlacesToTripsWidget> createState() => _PlacesToTripsWidgetState();
}

class _PlacesToTripsWidgetState extends State<PlacesToTripsWidget> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.5,
      child: ListView.builder(
        padding: const EdgeInsets.only(
          top: 20.0,
        ),
        shrinkWrap: true,
        itemCount: _listPlaces.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(
              bottom: 16.0,
            ),
            child: PlacesDetailsWidget(
              images: _listPlaces[index].images,
              title: _listPlaces[index].title,
              evaluation: _listPlaces[index].evaluation,
              kilometers: _listPlaces[index].kilometers,
              nights: _listPlaces[index].nights,
              dateCheckIn: _listPlaces[index].dateCheckIn,
              dateCheckOut: _listPlaces[index].dateCheckOut,
              price: _listPlaces[index].price,
            ),
          );
        },
      ),
    );
  }

  final List<Place> _listPlaces = <Place>[
    Place(
      title: 'San Roque de Brava, Costa Rica',
      price: 8.984,
      evaluation: 5.0,
      kilometers: 404,
      nights: 5,
      dateCheckIn: DateTime(2023, 05, 12),
      dateCheckOut: DateTime(2023, 05, 17),
      images: [
        'assets/images/image_home_1.jpg',
        'assets/images/image_home_2.jpg',
        'assets/images/image_home_8.jpg',
        'assets/images/image_home_12.jpg',
      ],
    ),
    Place(
      title: 'Austin, Texas, US',
      price: 21.632,
      evaluation: 3.0,
      kilometers: 404,
      nights: 5,
      dateCheckIn: DateTime(2023, 05, 12),
      dateCheckOut: DateTime(2023, 05, 17),
      images: [
        'assets/images/image_home_4.jpg',
        'assets/images/image_home_9.jpg',
        'assets/images/image_home_14.jpg',
      ],
    ),
    Place(
      title: 'Austin, Texas, US',
      price: 21.633,
      evaluation: 4.5,
      kilometers: 404,
      nights: 5,
      dateCheckIn: DateTime(2023, 05, 12),
      dateCheckOut: DateTime(2023, 05, 17),
      images: [
        'assets/images/image_home_6.jpg',
        'assets/images/image_home_10.jpg',
        'assets/images/image_home_14.jpg',
      ],
    ),
    Place(
      title: 'Austin, Texas, US',
      price: 18.909,
      evaluation: 5.0,
      kilometers: 404,
      nights: 5,
      dateCheckIn: DateTime(2023, 05, 12),
      dateCheckOut: DateTime(2023, 05, 17),
      images: [
        'assets/images/image_home_7.jpg',
        'assets/images/image_home_8.jpg',
        'assets/images/image_home_3.jpg',
      ],
    ),
    Place(
      title: 'Paraty, Brazil',
      price: 21.635,
      evaluation: 5.0,
      kilometers: 404,
      nights: 5,
      dateCheckIn: DateTime(2023, 05, 12),
      dateCheckOut: DateTime(2023, 05, 17),
      images: [
        'assets/images/image_home_5.jpg',
        'assets/images/image_home_8.jpg',
        'assets/images/image_home_11.jpg',
        'assets/images/image_home_10.jpg',
        'assets/images/image_home_12.jpg',
      ],
    ),
  ];
}

class Place {
  final String title;
  final double price;
  final double evaluation;
  final double kilometers;
  final int nights;
  final DateTime dateCheckIn;
  final DateTime dateCheckOut;
  final List<String> images;

  Place({
    required this.title,
    required this.price,
    required this.evaluation,
    required this.kilometers,
    required this.nights,
    required this.dateCheckIn,
    required this.dateCheckOut,
    required this.images,
  });
}
