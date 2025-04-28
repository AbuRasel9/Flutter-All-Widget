enum DepositModeType {
  bankTransfer,
  chequeOrDD,
  cashDeposit,
  creditRequest;

  //get all list deposit mode type
  static List<DepositModeType> get list => DepositModeType.values;

  String get depositModeToText => switch (this) {
        bankTransfer => "Amount Transfer form bank",
        chequeOrDD => "Amount Cheque or DD",
        cashDeposit => "Amount Cash Deposit",
        creditRequest => "Amount Credit Request",
      };

  int get depositModetoCode => switch (this) {
        bankTransfer => 1,
        chequeOrDD => 2,
        cashDeposit => 3,
        creditRequest => 4
      };

  //get type form value when user give int value than give deposit mode type
  static DepositModeType? getTypeFromValue(int value) => switch (value) {
        1 => bankTransfer,
        2 => chequeOrDD,
        3 => cashDeposit,
        4 => creditRequest,
        _ => null,
      };
  bool get isBankTransfer=>this==bankTransfer;
  bool get isChequeOrDD=>this==chequeOrDD;
  bool get isCashDeposit=>this==cashDeposit;
}

void main() {
  //print deposit mode list only mode value
  print(DepositModeType.list.map((e) => e.name));
  //print deposit mode string value
  print(
      "${DepositModeType.cashDeposit}  value ${DepositModeType.cashDeposit.depositModeToText}");

  //print deposit mode code
  print(
      "${DepositModeType.cashDeposit} code ${DepositModeType.cashDeposit.depositModetoCode}");
  //store status variable deposit type
  DepositModeType? status=DepositModeType.getTypeFromValue(2);
  print("$status value ${status?.depositModeToText}");
}
