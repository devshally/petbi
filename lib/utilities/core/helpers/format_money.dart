import 'package:intl/intl.dart';

String formatMoney({required num amount, String? symbol, int? decimalDigits}) {
  final format = NumberFormat.currency(
    locale: "en_US",
    decimalDigits: decimalDigits,
    symbol: (symbol ?? "\$"),
  );
  return format.format(amount);
}
