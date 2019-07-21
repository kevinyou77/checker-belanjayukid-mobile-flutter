import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class Transaction extends Equatable {
  String transactionId;
  DateTime transactionDate;
  String customerName;

  Transaction({
    @required transactionId,
    @required transactionDate,
    @required customerName
  }) : super ([transactionId, transactionDate, customerName]);
}