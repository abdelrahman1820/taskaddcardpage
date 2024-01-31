import 'package:addcardpage/cubits/mangeaddcardcubit/mangeaddcardcubit_cubit.dart';
import 'package:addcardpage/cubits/validationcubit/validation_cubit.dart';
import 'package:addcardpage/view/widget/add_card_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddCardView extends StatelessWidget {
  const AddCardView({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider<MangeaddcardcubitCubit>(
        create: (BuildContext context) => MangeaddcardcubitCubit(),
      ), BlocProvider<ValidationCubit>(
        create: (BuildContext context) => ValidationCubit(),
      )
    ], child: const AddcardViewBody());
  }
}
