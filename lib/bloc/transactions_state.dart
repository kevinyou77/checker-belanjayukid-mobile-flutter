import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class TransactionsState extends Equatable {
  TransactionsState([List props = const []]) : super(props);
}

class TransactionsInitial extends TransactionsState { }
class TransactionsLoading extends TransactionsState { }

class TransactionsLoaded extends TransactionsState {

}