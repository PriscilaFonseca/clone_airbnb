import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

// ignore: must_be_immutable
class PlacesDetailsWidget extends StatefulWidget {
  final String title;
  final double price;
  final double evaluation;
  final double kilometers;
  final int nights;
  final DateTime dateCheckIn;
  final DateTime dateCheckOut;
  bool isFavorite;
  final List<String> images;
  PlacesDetailsWidget({
    super.key,
    required this.title,
    required this.price,
    required this.evaluation,
    required this.kilometers,
    required this.nights,
    required this.dateCheckIn,
    required this.dateCheckOut,
    required this.isFavorite,
    required this.images,
  });

  @override
  State<PlacesDetailsWidget> createState() => _PlacesDetailsWidgetState();
}

int _currentIndex = 0;
final CarouselController _controller = CarouselController();

class _PlacesDetailsWidgetState extends State<PlacesDetailsWidget> {
  late List<Widget> _listImages;

  @override
  void initState() {
    _listImages = widget.images
        .map(
          (image) => ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
        )
        .toList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      onTap: () {},
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              CarouselSlider(
                items: _listImages,
                carouselController: _controller,
                options: CarouselOptions(
                  viewportFraction: 0.9,
                  aspectRatio: 2.0,
                  height: 300,
                  enlargeCenterPage: true,
                  enableInfiniteScroll: false,
                  onPageChanged: (index, reason) {
                    setState(
                      () {
                        _currentIndex = index;
                      },
                    );
                  },
                ),
              ),
              Positioned(
                bottom: 5,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: _listImages.asMap().entries.map(
                    (entry) {
                      return GestureDetector(
                        onTap: () => _controller.animateToPage(entry.key),
                        child: Container(
                          width: _currentIndex == entry.key ? 8 : 6,
                          height: _currentIndex == entry.key ? 8 : 6,
                          margin: const EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 6.0),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color:
                                (Theme.of(context).brightness == Brightness.dark
                                        ? Colors.grey
                                        : Colors.white)
                                    .withOpacity(
                                        _currentIndex == entry.key ? 0.9 : 0.6),
                          ),
                        ),
                      );
                    },
                  ).toList(),
                ),
              ),
              Positioned(
                top: 8,
                right: 26,
                child: IconButton(
                  onPressed: () {
                    setState(
                      () {
                        widget.isFavorite = !widget.isFavorite;
                      },
                    );
                  },
                  icon: widget.isFavorite
                      ? const Icon(
                          Icons.favorite,
                          size: 30,
                          color: Color(0xFFF25764),
                        )
                      : const Icon(
                          Icons.favorite_border,
                          color: Colors.white,
                          size: 30,
                        ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 8.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 6.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        widget.title,
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                      const Spacer(),
                      const Icon(
                        Icons.star,
                        size: 16,
                      ),
                      const SizedBox(
                        width: 4.0,
                      ),
                      Text(
                        '${widget.evaluation}',
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Text(
                      '${widget.kilometers.round()} kilometers away',
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(
                          0xFF808080,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 4.0,
                ),
                Row(
                  children: [
                    Text(
                      '${widget.nights.round()} nights • ${DateFormat.MMMM().format(widget.dateCheckOut)} ${int.parse('${widget.dateCheckOut.day}')} - ${int.parse('${widget.dateCheckIn.day}')}',
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(
                          0xFF808080,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8.0,
                ),
                Container(
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(width: 0.6),
                    ),
                  ),
                  child: RichText(
                    text: TextSpan(
                      style: DefaultTextStyle.of(context).style.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                      children: [
                        TextSpan(
                          text: '\$${widget.price} ',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const TextSpan(
                          text: 'total before taxes',
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
