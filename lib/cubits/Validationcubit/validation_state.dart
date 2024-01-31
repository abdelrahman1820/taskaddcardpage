part of 'validation_cubit.dart';

@immutable

class ValidationState {
  final bool isNameValid;
  final bool isCardNumberValid;
  final bool isExpiryValid;
  final bool isCvvValid;

   ValidationState({
    required this.isNameValid,
    required this.isCardNumberValid,
    required this.isExpiryValid,
    required this.isCvvValid,
  });
}