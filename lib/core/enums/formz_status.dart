enum FormzStatus { pure, success, loading, failure }

extension StatusExtenions on FormzStatus {
  bool get isPure => this == FormzStatus.pure;

  bool get isSuccess => this == FormzStatus.success;

  bool get isLoading => this == FormzStatus.loading;

  bool get isFailure => this == FormzStatus.failure;
}
