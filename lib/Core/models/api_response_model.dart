class ApiResponseModel {
  final String message;

  ApiResponseModel(this.message);

  factory ApiResponseModel.fromJson(Map<String, dynamic> json) {
    return ApiResponseModel(json['message']);
  }
}
