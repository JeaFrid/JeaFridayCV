import 'package:cosmos/cosmos.dart';
import 'package:flutter/material.dart';
import 'package:jeafriday/theme/colors.dart';

class NameBar extends StatelessWidget {
  const NameBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: width(context) < 800 ? width(context) * 0.9 : 720,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Batuhan Türk",
                  style: TextStyle(
                    color: defaultColor,
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                Text(
                  "JeaFriday (Jake & Friday isimlerinden türetildi.)\n2019'dan beri kullanılmakta olan takma isimdir.",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: textColor.withOpacity(0.4),
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: width(context) * 0.2,
              child: Text(
                "Merhaba, ben JeaFriday! Flutter ve platforma özgü programlama dillerini kullanarak mobil, web, windows ve linux uygulamaları geliştiren bir yazılım mühendisiyim.",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: textColor,
                  fontSize: 12,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
