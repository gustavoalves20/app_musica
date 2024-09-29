import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    TextEditingController _emailController = TextEditingController();
    TextEditingController _passwordController = TextEditingController();

    var altura = MediaQuery.of(context).size.height;
    var largura = MediaQuery.of(context).size.width;
    var alturaLogo = 0.20;
    var alturaContainer = 0.07;

    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/logo.png', height: altura * alturaLogo),
          Padding(
            padding: const EdgeInsets.only(top: 50, bottom: 25, left: 20, right: 20),
            child: SizedBox(
              height: altura * alturaContainer,
              child: TextField(
                controller: _emailController,
                cursorColor: const Color(0xFF1E90FF),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(20),
                  hintText: 'Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Color(0xFF1E90FF),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Color(0xFF1E90FF),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
            child: SizedBox(
              height: altura * alturaContainer,
              child: TextField(
                controller: _passwordController,
                cursorColor: const Color(0xFF1E90FF),
                obscureText: true,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(20),
                  hintText: 'Senha',
                  suffixIcon: const Icon(Icons.visibility),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Color(0xFF1E90FF),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Color(0xFF1E90FF),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Esqueci a senha",
                    style: TextStyle(
                      color: Color(0xFF757575),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
            child: SizedBox(
              height: altura * alturaContainer,
              width: largura,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF1E90FF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  "Fazer login",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
