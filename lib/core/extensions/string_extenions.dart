extension StringExtenions on String {
  String get capitalizeFirstLetter {
    if (length <= 1) return this;
    return '${this[0].toUpperCase()}${substring(1)}';
  }

  String get profileIndicator {
    if (length <= 2) return this;
    return '${this[0].toUpperCase()}${this[1].toUpperCase()}';
  }
}
