import 'package:freezed_annotation/freezed_annotation.dart';
part 'fetch_status.freezed.dart';

@freezed
abstract class FetchStatus with _$FetchStatus {
  const factory FetchStatus.loading() = FetchLoading;
  const factory FetchStatus.error(String message) = FetchError;
  const factory FetchStatus.loaded() = FetchLoaded;
}
