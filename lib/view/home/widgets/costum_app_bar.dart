import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../utils/colors.dart';
import '../../widget/text.dart';

class CostumAppBar extends StatelessWidget {
  const CostumAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const FaIcon(
            FontAwesomeIcons.solidPaperPlane,
            color: xred,
            size: 16,
          ),
          Column(
            children: const [
              TextTitle(
                  title: "Bangalore Railway Station Back..",
                  ls: 0,
                  fontwght: FontWeight.bold,
                  fontsz: 17),
              TextTitle(
                  title: "Bangalore Railway Station Back Gate M.G Railway C...",
                  ls: 0,
                  fontwght: FontWeight.normal,
                  color: xGrey,
                  fontsz: 10),
            ],
          ),
          const SizedBox(
            width: 15,
            height: 15,
            child: ImageIcon(
              AssetImage("assets/image/downarrow.png"),
            ),
          ),
          const CircleAvatar(
            radius: 17,
            backgroundColor: xBlack87,
            child: Icon(
              Icons.person_3,
              color: xWhite,
              size: 18,
            ),
          )
        ],
      ),
    );
  }
}
