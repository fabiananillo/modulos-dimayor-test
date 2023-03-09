library login;

import 'package:flutter/material.dart';

class LoginPackage extends StatelessWidget {
  final String title, lableButton, helpButton;
  final List<Widget> providerButton;
  final ValueChanged<Map<String, dynamic>> dataLoginScreen;

  LoginPackage(
      {Key? key,
      required this.title,
      required this.lableButton,
      required this.helpButton,
      required this.providerButton,
      required this.dataLoginScreen})
      : super(key: key);

  final TextEditingController emailUser = TextEditingController();
  final TextEditingController passwordUser = TextEditingController();
  final TextEditingController numberPhoneUser = TextEditingController();
  final GlobalKey<FormState> formEmail = GlobalKey<FormState>();
  final GlobalKey<FormState> formPhone = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () => dataLoginScreen.call({}),
              icon: const CircleAvatar(child: Icon(Icons.clear)))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title),
            Image.asset(
              'assets/logos/logoDimayor.png',
              height: 150,
            ),
            Form(
              key: formEmail,
              child: Column(
                children: [
                  TextFormField(
                    controller: emailUser,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Ingresar email';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: passwordUser,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Password invalido';
                      }
                      return null;
                    },
                  ),
                  OutlinedButton(
                      onPressed: () {
                        if (formEmail.currentState!.validate()) {
                          dataLoginScreen.call({
                            'password': passwordUser.text,
                            'email': emailUser.text
                          });
                        }
                      },
                      child: Text(lableButton)),
                ],
              ),
            ),
            Stack(
              alignment: Alignment.center,
              children: const [Divider(), Text('o')],
            ),
            Form(
              key: formPhone,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextFormField(
                    controller: numberPhoneUser,
                  ),
                  OutlinedButton(
                      onPressed: () {
                        if (formPhone.currentState!.validate()) {
                          dataLoginScreen.call({'phone': numberPhoneUser.text});
                        }
                      },
                      child: const Text('SMS')),
                ],
              ),
            ),
            const Text('Continua con'),
            SizedBox(height: 300,child: providerButton.first),
            // Row(
            //   crossAxisAlignment: CrossAxisAlignment.center,
            //   children: providerButton,
            // ),
            OutlinedButton(
                onPressed: () {
                  dataLoginScreen.call({'help': 'help assistance'});
                },
                child: Text(helpButton))
          ],
        ),
      ),
    );
  }
}
