class ApiResponse {
  final int status;
  final dynamic data;
  final String message;
  final bool success;
  final bool failure;
  final int validationEnum;
  final dynamic paginationInfo;

  ApiResponse.fromJson(Map<String, dynamic> map)
      : status = map["status"],
        data = map["data"] ?? {},
        message = map["message"],
        success = map["success"],
        failure = map["failure"],
        validationEnum = map["validationEnum"],
        paginationInfo = map["paginationInfo"] ?? {};
}
