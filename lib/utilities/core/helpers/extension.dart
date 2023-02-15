extension StringExtension on String {
  String firstToUpper() {
    return '${this[0].toUpperCase()}${substring(1)}';
  }
}
