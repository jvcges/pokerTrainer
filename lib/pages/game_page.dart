import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class GamePage extends StatefulWidget {
  const GamePage({super.key});

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xffA4A4A4),
      body: SafeArea(
        child: Column(children: [
          Expanded(
            child: Stack(
              children: [
                Image.asset(
                  "assets/poker-table.png",
                  width: double.infinity,
                ),
              ],
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: height * 0.2,
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  child: Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text("Fold"),
                          style: buttonStyle(Colors.blue, height * 0.05),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text("Call"),
                          style: buttonStyle(Colors.green, height * 0.05),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  child: Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text("Raise 2"),
                          style: buttonStyle(Color(0xffFF3D3D), height * 0.05),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text("All in"),
                          style: buttonStyle(Color(0xffB41414), height * 0.05),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
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
}
