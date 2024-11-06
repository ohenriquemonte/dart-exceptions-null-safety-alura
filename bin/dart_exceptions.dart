import 'controllers/bank_controller.dart';
import 'exceptions/bank_controller_exception.dart';
import 'models/account.dart';

void main() {
  print('MyString'.runtimeType);
  print(null.runtimeType);

  // Criando o banco
  BankController bankController = BankController();

  // Adicionando contas
  // Account accountRicarth = Account(name: "Ricarth", balance: -400, isAuthenticated: true);
  // Account accountRicarth = Account(name: "", balance: -400, isAuthenticated: true);

  bankController.addAccount(id: "Ricarth", account: Account(name: "Ricarth Lima", balance: 400, isAuthenticated: true));

  bankController.addAccount(id: "Kako", account: Account(name: "Caio Couto", balance: 600, isAuthenticated: true));

  // Fazendo transferência
  try {
    bool result = bankController.makeTransfer(idSender: "Kako", idReceiver: "Ricarth", amount: 1000);

    // Observando resultado
    if (result) {
      print("Transação efetuada com sucesso!");
    }
  } on SenderIdInvalidException catch (e) {
    print(e);
    print("O ID '${e.idSender}' do remetente é inválido");
  } on ReceiverIdInvalidException catch (e) {
    print(e);
    print("O ID '${e.idReceiver}' do destinatário é inválido");
  } on SenderNotAuthenticatedException catch (e) {
    print(e);
    print("O remetente do ID '${e.idSender}' não está autenticado");
  } on SenderBalanceLowerThanAmountException catch (e) {
    print(e);
    // print("O remetente do ID '${e.idSender}' não possui saldo suficiente");
    print("O remetente do ID '${e.idSender}' tentou enviar ${e.amount} sendo que sua conta tem ${e.senderBalance}");
  } on Exception {
    print('Algo deu errado!');
  }
}
