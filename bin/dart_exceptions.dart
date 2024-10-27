// void main() {
//   // Criando o banco
//   BankController bankController = BankController();

//   // Adicionando contas
//   bankController.addAccount(
//       id: "Ricarth",
//       account:
//           Account(name: "Ricarth Lima", balance: 400, isAuthenticated: true));

//   bankController.addAccount(
//       id: "Kako",
//       account:
//           Account(name: "Caio Couto", balance: 600, isAuthenticated: true));

//   // Fazendo transferência
//   bool result = bankController.makeTransfer(
//       idSender: "Kako", idReceiver: "Ricarth", amount: 700);

//   // Observando resultado
//   print(result);
// }


void main() {
  print('Started main');

  functionOne();

  print('Finished main');
}

void functionOne() {
  print('Started functionOne');

  try {
    functionTwo();
  } catch (exception, stackTrace) {
    print('\nException:');
    print(exception);

    print('\nStackTrace:');
    print(stackTrace);

    rethrow;
  } finally {
    print('\nFinally functionOne\n');
  }

  print('Finished functionOne');
}

void functionTwo() {
  print('Started functionTwo');

  for (var i = 0; i <= 5; i++) {
    print(i);

    double amount = double.parse('Not a number');
  }

  print('Finished functionTwo');
}
