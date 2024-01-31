import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'validation_state.dart';

@immutable


class ValidationCubit extends Cubit<ValidationState> {
  ValidationCubit()
      : super(ValidationState(
          isNameValid: false,
          isCardNumberValid: false,
          isExpiryValid: false,
          isCvvValid: false,
        ));

  void validateFields({
    required String name,
    required String cardNumber,
    required String expiry,
    required String cvv,
  }) {
    bool isNameValid = name.isNotEmpty;
    bool isCardNumberValid = cardNumber.isNotEmpty && cardNumber.length == 22;
    bool isExpiryValid = expiry.isNotEmpty && expiry.length == 5;
    bool isCvvValid = cvv.isNotEmpty && cvv.length == 3;

    emit(ValidationState(
      isNameValid: isNameValid,
      isCardNumberValid: isCardNumberValid,
      isExpiryValid: isExpiryValid,
      isCvvValid: isCvvValid,
    ));
  }
}
