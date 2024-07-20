import 'package:cosmos/cosmos.dart';
import 'package:flutter/material.dart';

Future<void> showCustomAlert(
  BuildContext context,
  Widget child,
) async {
  showDialog(
      context: context,
      builder: (context) {
        return Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            alignment: Alignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Container(
                  width: width(context),
                  height: height(context),
                  color: Colors.black.withOpacity(0),
                ),
              ),
              child,
            ],
          ),
        );
      });
}
