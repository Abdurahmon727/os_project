enum ProfileType { Owner, Client, SysAdmin }

extension Extension on ProfileType? {
  bool get isOwner => this == ProfileType.Owner;

  bool get isClient => this == ProfileType.Client;

  bool get isSysAdmin => this == ProfileType.SysAdmin;
}

extension ProfileTypeStringExtension on String? {
  bool get isOwner {
    return this == ProfileType.Owner.name;
  }

  bool get isClient {
    return this == ProfileType.Client.name;
  }

  bool get isSysAdmin {
    return this == ProfileType.SysAdmin.name;
  }
}
