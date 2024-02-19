import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'sound_state.dart';

class SoundCubit extends Cubit<SoundState> {
  SoundCubit() : super(Soundpause());

  play() {
    emit(Soundplay());
  }

  pause() {
    emit(Soundpause());
  }
}
