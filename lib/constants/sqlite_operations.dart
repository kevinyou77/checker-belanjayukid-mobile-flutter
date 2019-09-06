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
  
  static final String deleteTransaction = '''

  ''';

  static final String createAuthUserTable = '''
    CREATE TABLE auth_user (
      username TEXT PRIMARY KEY,
      roleName TEXT,
      bearerToken TEXT
    )
  ''';
}