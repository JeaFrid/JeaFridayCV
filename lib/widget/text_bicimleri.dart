import 'package:cosmos/cosmos.dart';
import 'package:flutter/material.dart';
import 'package:jeafriday/theme/colors.dart';

class Title1 extends StatelessWidget {
  final String text;
  const Title1({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: Text(
        text,
        style: TextStyle(
          color: textColor.withOpacity(0.9),
          fontSize: 16,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}

class Title2 extends StatelessWidget {
  final String text;
  const Title2({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: Text(
        text,
        style: TextStyle(
          color: defaultColor.withOpacity(0.9),
          fontSize: 14,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}

class TextElemani extends StatelessWidget {
  final String text;
  const TextElemani({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: textColor.withOpacity(0.8),
        fontSize: 12,
      ),
    );
  }
}

class TextElemaniLink extends StatelessWidget {
  final String text;
  final String link;
  const TextElemaniLink({
    super.key,
    required this.text,
    required this.link,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(5),
      onTap: () {
        openUrl(link);
      },
      child: Padding(
        padding: const EdgeInsets.all(2),
        child: Row(
          children: [
            Text(
              text,
              style: TextStyle(
                color: textColor.withOpacity(0.8),
                fontSize: 12,
              ),
            ),
            const SizedBox(width: 6),
            Icon(
              Icons.link,
              color: defaultColor,
              size: 18,
            ),
          ],
        ),
      ),
    );
  }
}
