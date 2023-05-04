import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'const.dart';

class AdsandOffer extends StatelessWidget {
  const AdsandOffer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: 4,
      itemBuilder: (context, index, realIndex) {
        return ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              bannerList[index],
              fit: BoxFit.fitWidth,
              width: MediaQuery.of(context).size.width,
            ));
      },
      options: CarouselOptions(
        height: MediaQuery.of(context).size.height / 4,
        viewportFraction: 0.7,
        autoPlay: true,
        autoPlayCurve: Curves.easeInQuint,
        enlargeCenterPage: true,
      ),
    );
  }
}
