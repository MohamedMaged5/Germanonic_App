part of 'sound_cubit.dart';

@immutable
sealed class SoundState {}

final class Soundpause extends SoundState {}

final class Soundplay extends SoundState {}
