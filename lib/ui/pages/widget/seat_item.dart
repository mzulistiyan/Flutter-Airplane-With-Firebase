import 'package:flutter/material.dart';
import '../../../shared/theme.dart';

class SeatItem extends StatelessWidget {
  //NOTE: 0 = available, 1 = selected, 2 = unavailable

  final int status;

  const SeatItem({
    Key? key,
    required this.status,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    backgroundColor() {
      switch (status) {
        case 0:
          return kavailableColor;
          break;
        case 1:
          return kPrimaryColor;
          break;
        case 2:
          return kUnavailableColor;
          break;
        default:
          return kUnavailableColor;
      }
    }

    borderColor() {
      switch (status) {
        case 0:
          return kPrimaryColor;
          break;
        case 1:
          return kPrimaryColor;
          break;
        case 2:
          return kUnavailableColor;
          break;
        default:
          return kUnavailableColor;
      }
    }

    child() {
      switch (status) {
        case 0:
          return SizedBox();
          break;
        case 1:
          return Center(
            child: Text(
              'YOU',
              style: whiteTextStyle.copyWith(fontWeight: semiBold),
            ),
          );
          break;
        case 2:
          return SizedBox();
          break;
        default:
          return SizedBox();
      }
    }

    return Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        color: backgroundColor(),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: borderColor(),
          width: 2,
        ),
      ),
      child: child(),
    );
  }
}
