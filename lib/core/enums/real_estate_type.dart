enum RealEstateType {
  Land,
  House,
  Apartment,
}

extension RealEstateExtension on RealEstateType? {
  bool get isLand => this == RealEstateType.Land;

  bool get isHouse => this == RealEstateType.House;

  bool get isApartment => this == RealEstateType.Apartment;
}
