// ignore_for_file: avoid_print
// ignore: duplicate_ignore
// ignore_for_file: avoid_print

import 'package:dio/dio.dart';

class ApiResponse {
  final bool status;
  final int statusCode;
  final dynamic data;
  final String message;

  ApiResponse({
    required this.status,
    required this.statusCode,
    this.data,
    required this.message,
  });

  // Factory method to handle Dio responses
  factory ApiResponse.fromResponse(Response response) {
    // check if success is implied by HTTP status code 200
    final bool isSuccess = response.statusCode != null && response.statusCode! >= 200 && response.statusCode! < 300;

    return ApiResponse(
      status: response.data["status"] ?? isSuccess,
      statusCode: response.statusCode ?? 500,
      data: response.data,
      message: response.data["message"] ?? 'Success',
    );
  }

  // Factory method to handle Dio or other exceptions
  factory ApiResponse.fromError(dynamic error) {
    if (error is DioException) {
      print('🔴 Dio Error Status Code: ${error.response?.statusCode}');
      print('🔴 Dio Error Data: ${error.response?.data}');
      print('🔴 Dio Error Headers: ${error.response?.headers}');
      print('🔴 Dio Error Redirect Location: ${error.response?.headers.map['location']}');
      return ApiResponse(
        status: false,
        data: error.response?.data,
        statusCode: error.response?.statusCode ?? 500,
        message: _handleDioError(error),
      );
    } else {
      return ApiResponse(
        status: false,
        statusCode: 500,
        message: 'An unexpected error occurred: ${error.toString()}',
      );
    }
  }

  static String _handleDioError(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
        return "Connection timed out. Please check your internet connection and try again.";
      case DioExceptionType.sendTimeout:
        return "Send timeout. The server took too long to respond. Please try again.";
      case DioExceptionType.receiveTimeout:
        return "Receive timeout. The server did not send data in time. Please try again.";
      case DioExceptionType.badResponse:
        return _handleServerError(error.response);
      case DioExceptionType.cancel:
        return "Request to the server was cancelled.";
      case DioExceptionType.connectionError:
        return "No internet connection or server is unreachable. Please check your network and the server status.";
      default:
        return "An unknown network error occurred: ${error.message}";
    }
  }

  /// Handling errors from the server response
  static String _handleServerError(Response? response) {
    if (response == null || response.data == null) {
      return "No response from server.";
    }

    if (response.data is! Map<String, dynamic>) {
      return "Server returned unexpected response format (possibly HTML or redirect).";
    }

    final data = response.data as Map<String, dynamic>;

    if (data.containsKey("message")) return data["message"];
    if (data.containsKey("error")) return data["error"];
    if (data.containsKey("errors")) {
      final errors = data["errors"];
      if (errors is Map) {
        return errors.values.expand((e) => e as List).join("\n");
      } else if (errors is String) {
        return errors;
      }
    }

    return "Server error: ${response.statusCode} - ${response.statusMessage ?? 'Unknown'}";
  }
}























// import 'package:dio/dio.dart';

// class ApiResponse {
//   final bool status;
//   final int statusCode;
//   final dynamic data;
//   final String message;

//   ApiResponse({
//     required this.status,
//     required this.statusCode,
//     this.data,
//     required this.message,
//   });

//   // Factory method to handle Dio responses
//   factory ApiResponse.fromResponse(Response response) {
    
//     return ApiResponse(
//       status: response.data["status"] ?? false,
//       statusCode: response.statusCode ?? 500,
//       data: response.data,
//       message: response.data["message"]??'An error occurred.',
//     );
//   }

//   // Factory method to handle Dio or other exceptions
//   factory ApiResponse.fromError(dynamic error) {
//     if (error is DioException)
//     {
//       print('Dio error: $error');
//       return ApiResponse(
//         status: false,
//         data: error.response,
//         statusCode: error.response != null ? error.response!.statusCode ?? 500 : 500,
//         message: _handleDioError(error),
//       );
//     }
//     else
//     {
//       return ApiResponse(
//         status: false,
//         statusCode: 500,
//         message: 'An error occurred.',
//       );
//     }
//   }
//   static String _handleDioError(DioException error) {
//     switch (error.type) {
//       case DioExceptionType.connectionTimeout:
//         return "Connection timeout, please try again.";
//       case DioExceptionType.sendTimeout:
//         return "Send timeout, please check your internet.";
//       case DioExceptionType.receiveTimeout:
//         return "Receive timeout, please try again later.";
//       case DioExceptionType.badResponse:
//         return _handleServerError(error.response);
//       case DioExceptionType.cancel:
//         return "Request was cancelled.";
//       case DioExceptionType.connectionError:
//         return "No internet connection.";
//       default:
//         return "Unknown error occurred.";
//     }
//   }
//   /// Handling errors from the server response
//   static String _handleServerError(Response? response) {
//     print(  response?.data.toString());
//     if (response == null) return "No response from server.";
//     if (response.data is Map<String, dynamic>) {
//       return response.data["message"] ?? "An error occurred.";
//     }
//     return "Server error: ${response.statusMessage}";
//   }
// }

