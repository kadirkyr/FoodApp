class CreditCards {
  final int creditCardNo;
  final int expireDateMonth;
  final int expireDateYear;
  final int cvv;
  final String nameSurname;

  CreditCards(
      {required this.creditCardNo,
      required this.expireDateMonth,
      required this.expireDateYear,
      required this.cvv,
      required this.nameSurname});
}
