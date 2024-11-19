enum FormzStatus { pure, success, loading, fail }

extension StatusExtenions on FormzStatus {
  bool get isPure => this == FormzStatus.pure;

  bool get isSuccess => this == FormzStatus.success;

  bool get isLoading => this == FormzStatus.loading;

  bool get isFail => this == FormzStatus.fail;
}
