import 'package:flutter/material.dart';

import '../../../utils/colors.dart';
import '../../../utils/hex_color.dart';
import '../../widget/text.dart';
import 'const.dart';

class DiscoverSwiggy extends StatelessWidget {
  const DiscoverSwiggy({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(color: xGrey.withOpacity(0.3)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(
                    width: 30,
                    child: Divider(
                      color: xGrey,
                      thickness: 2,
                    )),
                TextTitle(
                  title: "Discover Swiggy",
                  ls: 0,
                  color: HexColor("00796B"),
                  fontwght: FontWeight.bold,
                  fontsz: 18,
                ),
                const SizedBox(
                    width: 30,
                    child: Divider(
                      color: xGrey,
                      thickness: 2,
                    )),
              ],
            ),
          ),
          ...List.generate(
              3,
              (index) => Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Stack(
                      children: [
                        Container(
                          width: double.infinity,
                          height: 230,
                          decoration: BoxDecoration(
                            color: xWhite,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              dbannerList[index],
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          top: 150,
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width * 0.84,
                                child: RawMaterialButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                  padding: const EdgeInsets.all(15),
                                  fillColor: colorList[index],
                                  onPressed: () {},
                                  child: TextTitle(
                                      title: bottunTextList[index],
                                      color: xWhite,
                                      ls: 0,
                                      fontwght: FontWeight.bold,
                                      fontsz: 16),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextTitle(
                  title: "Live \nit up!",
                  ls: 0,
                  fontfam: "Quattrocento Sans",
                  color: xBlack87.withOpacity(0.6),
                  fontwght: FontWeight.bold,
                  fontsz: 50,
                ),
                TextTitle(
                  title: "Crafted with ❤️ in Bengaluru, India",
                  ls: 0,
                  fontfam: "Quattrocento Sans",
                  color: xBlack87.withOpacity(0.6),
                  fontwght: FontWeight.normal,
                  fontsz: 16,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
