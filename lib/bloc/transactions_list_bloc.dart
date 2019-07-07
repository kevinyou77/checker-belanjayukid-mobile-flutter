import 'package:bloc/bloc.dart';
import 'transactions_list_event.dart';
import 'transactions_list_state.dart';

class TransactionsListBloc extends Bloc<TransactionsListEvent, TransactionsListState> {
  @override
  TransactionsListState get initialState => TransactionsListInitial();
  
  @override
  Stream<TransactionsListState> mapEventToState(
    TransactionsListEvent event,
  ) async* {
    
  }
}