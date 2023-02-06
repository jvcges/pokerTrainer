import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pokertrainer/components/actions_widget.dart';
import 'package:pokertrainer/components/cards_widget.dart';
import 'package:pokertrainer/components/header_text.dart';
import 'package:pokertrainer/components/stacks_widget.dart';
import 'package:pokertrainer/models/games_dto.dart';

class GamePage extends StatefulWidget {
  final List<GamesDto> games;
  const GamePage({super.key, required this.games});

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  int numberOfGames = 0;
  int currentGame = 0;

  @override
  void initState() {
    _getNumberOfGames();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xff294f20),
      body: SafeArea(
        child: Column(children: [
          SizedBox(
            height: height * 0.8,
            width: double.infinity,
            child: Stack(
              children: [
                Image.asset(
                  "assets/poker-table.png",
                  width: double.infinity,
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      HeaderText(
                        text:
                            "Sua posição: ${widget.games[currentGame].myPosition}",
                        color: Colors.orangeAccent,
                      ),
                      StackWidget(
                        stacks: widget.games[currentGame].stacks,
                        myPosition: widget.games[currentGame].myPosition,
                      ),
                      ActionWidget(actions: widget.games[currentGame].actions),
                      HeaderText(
                          text:
                              "Suas cartas: ${widget.games[currentGame].myCards.first} e ${widget.games[currentGame].myCards.second}"),
                      const HeaderText(
                          text: "Sua vez, qual ação\ndeseja tomar?"),
                    ],
                  ),
                ),
              ],
            ),
          ),
          _buildButtons(height),
        ]),
      ),
    );
  }

  ButtonStyle buttonStyle(Color buttonColor, double height) {
    return OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      fixedSize: Size.fromHeight(height),
      backgroundColor: buttonColor,
    );
  }

  Widget _buildButtons(double height) {
    return SizedBox(
      width: double.infinity,
      height: height * 0.2,
      child: Column(
        children: [
          Padding(
            padding:
                EdgeInsets.symmetric(vertical: height * 0.001, horizontal: 15),
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: buttonStyle(Colors.blue, height * 0.05),
                    child: const Text("Fold"),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: buttonStyle(Colors.green, height * 0.05),
                    child: const Text("Call"),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding:
                EdgeInsets.symmetric(vertical: height * 0.001, horizontal: 15),
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: buttonStyle(Color(0xffFF3D3D), height * 0.05),
                    child: const Text("Raise 2"),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: buttonStyle(Color(0xffB41414), height * 0.05),
                    child: const Text("All in"),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  _getNumberOfGames() {
    setState(() {
      numberOfGames = widget.games.length;
    });
  }
}
