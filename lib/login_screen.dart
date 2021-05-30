import 'package:flutter/material.dart';
import 'package:phantom_wallet_clone/home_screen.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _textController = TextEditingController();
  bool _btnEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Phantom.app'),
        backgroundColor: Color(0xFF292929),
      ),
      body: Container(
        child: Container(
          padding: EdgeInsets.all(30),
          child: Column(
            children: [
              Image.asset('images/logo.png', width: 150, height: 150),
              SizedBox(height: 20),
              Text(
                'Enter your username',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                autovalidateMode: AutovalidateMode.always,
                validator: (String username) {
                  bool isFilled = username.length > 0;
                  if (isFilled != _btnEnabled) {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      setState(() {
                        _btnEnabled = username.length > 0;
                      });
                    });
                  }
                },
                maxLines: 1,
                cursorColor: Colors.black54,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black54, width: 2.0),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  hintText: 'Username',
                  suffixIcon: IconButton(
                    icon: Icon(
                      Icons.clear,
                      color: Colors.black54,
                    ),
                    onPressed: () => _textController.clear(),
                  ),
                ),
                controller: _textController,
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: _btnEnabled
                          ? () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return HomeScreen(
                                        '${_textController.text}');
                                  },
                                ),
                              )
                          : null,
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          'Unlock',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );

    @override
    void dispose() {
      _textController.dispose();
      super.dispose();
    }
  }
}
