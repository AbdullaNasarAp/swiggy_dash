// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../utils/colors.dart';
import '../../widget/text.dart';

class DummySearch extends StatelessWidget {
  const DummySearch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: MediaQuery.of(context).size.width * 1,
        height: 50,
        decoration: BoxDecoration(
            color: xGrey.withOpacity(0.3),
            borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextTitle(
                  title: "Search for dishes,restaurants & gr...",
                  ls: 0,
                  fontwght: FontWeight.normal,
                  color: xBlack87.withOpacity(0.5),
                  fontsz: 16),
              FaIcon(
                FontAwesomeIcons.search,
                size: 17,
                color: xBlack87.withOpacity(0.6),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: VerticalDivider(
                  thickness: 2,
                  color: xBlack87.withOpacity(0.5),
                ),
              ),
              const FaIcon(
                FontAwesomeIcons.microphone,
                color: xred,
              )
            ],
          ),
        ),
      ),
    );
  }
}
