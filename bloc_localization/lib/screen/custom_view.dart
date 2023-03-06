import 'package:bloc_localization/app_localization.dart';
import 'package:flutter/material.dart';

class CusstomView extends StatelessWidget {
  const CusstomView(
      {super.key,
      required this.heading,
      required this.title,
      required this.subtitle,
      required this.description});

  final String heading;
  final String title;
  final String subtitle;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(AppLocalization.of(context).getTranslateValue(heading)),
        const SizedBox(
          height: 20,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          height: 80,
          width: MediaQuery.of(context).size.width,
          color: Colors.amber,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const SizedBox(
              height: 15,
            ),
            Text(AppLocalization.of(context).getTranslateValue(title)),
            Text(AppLocalization.of(context).getTranslateValue(subtitle)),
            Text(AppLocalization.of(context).getTranslateValue(description))
          ]),
        )
      ],
    );
  }
}
