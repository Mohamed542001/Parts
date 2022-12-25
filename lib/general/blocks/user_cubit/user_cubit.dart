import 'package:hwzn_base/general/models/UserModel.dart';
import 'package:hwzn_base/general/models/customer_model.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit() : super(UserInitial());

  onUpdateUserData(UserModel model){
    emit(UserUpdateState(model: model,changed: !state.changed));
  }

}
