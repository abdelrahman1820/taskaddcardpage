import 'package:addcardpage/bloc_observer.dart';
import 'package:addcardpage/view/add_card_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  Bloc.observer = MyBlocObserver();

  runApp(const TestAddCard());
}

class TestAddCard extends StatelessWidget {
  const TestAddCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AddCardView(),
    );
  }
}
