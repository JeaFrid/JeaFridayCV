import 'dart:math';

import 'package:cosmos/cosmos.dart';
import 'package:flutter/material.dart';
import 'package:jeafriday/contant/value.dart';
import 'package:jeafriday/interface/beceri_panel.dart';
import 'package:jeafriday/interface/name_bar.dart';
import 'package:jeafriday/interface/top_btns.dart';
import 'package:jeafriday/theme/colors.dart';
import 'package:jeafriday/widget/ilerileme_durmum.dart';
import 'package:jeafriday/widget/text_bicimleri.dart';

class HomePagePc extends StatelessWidget {
  const HomePagePc({super.key});

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
                        const TopBarPhotoAndBtns(),
                        const NameBar(),
                        const SizedBox(height: 60),
                        ekBeceriler(),
                        const SizedBox(height: 30),
                        SizedBox(
                          width: 570,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Title1(
                                text: "YAZDIĞI KİTAPLAR",
                              ),
                              Row(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      "assets/ybey.jpg",
                                      width: 200,
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
                        const SizedBox(height: 60),
                        const SizedBox(height: 20),
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

  SizedBox ekBeceriler() {
    return const SizedBox(
      width: 720,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BeceriPanel(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Title1(
                text: "PROGRAMLAMA İLERMESİ",
              ),
              SizedBox(height: 10),
              IlerlemeDurumum(
                text: "Flutter & Dart",
                value: 100,
              ),
              IlerlemeDurumum(
                text: "Java",
                value: 50,
              ),
              IlerlemeDurumum(
                text: "Python",
                value: 70,
              ),
              SizedBox(height: 10),
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
          