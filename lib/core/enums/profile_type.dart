enum ProfileType { owner, client, sysAdmin }

extension Extension on ProfileType? {
  bool get isOwner => this == ProfileType.owner;

  bool get isClient => this == ProfileType.client;

  bool get isSysAdmin => this == ProfileType.sysAdmin;
}
