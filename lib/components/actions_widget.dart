import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pokertrainer/models/games_dto.dart';

class ActionWidget extends StatelessWidget {
  final Positions actions;
  const ActionWidget({super.key, required this.actions});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _actionText("AÇÕES:"),
          _actionText("------------"),
          if (actions.sb != null)
            _actionText("SB -> ${actions.sb! > 0 ? actions.sb : "Fold"}"),
          if (actions.bb != null)
            _actionText("BB -> ${actions.bb! > 0 ? actions.bb : "Fold"}"),
          if (actions.utg != null)
            _actionText("UTG -> ${actions.utg! > 0 ? actions.utg : "Fold"}"),
          if (actions.utg1 != null)
            _actionText("UTG1 -> ${actions.utg1! > 0 ? actions.utg1 : "Fold"}"),
          if (actions.lj != null)
            _actionText("LJ -> ${actions.lj! > 0 ? actions.lj : "Fold"}"),
          if (actions.hj != null)
            _actionText("HJ -> ${actions.hj! > 0 ? actions.hj : "Fold"}"),
          if (actions.co != null)
            _actionText("CO -> ${actions.co! > 0 ? actions.co : "Fold"}"),
          if (actions.btn != null)
            _actionText("BTN ->  ${actions.btn! > 0 ? actions.btn : "Fold"}"),
        ],
      ),
    );
  }

  Widget _actionText(String text) {
    return Text(
      text,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 15,
      ),
    );
  }
}
