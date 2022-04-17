import 'package:freezed_annotation/freezed_annotation.dart';

part 'income_expenses.freezed.dart';

@freezed
class IncomeExpenses with _$IncomeExpenses {
  const factory IncomeExpenses({
    required double income,
    required double expenses,
  }) = _IncomeExpenses;
}

const IncomeExpenses emptyIncomeExpenses = IncomeExpenses(
  income: 0,
  expenses: 0,
);
