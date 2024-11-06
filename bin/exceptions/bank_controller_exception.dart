class SenderIdInvalidException implements Exception {
  static const String report = 'SenderIdInvalidException';
  String idSender;

  SenderIdInvalidException({required this.idSender});

  @override
  String toString() {
    return '$report\nID SENDER: $idSender\n';
  }
}

class ReceiverIdInvalidException implements Exception {
  static const String report = 'ReceiverIdInvalidException';
  String idReceiver;

  ReceiverIdInvalidException({required this.idReceiver});

  @override
  String toString() {
    return '$report\nID RECEIVER: $idReceiver\n';
  }
}

class SenderNotAuthenticatedException implements Exception {
  static const String report = 'SenderNotAuthenticatedException';
  String idSender;

  SenderNotAuthenticatedException({required this.idSender});

  @override
  String toString() {
    return '$report\nID SENDER: $idSender\n';
  }
}

class SenderBalanceLowerThanAmountException implements Exception {
  static const String report = 'SenderBalanceLowerThanAmountException';
  String idSender;
  double senderBalance;
  double amount;

  SenderBalanceLowerThanAmountException({
    required this.idSender,
    required this.senderBalance,
    required this.amount,
  });

  @override
  String toString() {
    return '$report\nID SENDER: $idSender\nBALANCE: $senderBalance\nAMOUNT: $amount\n';
  }
}
