import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class TransactionsListState extends Equatable {
  TransactionsListState([List props = const []]) : super(props);
}

class TransactionsListInitial extends TransactionsListState { }
class TransactionsListLoading extends TransactionsListState { }

class TransactionsListLoaded extends TransactionsListState {

}