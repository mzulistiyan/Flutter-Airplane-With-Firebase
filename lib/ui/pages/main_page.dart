import 'package:airplane/cubit/page_cubit.dart';
import 'package:airplane/ui/pages/get_started_page.dart';
import 'package:airplane/ui/pages/home_page.dart';
import 'package:airplane/ui/pages/setting_page.dart';
import 'package:airplane/ui/pages/transaction_page.dart';
import 'package:airplane/ui/pages/wallet_page.dart';
import 'package:airplane/ui/pages/widget/costum_bottom_nav.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../shared/theme.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildContent(int currentIndex) {
      switch (currentIndex) {
        case 0:
          return HomePage();
          break;
        case 1:
          return TransactionPage();
          break;
        case 2:
          return WalletPage();
          break;
        case 3:
          return SettingPage();
          break;
        default:
          return HomePage();
      }
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
                index: 0,
                imageUrl: 'assets/icon_home.png',
              ),
              CustomBottomNav(
                index: 1,
                imageUrl: 'assets/icon_booking.png',
              ),
              CustomBottomNav(
                index: 2,
                imageUrl: 'assets/icon_card.png',
              ),
              CustomBottomNav(
                index: 3,
                imageUrl: 'assets/icon_settings.png',
              ),
            ],
          ),
        ),
      );
    }

    return BlocBuilder<PageCubit, int>(
      builder: (context, currentIndex) {
        return Scaffold(
          backgroundColor: kBackgroundColor,
          body: Stack(
            children: [
              buildContent(currentIndex),
              CustomButtonNavigation(),
            ],
          ),
        );
      },
    );
  }
}
