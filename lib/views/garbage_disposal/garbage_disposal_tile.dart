import 'package:flutter/material.dart';
import 'package:lieblings_wg/models/garbage_disposal.dart';
import 'package:lieblings_wg/services/util.dart';

class GarbageDisposalTile extends StatelessWidget {
  final GarbageDisposal garbageDisposal;

  const GarbageDisposalTile({required this.garbageDisposal});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        width: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleAvatar(
              radius: 6,
              backgroundColor: Colors.blue,
            ),
            Text(dateToDisplayString(garbageDisposal.date)),
          ],
        ),
      ),
    );
  }
}
