class User {
  String? fullName;
  String? aadhar;
  String? phoneNo;
  String? address;

  User({
    this.fullName,
    this.aadhar,
    this.phoneNo,
    this.address,
  });

  User.fromJson(Map<String, dynamic> json)
      : fullName = json['fullName'],
        aadhar = json['aadhar'],
        phoneNo = json['phoneNo'],
        address = json['address'];

  Map<String, dynamic> toJson() => {
        'fullName': fullName,
        'aadhar': aadhar,
        'phoneNo': phoneNo,
        'address': address,
      };
}
