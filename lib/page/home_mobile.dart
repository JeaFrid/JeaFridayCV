import 'dart:ui';

import 'package:cosmos/cosmos.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jeafriday/alert/alerts.dart';
import 'package:jeafriday/contant/value.dart';
import 'package:jeafriday/interface/beceri_panel.dart';
import 'package:jeafriday/interface/name_mobile.dart';
import 'package:jeafriday/interface/top_btns_mob.dart';
import 'package:jeafriday/theme/colors.dart';
import 'package:jeafriday/widget/ilerileme_durmum.dart';
import 'package:jeafriday/widget/text_bicimleri.dart';

class HomePageMobile extends StatefulWidget {
  const HomePageMobile({super.key});

  @override
  State<HomePageMobile> createState() => _HomePageMobileState();
}

class _HomePageMobileState extends State<HomePageMobile> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 2),
      () {
        showCustomAlert(
          context,
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: SizedBox(
              width: width(context),
              height: height(context),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.screen_rotation_rounded,
                    size: 80,
                    color: textColor,
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: width(context) * 0.9,
                    child: Text(
                      "Cihazınızı Yan Döndürün!",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        color: textColor,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: width(context) * 0.9,
                    child: Text(
                      "Daha stabil bir tasarım elde etmek için cihazınızı yan döndürün. Şu an cihazınızın genişliği ${width(context)} iken, eğer ekranı yan döndürürseniz ekran genişliğiniz ${height(context)} olacak. Hadi bunu yapalım!",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        color: textColor.withOpacity(0.8),
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      body: ValueListenableBuilder(
        valueListenable: imageVisible,
        builder: (BuildContext context, dynamic value, Widget? child) {
          return Stack(
            children: [
              Visibility(
                visible: value,
                child: CosmosBackgroundImage(
                  image: "assets/bg.jpg",
                  opacity: 0.2,
                  child: SizedBox(
                    width: width(context),
                    height: height(context),
                  ),
                ),
              ),
              SingleChildScrollView(
                child: Stack(
                  children: [
                    Column(
                      children: [
                        const TopBarPhotoAndBtnsMobile(),
                        const NameBarMobile(),
                        const SizedBox(height: 5),
                        ekBeceriler(context),
                        const SizedBox(height: 30),
                        SizedBox(
                          width: 570,
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Title1(
                                  text: "YAZDIĞI KİTAPLAR",
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.asset(
                                        "assets/ybey.jpg",
                                        width: 150,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                    const SizedBox(width: 20),
                                    const Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Title2(
                                            text: "Yeni Bir Evrene Yolculuk",
                                          ),
                                          TextElemani(
                                            text:
                                                "JeaFriday'in yazdığı onlarca kitap içinde yayınladığı ilk kitaptır. Kitap, şu an D&R ve Idefix gibi mağazalarda satıştadır. \n\nKitap Özeti;\nYeni Bir Evrene Yolculuk, Paralel Evrenler Serüveni serisinin ilk kitabı ve en önemli eseridir. Yuris Harrison’ın hayatına bakış attığımız bu kitapta, kuantum evrenler hakkında bilgi ediniyor, birkaç kuantum aracıyla kayda değer bir yolculuğa çıkıyoruz. Yolculuğumuz boyunca paralel evrenlerin ve Yuris Harrison’ın Ayna Evrenler teorisinin bize neler öğretebileceğini anlıyoruz. Bu yolculuk bize Yuris’in başka bir versiyonuyla, deli dâhi milyarder bir karakterin ve 2001 Afganistan Savaşı gazisi bir karakterin nasıl bir araya geldiğini gösterecek. Hazırsanız sizi önce 2024’ün yazına, ardından da 1950’lerin kışına götürecek bir yolculuğa çıkaralım!",
                                          ),
                                          SizedBox(height: 10),
                                          TextElemaniLink(
                                            text: "Kitabı D&R'da İncele",
                                            link:
                                                "https://www.dr.com.tr/kitap/yeni-bir-evrene-yolculuk/edebiyat/roman/bilim-kurgu/urunno=0002098587001",
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 60),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  SizedBox ekBeceriler(BuildContext context) {
    return SizedBox(
      width: width(context) < 800 ? width(context) * 0.9 : 720,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Title1(
            text: "PROGRAMLAMA İLERMESİ",
          ),
          CosmosScroller(
            scrollDirection: Axis.horizontal,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              IlerlemeDurumum(
                text: "Flutter & Dart",
                value: 100,
              ),
              SizedBox(width: 30),
              IlerlemeDurumum(
                text: "Java",
                value: 50,
              ),
              SizedBox(width: 30),
              IlerlemeDurumum(
                text: "Python",
                value: 70,
              ),
              SizedBox(height: 10),
            ],
          ),
          SizedBox(height: 20),
          CosmosScroller(
            scrollDirection: Axis.horizontal,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BeceriPanel(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Title1(
                        text: "EK BECERİLER",
                      ),
                      Title2(
                        text: "Video Editörlüğü",
                      ),
                      TextElemani(
                        text: "• Camtasia",
                      ),
                      TextElemani(
                        text: "• Openshot",
                      ),
                      TextElemani(
                        text: "• Shotcut",
                      ),
                      Title2(
                        text: "Grafik Tasarım",
                      ),
                      TextElemani(
                        text: "• Photoshop",
                      ),
                      TextElemani(
                        text: "• Photoscape X - X Pro",
                      ),
                      TextElemani(
                        text: "• Gimp",
                      ),
                      Title2(
                        text: "Ek Beceriler",
                      ),
                      TextElemani(
                        text: "• Dublaj",
                      ),
                      TextElemani(
                        text: "• Ses Editörlüğü",
                      ),
                      TextElemani(
                        text: "• YouTuber",
                      ),
                      TextElemani(
                        text: "• Google Servisleri - Hizmetleri",
                      ),
                      TextElemani(
                        text: "• Kitap Yazarlığı",
                      ),
                      TextElemani(
                        text: "• Senaryo Yazarlığı",
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}


  // Visibility(
  //             visible: false,
  //             child: Column(
  //               children: [
  //                 Column(
  //                   children: [
  //                     Row(
  //                       children: [
  //                         Padding(
  //                           padding: const EdgeInsets.all(80),
  //                           child: Transform.rotate(
  //                             angle: -20 * (pi / 180),
  //                             child: const CosmosImage(
  //                               "assets/flutter.png",
  //                               width: 80,
  //                               fit: BoxFit.contain,
  //                             ),
  //                           ),
  //                         ),
  //                       ],
  //                     ),
  //                   ],
  //                 ),
  //                 Column(
  //                   children: [
  //                     const SizedBox(height: 130),
  //                     Row(
  //                       children: [
  //                         const SizedBox(width: 60),
  //                         Padding(
  //                           padding: const EdgeInsets.all(80),
  //                           child: Transform.rotate(
  //                             angle: 20 * (pi / 180),
  //                             child: const CosmosImage(
  //                               "assets/kodular.png",
  //                               width: 80,
  //                               fit: BoxFit.contain,
  //                             ),
  //                           ),
  //                         ),
  //                       ],
  //                     ),
  //                   ],
  //                 ),
  //                 Column(
  //                   children: [
  //                     const SizedBox(height: 130),
  //                     Row(
  //                       children: [
  //                         Padding(
  //                           padding: const EdgeInsets.only(top: 40, left: 40),
  //                           child: Transform.rotate(
  //                             angle: 10 * (pi / 180),
  //                             child: const CosmosImage(
  //                               "assets/python.png",
  //                               width: 80,
  //                               fit: BoxFit.contain,
  //                             ),
  //                           ),
  //                         ),
  //                       ],
  //                     ),
  //                   ],
  //                 ),
  //               ],
  //             ),
  //           ),
          