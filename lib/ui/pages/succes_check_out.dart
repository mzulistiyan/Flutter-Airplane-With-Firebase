import 'package:airplane/ui/pages/widget/custom_button.dart';
import 'package:flutter/material.dart';
import '../../../shared/theme.dart';

class SuccesCheckoutPage extends StatelessWidget {
  const SuccesCheckoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300,
              height: 150,
              margin: EdgeInsets.only(bottom: 80),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/image_success.png'),
                ),
              ),
            ),
            Text(
              'Well Booked 😍',
              style: blackTextStyle.copyWith(
                fontSize: 32,
                fontWeight: semiBold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Are you ready to explore the new \nworld of experiences?',
              textAlign: TextAlign.center,
              style: greyTextStyle.copyWith(fontSize: 16, fontWeight: light),
            ),
            CustomButton(
              tittle: 'My Bookings',
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/main-page', (route) => false);
              },
              margin: EdgeInsets.only(top: 50),
              width: 220,
            ),
          ],
        ),
      ),
    );
  }
}
