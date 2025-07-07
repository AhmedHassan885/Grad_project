// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grad_project/features/auth/data/model/auth_model.dart';
import 'package:grad_project/features/auth/data/repo/auth_repo.dart';
import 'package:grad_project/features/auth/manager/auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthRepo repo = AuthRepo();
  AuthCubit._internal() : super(RegisterInitialState());
  static final AuthCubit _cubitInstance = AuthCubit._internal();
  factory AuthCubit() {
    return _cubitInstance;
  }
  static AuthCubit get(context) => BlocProvider.of(context);
  final TextEditingController name_Controller = TextEditingController();
  final TextEditingController password_Controller = TextEditingController();
  final TextEditingController confirm_password_Controller =
      TextEditingController();
  final TextEditingController email_Controller = TextEditingController();
  final TextEditingController phone_Controller = TextEditingController();
  String? selectedRegisterType;
  String? selectedLevel;

  // String? selectedLevel;

  final TextEditingController login_email_Controller = TextEditingController();
  final TextEditingController login_password_Controller =
      TextEditingController();
      UserModel? userModellogin;

  void onRegister() async {
    emit(RegisterLoadingState());
    var response = await repo.register(
      email: email_Controller.text,
      name: name_Controller.text,
      password: password_Controller.text,
      phone: phone_Controller.text.trim(),
      confirmPassword: confirm_password_Controller.text,
      type: selectedRegisterType ?? 'Student',
      level: selectedLevel
    );
    response.fold((String error) {
      emit(RegisterErrorState(error));
    }, (r) {
      emit(RegisterSuccessState(msg: r));
    });
  }
  void onLogin() async {
  emit(LoginLoadingState());

  var response = await repo.login(
    email: login_email_Controller.text,
    password: login_password_Controller.text,
  );

  response.fold(
    (error) => emit(LoginErrorState(error)),
    (user) {
      repo.model = LoginResponseModel(user: user);
      userModellogin = user; // Store the user model for later use
      emit(LoginSuccessState(user));
    },
  );
}

  void onLogout() async {
    emit(LogoutLoadingState());
    var response = await repo.logout();

    response.fold(
      (error) => emit(LogoutErrorState(error)),
      (message) => emit(LogoutSuccessState(message)),
    );
  }


  // void onLogin() async {
  //   emit(LoginLoadingState());
  //   var response = await repo.Login(
  //       email: login_email_Controller.text,
  //       password: login_password_Controller.text);

  //   response.fold((String error) {
  //     emit(LoginErrorState(error));
  //   }, (UserModel user) {
  //     repo.model = LoginResponseModel(user: user);
  //     emit(LoginSuccessState());
  //   });
  // }
  //  void getUser() {
  //   emit(GetUserLoading());
  //   var response = repo.getUser();
  //   response.fold((String error) => emit(GetUserError(error)),
  //       (String username) => emit(GetUserSuccess(username)));

  // }
}

