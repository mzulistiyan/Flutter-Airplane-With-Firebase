import 'package:airplane/models/transaction_model.dart';
import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/pages/widget/booking_detail_item.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionCard extends StatelessWidget {
  final TransactionModel transaction;

  const TransactionCard(this.transaction, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: EdgeInsets.only(
          top: 50,
        ),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: kWhiteColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: defaultMargin),
              child: Text(
                'Your Transactions',
                style:
                    blackTextStyle.copyWith(fontSize: 24, fontWeight: semiBold),
              ),
            ),

            //NOTE DESTIONATIOn
            Row(
              children: [
                Container(
                  width: 70,
                  height: 70,
                  margin: EdgeInsets.only(right: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        transaction.destination.imageUrl,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        transaction.destination.name,
                        style: blackTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: medium,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        transaction.destination.city,
                        style: greyTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: light,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 20,
                      width: 20,
                      margin: EdgeInsets.only(right: 2),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/icon_star.png'),
                        ),
                      ),
                    ),
                    Text(
                      transaction.destination.rating.toString(),
                      style: blackTextStyle.copyWith(fontWeight: medium),
                    )
                  ],
                ),
              ],
            ),
            //NOTE BOOKING DETAILS
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Text(
                'Booking Details',
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold,
                ),
              ),
            ),
            //NOTE BOOKING DETAILS ITEMS
            BookingDetailsitem(
              title: 'Traveler',
              valueColor: kBlackColor,
              valueText: '${transaction.amountOfTraveler} Person',
            ),
            BookingDetailsitem(
              title: 'Seat',
              valueColor: kBlackColor,
              valueText: transaction.selectedSeats,
            ),
            BookingDetailsitem(
              title: 'Insurance',
              valueColor: transaction.insurance ? kGreenColor : kRedColor,
              valueText: transaction.insurance ? 'YES' : 'NO',
            ),
            BookingDetailsitem(
              title: 'Refundable',
              valueColor: transaction.refundable ? kGreenColor : kRedColor,
              valueText: transaction.refundable ? 'YES' : 'NO',
            ),
            BookingDetailsitem(
              title: 'VAT',
              valueColor: kBlackColor,
              valueText: '${(transaction.vat * 100).toStringAsFixed(0)}%',
            ),
            BookingDetailsitem(
              title: 'Price',
              valueColor: kBlackColor,
              valueText: NumberFormat.currency(
                locale: 'id',
                symbol: 'IDR ',
                decimalDigits: 0,
              ).format(transaction.price),
            ),
            BookingDetailsitem(
              title: 'Grand Total',
              valueColor: kBlackColor,
              valueText: NumberFormat.currency(
                locale: 'id',
                symbol: 'IDR ',
                decimalDigits: 0,
              ).format(transaction.grandTotal),
            )
          ],
        ),
      ),
    );
  }
}
