import 'package:credit_card_scanner/credit_card_scanner.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swipe_button/flutter_swipe_button.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class CustomswipeButton extends StatelessWidget {
  const CustomswipeButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24.0, right: 24, top: 40),
      child: SwipeButton(
        activeThumbColor: Colors.white,
        thumb: Icon(MdiIcons.arrowRight, color: const Color(0xff0F4B83)),
        thumbPadding: const EdgeInsets.all(10),
        borderRadius: BorderRadius.circular(10),
        activeTrackColor: const Color(0xffE02027),
        height: 70,
        child: const Text(
          "Swipe to scan",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
        onSwipe: () async {
          // var cardDetails = await CardScanner.scanCard(
          //   scanOptions: const CardScanOptions(
          //     scanCardHolderName: true,
          //     scanExpiryDate: true,
          //   ),
          // );

          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text("Swipped"),
              backgroundColor: Colors.green,
            ),
          );
        },
      ),
    );
  }
}
