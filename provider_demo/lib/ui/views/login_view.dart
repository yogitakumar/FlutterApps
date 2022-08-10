import 'package:flutter/material.dart';
import 'package:providerdemo/core/enums/viewstate.dart';
import 'package:providerdemo/core/viewmodels/login_model.dart';
import 'package:providerdemo/ui/shared/app_colors.dart';
import 'package:providerdemo/ui/widgets/login_header.dart';

import 'base_view.dart';

class LoginView extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BaseView<LoginModel>(
      builder: (context, model, child) => Scaffold(
        backgroundColor: backgroundColor,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            LoginHeader(
                validationMessage: model.errorMessage, controller: _controller),
            model.state == ViewState.Busy
                ? CircularProgressIndicator()
                : FlatButton(
              color: Colors.white,
              child: Text(
                'Login',
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () async {
                var loginSuccess = await model.login(_controller.text);
                if (loginSuccess) {
                  Navigator.pushNamed(context, '/');
                }
              },
            )
          ],
        ),
      ),
    );
  }
}