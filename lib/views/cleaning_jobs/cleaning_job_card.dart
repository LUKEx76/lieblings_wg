import 'package:flutter/material.dart';
import 'package:lieblings_wg/models/cleaning_job.dart';

class CleaningJobCard extends StatelessWidget {
  final CleaningJob cleaningJob;

  const CleaningJobCard({required this.cleaningJob});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Text(
        (cleaningJob.jobName ?? "") + "\n\n" + (cleaningJob.roomMate ?? ""),
        textAlign: TextAlign.center,
      ),
    );
  }
}
