import 'package:flutter/material.dart';
import 'package:lieblings_wg/mock.dart';
import 'package:lieblings_wg/models/garbage_disposal_month.dart';
import 'package:lieblings_wg/views/garbage_disposal/garbage_disposal_list_tile.dart';
import 'package:lieblings_wg/views/overview_panel.dart';

class GarbageDisposalOverviewPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<GarbageDisposalMonth> garbageDisposalMonths =
        garbageDisposalMonthsMock;

    return OverviewPanel(
      headline: "Müllabfuhr",
      child: SizedBox(
        height: 180,
        child: ListView.builder(
          itemCount: garbageDisposalMonths.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => SizedBox(
            width: 100,
            child: GarbageDisposalListTile(
              garbageDisposalMonth: garbageDisposalMonths[index],
            ),
          ),
        ),
      ),
    );
  }
}
