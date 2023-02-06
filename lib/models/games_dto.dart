import 'dart:convert';

class GamesDto {
  final Buttons buttons;
  final Positions actions;
  final String myPosition;
  final String answer;
  final MyCards myCards;
  final Positions stacks;
  GamesDto({
    required this.buttons,
    required this.actions,
    required this.myPosition,
    required this.answer,
    required this.myCards,
    required this.stacks,
  });

  GamesDto copyWith({
    Buttons? buttons,
    Positions? actions,
    String? myPosition,
    String? answer,
    MyCards? myCards,
    Positions? stacks,
  }) {
    return GamesDto(
      buttons: buttons ?? this.buttons,
      actions: actions ?? this.actions,
      myPosition: myPosition ?? this.myPosition,
      answer: answer ?? this.answer,
      myCards: myCards ?? this.myCards,
      stacks: stacks ?? this.stacks,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'buttons': buttons.toMap()});
    result.addAll({'actions': actions.toMap()});
    result.addAll({'myPosition': myPosition});
    result.addAll({'answer': answer});
    result.addAll({'myCards': myCards.toMap()});
    result.addAll({'stacks': stacks.toMap()});

    return result;
  }

  factory GamesDto.fromMap(Map<String, dynamic> map) {
    return GamesDto(
      buttons: Buttons.fromMap(map['buttons']),
      actions: Positions.fromMap(map['actions']),
      myPosition: map['myPosition'] ?? '',
      answer: map['answer'] ?? '',
      myCards: MyCards.fromMap(map['myCards']),
      stacks: Positions.fromMap(map['stacks']),
    );
  }

  String toJson() => json.encode(toMap());

  factory GamesDto.fromJson(String source) =>
      GamesDto.fromMap(json.decode(source));

  @override
  String toString() {
    return 'GamesDto(buttons: $buttons, actions: $actions, myPosition: $myPosition, answer: $answer, myCards: $myCards, stacks: $stacks)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is GamesDto &&
        other.buttons == buttons &&
        other.actions == actions &&
        other.myPosition == myPosition &&
        other.answer == answer &&
        other.myCards == myCards &&
        other.stacks == stacks;
  }

  @override
  int get hashCode {
    return buttons.hashCode ^
        actions.hashCode ^
        myPosition.hashCode ^
        answer.hashCode ^
        myCards.hashCode ^
        stacks.hashCode;
  }
}

class MyCards {
  final String first;
  final String second;
  MyCards({
    required this.first,
    required this.second,
  });

  MyCards copyWith({
    String? first,
    String? second,
  }) {
    return MyCards(
      first: first ?? this.first,
      second: second ?? this.second,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'first': first});
    result.addAll({'second': second});

    return result;
  }

  factory MyCards.fromMap(Map<String, dynamic> map) {
    return MyCards(
      first: map['first'] ?? '',
      second: map['second'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory MyCards.fromJson(String source) =>
      MyCards.fromMap(json.decode(source));

  @override
  String toString() => 'MyCards(first: $first, second: $second)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is MyCards && other.first == first && other.second == second;
  }

  @override
  int get hashCode => first.hashCode ^ second.hashCode;
}

class Positions {
  final double? sb;
  final double? bb;
  final double? btn;
  final double? utg;
  final double? utg1;
  final double? lj;
  final double? hj;
  final double? co;
  Positions({
    this.sb,
    this.bb,
    this.btn,
    this.utg,
    this.utg1,
    this.lj,
    this.hj,
    this.co,
  });

  Positions copyWith({
    double? sb,
    double? bb,
    double? btn,
    double? utg,
    double? utg1,
    double? lj,
    double? hj,
    double? co,
  }) {
    return Positions(
      sb: sb ?? this.sb,
      bb: bb ?? this.bb,
      btn: btn ?? this.btn,
      utg: utg ?? this.utg,
      utg1: utg1 ?? this.utg1,
      lj: lj ?? this.lj,
      hj: hj ?? this.hj,
      co: co ?? this.co,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    if (sb != null) {
      result.addAll({'SB': sb});
    }
    if (bb != null) {
      result.addAll({'BB': bb});
    }
    if (btn != null) {
      result.addAll({'BTN': btn});
    }
    if (utg != null) {
      result.addAll({'UTG': utg});
    }
    if (utg1 != null) {
      result.addAll({'UTG1': utg1});
    }
    if (lj != null) {
      result.addAll({'LJ': lj});
    }
    if (hj != null) {
      result.addAll({'HJ': hj});
    }
    if (co != null) {
      result.addAll({'CO': co});
    }

    return result;
  }

  factory Positions.fromMap(Map<String, dynamic> map) {
    return Positions(
      sb: double.tryParse(map['SB'] ?? ""),
      bb: double.tryParse(map['BB'] ?? ""),
      btn: double.tryParse(map['BTN'] ?? ""),
      utg: double.tryParse(map['UTG'] ?? ""),
      utg1: double.tryParse(map['UTG1'] ?? ""),
      lj: double.tryParse(map['LJ'] ?? ""),
      hj: double.tryParse(map['HJ'] ?? ""),
      co: double.tryParse(map['CO'] ?? ""),
    );
  }

  String toJson() => json.encode(toMap());

  factory Positions.fromJson(String source) =>
      Positions.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Positions(sb: $sb, bb: $bb, btn: $btn, utg: $utg, utg1: $utg1, lj: $lj, hj: $hj, co: $co)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Positions &&
        other.sb == sb &&
        other.bb == bb &&
        other.btn == btn &&
        other.utg == utg &&
        other.utg1 == utg1 &&
        other.lj == lj &&
        other.hj == hj &&
        other.co == co;
  }

  @override
  int get hashCode {
    return sb.hashCode ^
        bb.hashCode ^
        btn.hashCode ^
        utg.hashCode ^
        utg1.hashCode ^
        lj.hashCode ^
        hj.hashCode ^
        co.hashCode;
  }
}

class Buttons {
  final bool allin;
  final bool call;
  final bool fold;
  final bool raise;
  Buttons({
    required this.allin,
    required this.call,
    required this.fold,
    required this.raise,
  });

  Buttons copyWith({
    bool? allin,
    bool? call,
    bool? fold,
    bool? raise,
  }) {
    return Buttons(
      allin: allin ?? this.allin,
      call: call ?? this.call,
      fold: fold ?? this.fold,
      raise: raise ?? this.raise,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'allin': allin});
    result.addAll({'call': call});
    result.addAll({'fold': fold});
    result.addAll({'raise': raise});

    return result;
  }

  factory Buttons.fromMap(Map<String, dynamic> map) {
    return Buttons(
      allin: map['allin'] ?? false,
      call: map['call'] ?? false,
      fold: map['fold'] ?? false,
      raise: map['raise'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory Buttons.fromJson(String source) =>
      Buttons.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Buttons(allin: $allin, call: $call, fold: $fold, raise: $raise)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Buttons &&
        other.allin == allin &&
        other.call == call &&
        other.fold == fold &&
        other.raise == raise;
  }

  @override
  int get hashCode {
    return allin.hashCode ^ call.hashCode ^ fold.hashCode ^ raise.hashCode;
  }
}
