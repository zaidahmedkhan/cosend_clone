import 'package:cosend_clone/view/screens/bottom_nav_bar/widgets/custom_search_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CustomSearchBar(
          hintText: "Performer, Team, Venue or Friend ",
          borderRadius: 10,
        ),
      ),
    );
  }
}
