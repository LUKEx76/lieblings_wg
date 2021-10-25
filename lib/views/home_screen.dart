import 'package:flutter/material.dart';
import 'package:lieblings_wg/styles.dart';
import 'package:lieblings_wg/views/cleaning_jobs/cleaning_job_overview_panel.dart';
import 'package:lieblings_wg/views/garbage_disposal/garbage_disposal_overview_panel.dart';
import 'package:lieblings_wg/views/yellow_gabs/yellow_bags_overview_panel.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Lieblings WG")),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(defaultPadding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CleaningJobOverviewPanel(),
              GarbageDisposalOverviewPanel(),
              YellowBagOverviewPanel(),
            ],
          ),
        ),
      ),
    );
  }
}
