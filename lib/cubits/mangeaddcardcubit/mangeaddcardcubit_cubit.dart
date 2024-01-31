import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'mangeaddcardcubit_state.dart';

class MangeaddcardcubitCubit extends Cubit<MangeaddcardcubitState> {
  MangeaddcardcubitCubit() : super(MangeaddcardcubitInitial());
  updateContainerColor(
      {required String name,
      required String cardNumber,
      required String expiry,
      required String cvv}) {
    if (name.isNotEmpty &&
        cardNumber.isNotEmpty &&
        expiry.isNotEmpty &&
        cvv.isNotEmpty) {
      emit(Mangeaddcardcubitfill());
    } else {
      emit(Mangeaddcardcubitunfill());
    }
  }

  showIconfun({
    required TextEditingController controler,
  }) {
    if (controler.text.isNotEmpty) {
      emit(IconTrueState(ishow: true));
    } else {
      emit(IconFalseState(isShow: false));
    }
  }
}
