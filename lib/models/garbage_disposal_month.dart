import 'package:lieblings_wg/models/garbage_disposal.dart';

class GarbageDisposalMonth {
  final String? month;
  final String? responsibleFlat;
  final List<GarbageDisposal>? garbageDisposals;

  const GarbageDisposalMonth(
      {this.month, this.responsibleFlat, this.garbageDisposals});
}
