enum ProfileType { Owner, Client, SysAdmin }

extension Extension on ProfileType? {
  bool get isOwner => this == ProfileType.Owner;

  bool get isClient => this == ProfileType.Client;

  bool get isSysAdmin => this == ProfileType.SysAdmin;
}
