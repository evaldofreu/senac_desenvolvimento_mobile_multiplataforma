import 'package:bloc/bloc.dart';

class ContadorCubit extends Cubit<int> {
  ContadorCubit() : super(0);

  void incrementar() => emit(state + 1);

  void decrementar() => emit(state - 1);
}
