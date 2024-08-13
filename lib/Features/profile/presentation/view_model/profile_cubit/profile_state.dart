part of 'profile_cubit.dart';

abstract class ProfileState {}

final class ProfileInitial extends ProfileState {}

final class UpdateProfileImageSuccess extends ProfileState {
  final String imageUrl;

  UpdateProfileImageSuccess({required this.imageUrl});
}

final class UpdateProfileImageFailure extends ProfileState {
  final String message;

  UpdateProfileImageFailure({required this.message});
}

final class UpdateProfileImageLoading extends ProfileState {}
