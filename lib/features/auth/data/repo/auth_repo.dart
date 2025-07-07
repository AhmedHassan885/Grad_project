// ignore_for_file: non_constant_identifier_names

import 'package:dartz/dartz.dart';
import 'package:grad_project/core/local/local_data.dart';
import 'package:grad_project/core/network/api_helper.dart';
import 'package:grad_project/core/network/api_response.dart';
import 'package:grad_project/core/network/end_points.dart';
import 'package:grad_project/features/auth/data/model/auth_model.dart';

class AuthRepo {
  AuthRepo._internal();
  static final AuthRepo _instance = AuthRepo._internal();
  factory AuthRepo() => _instance;

  APIHelper apiHelper = APIHelper();
  LoginResponseModel? model;

  Future<Either<String, String>> register(
      {required String email,
      required String name,
      required String type,
      required String password,
      required String confirmPassword,
      required String phone,
      String? level}) async {
    try {
      ApiResponse apiResponse = await apiHelper.postRequest(
          endPoint: EndPoints.register,
          data: {
            "name": name,
            "password": password,
            "password_confirmation": confirmPassword,
            "email": email,
            "phone": phone,
            "type": type,
            if (level != null) "level_id": level,
            // "image": image, // Assuming image handling is done separately or is optional
          },
          isFormData: true,
          isAuthorized: false);

      if (apiResponse.status) {
        return Right(apiResponse.message);
      } else {
        return Left(apiResponse.message);
      }
    } catch (e) {
      return Left(ApiResponse.fromError(e).message);
    }
  }

  Future<Either<String, UserModel>> login({
    required String email,
    required String password,
  }) async {
    try {
      ApiResponse apiResponse = await apiHelper.postRequest(
        endPoint: EndPoints.login,
        data: {
          "email": email,
          "password": password,
        },
        isFormData:
            true, // Postman shows query params, but typically login is form-data or JSON body
        isAuthorized: false,
      );

      if (apiResponse.status) {
        final loginResponse = LoginResponseModel.fromJson(apiResponse.data);
        if (loginResponse.user == null) {
          return Left("User data is missing.");
        }
        print("🔥 Response Data: ${apiResponse.data}");
        LocalData.accessToken = loginResponse.accessToken;

        return Right(loginResponse.user!);
      } else {
        return Left(apiResponse.message);
      }
    } catch (e) {
      return Left(ApiResponse.fromError(e).message);
    }
  }

  Future<Either<String, String>> logout() async {
    try {
      ApiResponse apiResponse = await apiHelper.getRequest(
        endPoint: EndPoints.logout,
        isAuthorized: true,
      );

      if (apiResponse.status) {
        LocalData.accessToken = null; // Clear token on successful logout
        return Right(apiResponse.message);
      } else {
        return Left(apiResponse.message);
      }
    } catch (e) {
      return Left(ApiResponse.fromError(e).message);
    }
  }

  // Future<Either<String, UserModel>> Login(
  //     {required String email, required String password}) async {
  //   try {
  //     ApiResponse apiResponse = await apiHelper.postRequest(
  //         endPoint: EndPoints.login,
  //         data: {"email": email, "password": password},
  //         isAuthorized: false);
  //     if (apiResponse.status) {
  //       LoginResponseModel loginResponseModel =
  //           LoginResponseModel.fromJson(apiResponse.data);
  //       if (loginResponseModel.user == null) {
  //         return Left(apiResponse.message);
  //       }

  //       LocalData.accessToken = loginResponseModel.accessToken;
  //       return Right(loginResponseModel.user!);
  //     } else {
  //       return Left(apiResponse.message);
  //     }
  //   } catch (e) {
  //     return Left(e.toString());
  //   }
  // }
  // Either<String, String> getUser() {
  //   try {
  //     if (model!=null && model!.user != null && model!.user!.name != null) {
  //       return Right(model!.user!.name! );
  //     } else {
  //       throw Exception("Enter Your Name First");
  //     }
  //   } catch (e) {
  //     return Left(e.toString());
  //   }
  // }
}
