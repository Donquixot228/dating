part of 'signup_cubit.dart';

enum SignupStatus { initial, submitting, success, error }

class SignupState extends Equatable {
  final String email;
  final String password;
  final SignupStatus status;

  const SignupState({
    required this.email,
    required this.status,
    required this.password,
  });

  factory SignupState.initial(){
    return SignupState(
      email: '',
      password: '',
      status: SignupStatus.initial,
    );
  }

  SignupState copyWith({
    String? email,
    String? password,
    SignupStatus? status,
  }) {
    return SignupState(email: email ?? this.email,
      status: status ?? this.status,
      password: password ?? this.password,
    );
  }

  bool get isValid => email.isNotEmpty && password.isNotEmpty;


  @override
  // TODO: implement props
  List<Object?> get props => [email, password, status];
}

