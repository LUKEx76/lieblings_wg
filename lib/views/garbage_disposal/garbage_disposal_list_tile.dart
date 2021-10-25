import 'package:flutter/material.dart';
import 'package:lieblings_wg/models/garbage_disposal_month.dart';
import 'package:lieblings_wg/views/garbage_disposal/garbage_disposal_tile.dart';

class GarbageDisposalListTile extends StatelessWidget {
  final GarbageDisposalMonth garbageDisposalMonth;

  const GarbageDisposalListTile({required this.garbageDisposalMonth});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(garbageDisposalMonth.month ?? ""),
          Text(garbageDisposalMonth.responsibleFlat ?? ""),
          Divider(),
          Expanded(
            child: ListView.builder(
              itemCount: garbageDisposalMonth.garbageDisposals?.length,
              itemBuilder: (context, index) => GarbageDisposalTile(
                garbageDisposal: garbageDisposalMonth.garbageDisposals![index],
              ),
            ),
          )
        ],
      ),
    );
  }
}
