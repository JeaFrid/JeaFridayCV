import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jeafriday/theme/colors.dart';

InkWell btn1({String? text, IconData? icon, Function()? onTap}) {
  return InkWell(
    focusColor: Colors.transparent,
    hoverColor: textColor.withOpacity(0.1),
    splashColor: textColor.withOpacity(0.2),
    highlightColor: Colors.transparent,
    borderRadius: BorderRadius.circular(5),
    onTap: onTap ?? () {},
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 6),
      child: Row(
        children: [
          Icon(
            icon ?? FontAwesomeIcons.telegram,
            color: textColor.withOpacity(0.7),
            size: 18,
          ),
          const SizedBox(width: 10),
          Text(
            text ?? "",
            style: GoogleFonts.poppins(
              color: textColor.withOpacity(0.7),
              fontSize: 12,
            ),
          ),
        ],
      ),
    ),
  );
}
