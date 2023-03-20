import '../components/images/images.dart';

class UserModel {
  String? uid;
  String? email;
  String? phoneNumber;
  String? about;
  String? image;
  String? orders;
  String? name;

  UserModel(
      {this.uid,
      this.email,
      this.phoneNumber,
      this.about,
      this.image,
      this.name,
      this.orders});
}

List<UserModel> users = [
  UserModel(
      name: 'SherAli ktk',
      orders: '12',
      uid: '123456',
      email: 'skhattak30@gmal.com',
      phoneNumber: '03359305593',
      image: Images.google),
  UserModel(
      name: 'hello world',
      orders: '8',
      uid: '1123123',
      email: 'abc123@gmal.com',
      phoneNumber: '03359305593',
      image: Images.google),
  UserModel(
      name: 'demo data',
      orders: '5',
      uid: '5512323',
      email: 'xyz123@gmail.com',
      phoneNumber: '03359305593',
      image: Images.google),
  UserModel(
      name: 'demo user',
      orders: '4',
      uid: '2331320',
      email: 'demo@gmal.com',
      phoneNumber: '123321321',
      image: Images.google),
  UserModel(
      name: 'demo user 2',
      orders: '0',
      uid: '5432321',
      email: 'demo213@gmal.com',
      phoneNumber: '032313321',
      image: Images.google),
  UserModel(
      name: 'demo user 2',
      orders: '0',
      uid: '5432321',
      email: 'demo213@gmal.com',
      phoneNumber: '032313321',
      image: Images.google),
  UserModel(
      name: 'demo user 2',
      orders: '0',
      uid: '5432321',
      email: 'demo213@gmal.com',
      phoneNumber: '032313321',
      image: Images.google),
  UserModel(
      name: 'demo user 2',
      orders: '0',
      uid: '5432321',
      email: 'demo213@gmal.com',
      phoneNumber: '032313321',
      image: Images.google),
  UserModel(
      name: 'demo user 2',
      orders: '0',
      uid: '5432321',
      email: 'demo213@gmal.com',
      phoneNumber: '032313321',
      image: Images.google),
  UserModel(
      name: 'demo user 2',
      orders: '0',
      uid: '5432321',
      email: 'demo213@gmal.com',
      phoneNumber: '032313321',
      image: Images.google),
];
