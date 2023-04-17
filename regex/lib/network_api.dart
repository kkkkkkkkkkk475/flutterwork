import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:regex/user_details.dart';

class NetWorkApiCalls {
  final dio = Dio();

  Future<List<UserDetails>> getUserDetails() async {
    List<UserDetails> userData = [];
    Response response = await dio.get(
        'https://6438d4024660f26eb1a4210b.mockapi.io/userDetails/user_details');

    if (response.data != null && response.data.isNotEmpty) {
      for (var element in response.data) {
        UserDetails userDetails = UserDetails.fromJson(element);
        print([userDetails.email, userDetails.firstName, userDetails.lastName]);
        userData.add(userDetails);
      }
    }
    print(userData.length);
    return userData;
  }


  
}
