import 'package:clone_airbnb/screen/search/search.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SizedBox(
          height: 65,
          child: _buildSearchButton(
            context,
            () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (builder) => const SearchScreenWidget(),
                ),
              );
            },
            SizedBox(
              height: 40,
              width: size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 40,
                    width: 30,
                    child: Icon(
                      Icons.search,
                      size: 24,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                    width: size.width * 0.03,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      _buildTitleAndSubtitle(
                        context,
                        'Para Onde?',
                        'Qualquer lugar•Qualquer semana•Hosp...',
                      ),
                    ],
                  ),
                  SizedBox(
                    width: size.width * 0.01,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: 40,
                        width: 40,
                        child: _buildFiltes(context, FontAwesomeIcons.sliders),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSearchButton(
    context,
    Function() onPress,
    Widget child,
  ) {
    return OutlinedButton(
      onPressed: onPress,
      style: ButtonStyle(
        elevation: MaterialStateProperty.resolveWith(
          (states) => 2,
        ),
        backgroundColor:
            MaterialStateProperty.resolveWith((states) => Colors.white),
        side: MaterialStateProperty.resolveWith(
          (states) => const BorderSide(
            color: Color(0xFFEAEAEA),
          ),
        ),
        shape: MaterialStateProperty.resolveWith(
          (states) => RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
      child: child,
    );
  }

  Widget _buildTitleAndSubtitle(
    context,
    String title,
    String subtitle,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            wordSpacing: 1.5,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        Text(
          subtitle,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w300,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }

  Widget _buildFiltes(
    context,
    IconData icon,
  ) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xFFD0D0D0),
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(30),
        ),
      ),
      child: IconButton(
        onPressed: () {},
        icon: Icon(icon),
        iconSize: 16,
        color: Colors.black,
      ),
    );
  }
}
