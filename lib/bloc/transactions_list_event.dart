import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class TransactionsListEvent extends Equatable {
  TransactionsListEvent([List props = const []]) : super(props);
}