import 'package:bloc/bloc.dart';
import 'transactions_event.dart';
import 'transactions_state.dart';

class TransactionsBloc extends Bloc<TransactionsEvent, TransactionsState> {
  @override
  TransactionsState get initialState => TransactionsInitial();
  
  @override
  Stream<TransactionsState> mapEventToState(
    TransactionsEvent event,
  ) async* {
    
  }
}