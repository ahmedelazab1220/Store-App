class UserProfileModel {
  final String? fullName;
  final String phoneNumber;
  final String street;
  final String city;
  final String state;
  final String? zipCode;

  UserProfileModel({
    this.fullName,
    required this.phoneNumber,
    required this.street,
    required this.city,
    required this.state,
    this.zipCode,
  });

  factory UserProfileModel.fromJson(Map<String, dynamic> json) {
    return UserProfileModel(
      fullName: json['fullName'] as String?,
      phoneNumber: json['phoneNumber'],
      street: json['street'],
      city: json['city'],
      state: json['state'],
      zipCode: json['zipCode'] as String?,
    );
  }
}
