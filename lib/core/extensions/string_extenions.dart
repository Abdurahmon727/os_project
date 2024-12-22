extension StringExtenions on String {
  String get capitalizeFirstLetter {
    if (length <= 1) return this;
    return '${this[0].toUpperCase()}${substring(1)}';
  }
}
