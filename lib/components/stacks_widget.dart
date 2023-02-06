import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pokertrainer/models/games_dto.dart';

class StackWidget extends StatelessWidget {
  final Positions stacks;
  final String myPosition;
  const StackWidget(
      {super.key, required this.stacks, required this.myPosition});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _stackText("STACKS:"),
          _stackText("---------"),
          _stackText("SB: ${stacks.sb} BB"),
          _stackText("BB: ${stacks.bb} BB"),
          _stackText("UTG: ${stacks.utg} BB"),
          _stackText("UTG1: ${stacks.utg1} BB"),
          _stackText("LJ: ${stacks.lj} BB"),
          _stackText("HJ: ${stacks.hj} BB"),
          _stackText("CO: ${stacks.co} BB"),
          _stackText("BTN: ${stacks.btn} BB"),
        ],
      ),
    );
  }

  Widget _stackText(String text) {
    final bool isMyPosition = text.substring(0, 3).contains(myPosition);
    return Text(
      text,
      style: TextStyle(
        color: isMyPosition ? Colors.orangeAccent : Colors.white,
        fontSize: 15,
      ),
    );
  }
}
