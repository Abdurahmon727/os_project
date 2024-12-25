enum TypeOfService {
  Rent,
  Sell,
}

extension TypeOfServiceExtension on TypeOfService? {
  bool get isRent => this == TypeOfService.Rent;

  bool get isSell => this == TypeOfService.Sell;
}
