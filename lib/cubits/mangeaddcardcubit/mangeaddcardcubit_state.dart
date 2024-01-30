part of 'mangeaddcardcubit_cubit.dart';

@immutable
sealed class MangeaddcardcubitState {}

final class MangeaddcardcubitInitial extends MangeaddcardcubitState {}

final class Mangeaddcardcubitfill extends MangeaddcardcubitState {}

final class Mangeaddcardcubitunfill extends MangeaddcardcubitState {}

final class IconTrueState extends MangeaddcardcubitState {
  IconTrueState({required this.ishow});
  final bool ishow;
}

final class IconFalseState extends MangeaddcardcubitState {
  IconFalseState({required this.isShow});
  final bool isShow;
}
