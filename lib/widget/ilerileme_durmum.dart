import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jeafriday/theme/colors.dart';

class IlerlemeDurumum extends StatefulWidget {
  final String text;
  final int value;
  const IlerlemeDurumum({
    super.key,
    required this.text,
    required this.value,
  });

  @override
  State<IlerlemeDurumum> createState() => _IlerlemeDurumumState();
}

class _IlerlemeDurumumState extends State<IlerlemeDurumum> {
  double currentValue = 0;
  @override
  void initState() {
    super.initState();
    if (widget.value == 100) {
      currentValue = 1;
    } else {
      String locValue = "0.${widget.value}";
      currentValue = double.parse(locValue);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 100,
          height: 100,
          child: Stack(
            alignment: Alignment.center,
            children: [
              SizedBox(
                width: 80,
                height: 80,
                child: CircularProgressIndicator(
                  backgroundColor: defaultColor.withOpacity(0.3),
                  color: defaultColor,
                  strokeWidth: 10,
                  value: currentValue,
                ),
              ),
              Text(
                "%${widget.value}",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  color: textColor.withOpacity(0.9),
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 15),
        Text(
          widget.text,
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
            color: textColor.withOpacity(0.9),
            fontSize: 20,
          ),
        ),
      ],
    );
  }
}
