class TransactionItemModel{
  final String title;
  final String date;
  final String price;
  final bool isWithdrawal;

 const TransactionItemModel({required this.isWithdrawal, required this.title, required this.date, required this.price});
}