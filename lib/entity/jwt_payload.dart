import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class JwtPayload extends Equatable {
  final String id;
  final String email;
  final String role;
  final int iat;
  final int exp;

  const JwtPayload({
    @required this.id,
    @required this.email,
    @required this.role,
    @required this.iat,
    @required this.exp,
  });

  factory JwtPayload.fromJSON(Map<String, dynamic> decoded) {
    return JwtPayload(
      id: decoded['id'],
      email: decoded['email'],
      role: decoded["role"],
      iat: decoded['isAdmin'],
      exp: decoded['exp'],
    );
  }

  bool get isExpired =>
      DateTime.fromMillisecondsSinceEpoch(exp * 1000).isBefore(DateTime.now());

  @override
  List<Object> get props => [id, email, role, iat, exp];
}
