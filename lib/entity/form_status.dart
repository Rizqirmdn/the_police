import 'package:freezed_annotation/freezed_annotation.dart';

part 'form_status.freezed.dart';

@freezed
abstract class FormStatus with _$FormStatus {
  const factory FormStatus.idle() = _Idle;
  const factory FormStatus.loading() = _Loading;
  const factory FormStatus.error({
    @required String message,
  }) = _Error;
  const factory FormStatus.success() = _Success;
}
