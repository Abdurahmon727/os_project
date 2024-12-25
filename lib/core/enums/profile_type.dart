enum ProfileType { Owner, Client, Sys_admin }

extension Extension on ProfileType? {
  bool get isOwner => this == ProfileType.Owner;

  bool get isClient => this == ProfileType.Client;

  bool get isSysAdmin => this == ProfileType.Sys_admin;
}

extension ProfileTypeStringExtension on String? {
  bool get isOwner {
    return this == ProfileType.Owner.name;
  }

  bool get isClient {
    return this == ProfileType.Client.name;
  }

  bool get isSysAdmin {
    return this == ProfileType.Sys_admin.name;
  }
}
