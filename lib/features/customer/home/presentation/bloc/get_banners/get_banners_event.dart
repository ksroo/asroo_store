part of 'get_banners_bloc.dart';

@freezed
class GetBannersEvent with _$GetBannersEvent {
  const factory GetBannersEvent.started() = _Started;
  const factory GetBannersEvent.getBanners() = FetchBannersEvent;
}
