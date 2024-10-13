enum Status { pure, success, loading, fail }

extension StatusExtenions on Status {
  bool get isPure => this == Status.pure;

  bool get isSuccess => this == Status.success;

  bool get isLoading => this == Status.loading;

  bool get isFail => this == Status.fail;
}
