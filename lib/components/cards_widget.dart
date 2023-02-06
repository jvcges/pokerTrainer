import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:playing_cards/playing_cards.dart';

class CardsWidget extends StatelessWidget {
  final String card;
  const CardsWidget({super.key, required this.card});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: PlayingCardView(
        card: PlayingCard(getSuit(card), CardValue.ace),
      ),
    );
  }

  Suit getSuit(String card) {
    if (card.substring(1) == "d") {
      return Suit.diamonds;
    }
    if (card.substring(1) == "h") {
      return Suit.hearts;
    }
    if (card.substring(1) == "s") {
      return Suit.spades;
    }
    if (card.substring(1) == "c") {
      return Suit.clubs;
    }
    return Suit.joker;
  }
}
