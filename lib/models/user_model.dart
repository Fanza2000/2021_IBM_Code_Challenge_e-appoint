class User {
  String? fullName;
  String? aadhar;
  String? phoneNo;
  String? address;
  String? age;

  User({
    this.fullName,
    this.aadhar,
    this.phoneNo,
    this.address,
    this.age,
  });

  User.fromJson(Map<String, dynamic> json)
      : fullName = json['fullName'],
        aadhar = json['aadhar'],
        phoneNo = json['phoneNo'],
        address = json['address'],
        age = json['age'];

  Map<String, dynamic> toJson() => {
        'fullName': fullName,
        'aadhar': aadhar,
        'phoneNo': phoneNo,
        'address': address,
        'age': age,
      };
}
