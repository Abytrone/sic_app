enum Type { debit, credit }

class TransactionModel {
  final String name;
  final String balance;
  final String amount;
  final String paymentMethod;
  final String status;
  final String timeDate;
  final Type type;

  TransactionModel({
    required this.name,
    required this.balance,
    required this.amount,
    required this.paymentMethod,
    required this.status,
    required this.timeDate,
    required this.type,
  });

  static List<TransactionModel> transction = <TransactionModel>[
    TransactionModel(
      name: 'Education Plan Plus',
      balance: '23,453.00',
      amount: '290.00',
      paymentMethod: 'MOMO',
      status: 'Success',
      timeDate: '2 months ago',
      type: Type.credit,
    ),
    TransactionModel(
      name: 'Mortgage Protection Plan',
      balance: '12,453.00',
      amount: '100.00',
      paymentMethod: 'Bank',
      status: 'Failed',
      timeDate: '3 months ago',
      type: Type.debit,
    ),
  ];
}
