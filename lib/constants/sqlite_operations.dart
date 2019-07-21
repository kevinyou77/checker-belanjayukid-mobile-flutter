class SQLLiteOperations {
  static final String init = '''
    CREATE TABLE transactions (
      transactionId INTEGER PRIMARY KEY,
      paymentMethod TEXT,
      customerName TEXT,
      transactionDate DATETIME,
    )
  ''';

  static final String newTransaction = '''
    INSERT INTO transactions (
      paymentMethod, 
      customerName,
      transactionDate,
    ) VALUES (?,?,?)
  ''';

  static final String updateTransaction = '''

  ''';
}