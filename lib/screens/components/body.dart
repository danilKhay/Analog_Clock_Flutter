import 'package:flutter/material.dart';

import 'clock.dart';
import 'country_card.dart';
import 'time_in_hour_and_minutes.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Text(
              "Newport Beach, USA | PST",
              style: Theme.of(context).textTheme.bodyText1,
            ),
            TimeInHourAndMinute(),
            Spacer(),
            Clock(),
            Spacer(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CountryCard(
                    country: "New York, USA",
                    timeZone: "+3 HRS | EST",
                    time: "9:20",
                    period: "PM",
                    iconSrc: "assets/icons/Liberty.svg",
                  ),
                  CountryCard(
                    country: "Sydney, AU",
                    timeZone: "+19 HRS | AEST",
                    time: "1:20",
                    period: "AM",
                    iconSrc: "assets/icons/Sydney.svg",
                  ),
                ],
              ),
            ),
            SizedBox(height: 2,)
          ],
        ),
      ),
    );
  }
}