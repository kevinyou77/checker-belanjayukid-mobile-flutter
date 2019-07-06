import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class TransactionsEvent extends Equatable {
  TransactionsEvent([List props = const []]) : super(props);
}