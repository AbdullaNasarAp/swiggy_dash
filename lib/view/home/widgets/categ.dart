import 'package:flutter/material.dart';
import '../../../utils/colors.dart';
import '../../widget/text.dart';
import 'const.dart';

class Categ extends StatelessWidget {
  const Categ({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ...List.generate(
            4,
            (index) => Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 4.7,
                        height: 87,
                        decoration: BoxDecoration(
                            color: xGrey.withOpacity(0.4),
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Image.asset(
                              imageList[index],
                              width: 85,
                              height: 80,
                              fit: BoxFit.cover,
                            ),
                          ],
                        ),
                      ),
                      sizedBox,
                      TextTitle(
                          title: nameList[index],
                          ls: 0,
                          fontwght: FontWeight.bold,
                          fontsz: 14)
                    ],
                  ),
                ))
      ],
    );
  }
}
