import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class LoginDto extends Equatable {
  final String email;
  final String password;

  const LoginDto({
    @required this.email,
    @required this.password,
  });

  Map<String, dynamic> get toMap => {
        "email": email,
        "password": password,
      };

  @override
  List<Object> get props => [email, password];
}
