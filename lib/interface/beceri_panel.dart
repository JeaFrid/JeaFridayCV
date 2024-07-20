import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jeafriday/theme/colors.dart';
import 'package:jeafriday/widget/text_bicimleri.dart';

class BeceriPanel extends StatelessWidget {
  const BeceriPanel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 600,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "J\ne\na\nF\nr\ni\nd\na\ny",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    color: textColor.withOpacity(0.5),
                    fontSize: 30,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 16),
          width: 4,
          height: 650,
          color: textColor.withOpacity(0.5),
        ),
        const SizedBox(width: 30),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Title1(
              text: "GELİŞTİRİLMİŞ PROJELER",
            ),
            Title2(
              text: "Mobil Uygulamalar",
            ),
            TextElemaniLink(
              text: "• ByBug Console",
              link:
                  "https://play.google.com/store/apps/details?id=console.bybug.net",
            ),
            TextElemaniLink(
              text: "• ByBug Book's",
              link:
                  "https://play.google.com/store/apps/details?id=net.bybug.book",
            ),
            TextElemaniLink(
              text: "• ByBug Academy",
              link:
                  "https://play.google.com/store/apps/details?id=net.bybug.academy",
            ),
            TextElemaniLink(
              text: "• ByBug Policy",
              link:
                  "https://play.google.com/store/apps/details?id=net.bybug.policyapp",
            ),
            Title2(
              text: "Web Uygulamaları",
            ),
            TextElemaniLink(
              text: "• ByBug Web",
              link: "https://bybug.net",
            ),
            TextElemaniLink(
              text: "• ByBug Policy",
              link: "https://policy.bybug.net",
            ),
            TextElemaniLink(
              text: "• ByBug Book's",
              link: "https://books.bybug.net",
            ),
            TextElemaniLink(
              text: "• ByBug Academy",
              link: "https://academy.bybug.net",
            ),
            Title1(
              text: "BECERİLER",
            ),
            Title2(
              text: "Veritabanı Uzmanlığı",
            ),
            TextElemani(
              text: "• Firebase Realtime Database",
            ),
            TextElemani(
              text: "• Firebase Auth",
            ),
            TextElemani(
              text: "• Firebase Storage",
            ),
            TextElemani(
              text: "• SQL, MySQL, SQlite",
            ),
            TextElemani(
              text: "• Xampp ile lokal çalışma, Cpanel ile global çalışma.",
            ),
            Title2(
              text: "Kodlama ve Programlama",
            ),
            TextElemani(
              text: "• Flutter & Dart",
            ),
            TextElemani(
              text: "• Python - Flask + Python",
            ),
            TextElemani(
              text: "• C#",
            ),
            TextElemani(
              text: "• Unity Game Engine",
            ),
            TextElemani(
              text: "• Java",
            ),
            TextElemani(
              text: "• Kotlin",
            ),
            TextElemani(
              text: "• PHP - API Kodlama",
            ),
            TextElemani(
              text: "• HTML - CSS - Javascript",
            ),
            TextElemani(
              text: "• Kodular",
            ),
            TextElemani(
              text: "• AppInventor",
            ),
          ],
        ),
      ],
    );
  }
}
