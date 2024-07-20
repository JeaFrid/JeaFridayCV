import 'package:cosmos/cosmos.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jeafriday/contant/value.dart';
import 'package:jeafriday/theme/colors.dart';
import 'package:jeafriday/widget/btn.dart';

class TopBarPhotoAndBtns extends StatelessWidget {
  const TopBarPhotoAndBtns({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: Stack(
        children: [
          Center(
            child: SizedBox(
              width: width(context) < 800 ? width(context) * 0.9 : 720,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          InkWell(
                            onTap: () {
                              openUrl("mailto:jeafriday@gmail.com");
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.mail,
                                    color: textColor.withOpacity(0.7),
                                    size: 20,
                                  ),
                                  const SizedBox(width: 10),
                                  Text(
                                    "jeafriday@gmail.com",
                                    style: GoogleFonts.poppins(
                                      color: textColor,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: width(context) < 800 ? width(context) * 0.9 : 720,
                            height: 2,
                            color: textColor.withOpacity(0.5),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4),
                            child: Row(
                              children: [
                                btn1(
                                  icon: FontAwesomeIcons.telegram,
                                  text: "@JeaFrid",
                                  onTap: () {
                                    openUrl("https://t.me/JeaFrid");
                                  },
                                ),
                                Container(
                                  width: 2,
                                  height: 20,
                                  color: textColor.withOpacity(0.5),
                                ),
                                btn1(
                                  icon: FontAwesomeIcons.discord,
                                  text: "@jeafriday",
                                  onTap: () {
                                    Get.snackbar(
                                      "Discord'a Gidelim!",
                                      "Bana Discord'dan ulaşmak için kullanıcı adımı kullanın.",
                                      colorText: textColor,
                                      backgroundColor: cColor.withOpacity(0.5),
                                      snackPosition: SnackPosition.BOTTOM,
                                    );
                                  },
                                ),
                                Container(
                                  width: 2,
                                  height: 20,
                                  color: textColor.withOpacity(0.5),
                                ),
                                btn1(
                                  icon: FontAwesomeIcons.github,
                                  text: "@JeaFrid",
                                  onTap: () {
                                    openUrl("https://github.com/JeaFrid");
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    width: width(context) < 800 ? width(context) * 0.9 : 720,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: const CosmosImage(
                            "assets/me.jpg",
                            width: 200,
                            height: 200,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ValueListenableBuilder(
                valueListenable: imageVisible,
                builder: (BuildContext context, dynamic value, Widget? child) {
                  return InkWell(
                    onTap: () {
                      imageVisible.value = !imageVisible.value;
                    },
                    borderRadius: BorderRadius.circular(5),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        value == true ? Icons.visibility : Icons.visibility_off,
                        color: textColor,
                      ),
                    ),
                  );
                },
              ),
              InkWell(
                onTap: () {
                  openUrl(
                      "https://raw.githubusercontent.com/JeaFrid/JeaFrid/main/photos/cv.png");
                },
                borderRadius: BorderRadius.circular(5),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.file_download_outlined,
                    color: textColor,
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  openUrl(
                      "https://raw.githubusercontent.com/JeaFrid/JeaFrid/main/photos/cv_pdf.pdf");
                },
                borderRadius: BorderRadius.circular(5),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.picture_as_pdf,
                    color: textColor,
                  ),
                ),
              ),
              const SizedBox(width: 20),
            ],
          ),
        ],
      ),
    );
  }
}
