import 'package:flutter/material.dart';
import 'package:swiggy_dash/utils/colors.dart';
import 'package:swiggy_dash/view/home/widgets/ads_offer.dart';
import 'package:swiggy_dash/view/home/widgets/categ.dart';
import 'package:swiggy_dash/view/home/widgets/costum_app_bar.dart';
import 'package:swiggy_dash/view/home/widgets/discover_swiggy.dart';
import 'package:swiggy_dash/view/home/widgets/dummy_search.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: const [
              CostumAppBar(),
              DummySearch(),
              Categ(),
              AdsandOffer(),
              sizedBox,
              DiscoverSwiggy()
            ],
          ),
        ),
      ),
    );
  }
}

class Food extends StatelessWidget {
  const Food({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class InstaMart extends StatelessWidget {
  const InstaMart({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class DineOut extends StatelessWidget {
  const DineOut({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class Genie extends StatelessWidget {
  const Genie({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
