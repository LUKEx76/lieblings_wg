import 'package:flutter/material.dart';
import 'package:lieblings_wg/styles.dart';

class OverviewPanel extends StatelessWidget {
  final String headline;
  final Widget child;

  const OverviewPanel({required this.headline, required this.child});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Text(
            headline,
            style: Theme.of(context).textTheme.headline4,
          ),
          Padding(
            padding: EdgeInsets.all(defaultPadding),
            child: child,
          ),
        ],
      ),
    );
  }
}
