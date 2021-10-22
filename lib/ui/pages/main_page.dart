import 'package:airplane/ui/pages/get_started_page.dart';
import 'package:airplane/ui/pages/home_page.dart';
import 'package:airplane/ui/pages/widget/costum_bottom_nav.dart';
import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildContent() {
      return HomePage();
    }

    Widget CustomButtonNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 60,
          margin: EdgeInsets.only(
              bottom: 30, left: defaultMargin, right: defaultMargin, top: 30),
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(defaultRadius),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomBottomNav(
                imageUrl: 'assets/icon_home.png',
                isSelected: true,
              ),
              CustomBottomNav(
                imageUrl: 'assets/icon_booking.png',
              ),
              CustomBottomNav(
                imageUrl: 'assets/icon_card.png',
              ),
              CustomBottomNav(
                imageUrl: 'assets/icon_settings.png',
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        children: [
          buildContent(),
          CustomButtonNavigation(),
        ],
      ),
    );
  }
}
