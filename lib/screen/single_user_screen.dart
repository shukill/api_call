import 'package:dio/dio.dart';
import 'package:apicall/http_service.dart';
import 'package:apicall/model/single_user_reponse.dart';
import 'package:apicall/model/user.dart';
import 'package:flutter/material.dart';

class SingleUserScreen extends StatefulWidget {
  @override
  _SingleUserScreenState createState() => _SingleUserScreenState();
}

class _SingleUserScreenState extends State<SingleUserScreen> {
  HttpService http;

  SingleUserResponse singleUserResponse;
  User user;

  bool isLoading = false;

  Future getUser() async {
    Response response;
    try {
      isLoading = true;

      response = await http.getRequest(
          "/api/customer/current_booking?API_KEY=70FF52C593B828281A&id=72&on_the_go=\$on_the_go");

      isLoading = false;

      if (response.statusCode == 200) {
        setState(() {
          singleUserResponse = SingleUserResponse.fromJson(response.data);
          user = singleUserResponse.user;
        });
      } else {
        print("There is some problem status code not 200");
      }
    } on Exception catch (e) {
      isLoading = false;
      print(e);
    }
  }

  @override
  void initState() {
    http = HttpService();

    getUser();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Get Single user"),
      ),
      body: isLoading
          ? Center(child: CircularProgressIndicator())
          : user != null
              ? Container(
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ListTile(
                        title: Text('Provider Name'),
                        subtitle: Text("Hello, ${user.provider_name}"),
                      ),
                      ListTile(
                        title: Text('Provider Email'),
                        subtitle: Text("Hello, ${user.provider_email}"),
                      ),
                      ListTile(
                        title: Text('Start Date'),
                        subtitle: Text("Hello, ${user.start_date}"),
                      ),
                      ListTile(
                        title: Text('Provider Phone'),
                        subtitle: Text("Hello, ${user.provider_phone}"),
                      ),
                    ],
                  ),
                )
              : Center(child: Text("No User Object")),
    );
  }
}
