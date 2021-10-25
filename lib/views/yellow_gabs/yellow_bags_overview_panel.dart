import 'package:flutter/material.dart';
import 'package:lieblings_wg/mock.dart';
import 'package:lieblings_wg/services/util.dart';
import 'package:lieblings_wg/views/overview_panel.dart';

class YellowBagOverviewPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<DateTime> yellowBags = yellowBagsMock;

    return OverviewPanel(
      headline: "Gelbe Säcke",
      child: Column(
        children: [
          Text(
            "Termine zum Abgeben der Gelben Säcke in der Oberstadt",
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 60,
            child: ListView.builder(
              itemCount: yellowBags.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => SizedBox(
                width: 80,
                child: Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 8,
                        child: Text("G"),
                        backgroundColor: Colors.yellow,
                      ),
                      SizedBox(height: 5),
                      Text(
                        dateToDisplayString(yellowBags[index]),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
