import 'package:flutter/material.dart';
import 'package:lieblings_wg/mock.dart';
import 'package:lieblings_wg/models/cleaning_job.dart';
import 'package:lieblings_wg/views/cleaning_jobs/cleaning_job_card.dart';
import 'package:lieblings_wg/views/overview_panel.dart';

class CleaningJobOverviewPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<CleaningJob> cleaningJobs = cleaningJobMock;

    return OverviewPanel(
      headline: "Putzdienste",
      child: SizedBox(
        height: 150,
        child: GridView.count(
          crossAxisCount: 3,
          children: [
            CleaningJobCard(cleaningJob: cleaningJobs[0]),
            CleaningJobCard(cleaningJob: cleaningJobs[1]),
            CleaningJobCard(cleaningJob: cleaningJobs[2]),
            CleaningJobCard(cleaningJob: cleaningJobs[3]),
            CleaningJobCard(cleaningJob: cleaningJobs[4]),
            CleaningJobCard(cleaningJob: cleaningJobs[5]),
          ],
        ),
      ),
    );
  }
}
