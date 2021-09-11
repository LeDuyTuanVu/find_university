class User {
  String avatar;
  String userID;
  String userName;
  String phone;
  String address;
  String email;
  String sex;
  DateTime birtchDay;
  DateTime joinDate;
  bool status;

  User(
      {this.avatar,
      this.userID,
      this.userName,
      this.phone,
      this.address,
      this.email,
      this.sex,
      this.birtchDay,
      this.joinDate,
      this.status});

  static User createUser() {
    User newUser = User(
        avatar:
            'https://danongonline.com.vn/wp-content/uploads/2018/02/anh-girl-xinh-mat-moc-9.jpg',
        userID: 'leduytuanvu.work@gmail.com',
        userName: 'le duy tuan vu',
        phone: '0961191732',
        address: '115 Đoàn Thị Điểm, Lộc Thanh, Bảo Lộc, Lâm Đồng',
        email: 'leduytuanvu.work@gmail.com',
        birtchDay: DateTime.now(),
        joinDate: DateTime.now(),
        status: true);
    return newUser;
  }
}
