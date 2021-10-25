import 'package:lieblings_wg/models/cleaning_job.dart';
import 'package:lieblings_wg/models/garbage_disposal.dart';
import 'package:lieblings_wg/models/garbage_disposal_month.dart';

List<CleaningJob> cleaningJobMock =
    List<CleaningJob>.filled(6, CleaningJob(jobName: "Test", roomMate: "Dude"));

List<GarbageDisposal> garbageDisposalMock = List<GarbageDisposal>.filled(
    4, GarbageDisposal(date: DateTime.now(), garbageType: "B"));

List<GarbageDisposalMonth> garbageDisposalMonthsMock =
    List<GarbageDisposalMonth>.filled(
        8,
        GarbageDisposalMonth(
            month: "November",
            responsibleFlat: "WG-EG",
            garbageDisposals: garbageDisposalMock));

List<DateTime> yellowBagsMock = List.filled(5, DateTime.now());
