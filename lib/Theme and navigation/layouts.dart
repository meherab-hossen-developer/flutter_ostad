import 'package:flutter/material.dart';
import 'listView.dart';

class Layouts extends StatelessWidget {
  const Layouts({super.key});

  @override
  Widget build(BuildContext context) {

    final _formKey = GlobalKey<FormState>();
    TextEditingController phoneNumber = TextEditingController();
    TextEditingController passWord = TextEditingController();
    return Scaffold(

      appBar: AppBar(

        backgroundColor: Color.fromRGBO(20, 13, 73, 1.0),
        centerTitle: true,
        title: Text('Layouts', style: TextStyle(

          color: Colors.white,
        ),)
      ),
      
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          // Align(
          //   alignment: AlignmentDirectional.center,
          //   child: Image.asset(
          //     'asset/facebookLogo.jpg',
          //
          //     height: 50,
          //     width: 200,
          //   ),
          // ),

          SizedBox(

            height: 10,
          ),

          // Image.network(
          //
          //   'https://th.bing.com/th/id/R.d5fb0ef361f7bfca6069e1978ff73438?rik=nn9y6PCwvDZ0Hg&riu=http%3a%2f%2fpixelwibes.com%2fpublic%2ffront%2fimages%2fservice%2fflutter-logo.png&ehk=W8I4AdZ3kl%2by5VA47lTlDr%2blO%2fkCEtsX5pYCnrrNt7I%3d&risl=&pid=ImgRaw&r=0',
          //
          //   height: 50,
          //   width: 50,
          // ),
          // SizedBox(
          //   child: Image.asset(
          //
          //     'asset/flutterimg1.jpg',
          //     height: 50,
          //     width: 50,
          //   ),
          // ),

          Text('Login with phone and password',style: TextStyle(


            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),),

          SizedBox(
            height: 10,
          ),

          Form(
            key: _formKey,
            child: Column(
            children: [

              TextFormField(

                controller: phoneNumber,
                decoration: InputDecoration(

                  hintText: 'Phone number',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                ),
                validator: (value){

                  if(value == null || value.isEmpty){

                    return 'Please enter valid phone number';
                  }else if(value.length != 11){

                    return 'Please enter 11 digit phone number';
                  }
                  else{

                    return null;
                  }
                }
              ),

              SizedBox(
                height: 20,
              ),

              TextFormField(

                controller: passWord,
                obscureText: true,
                decoration: InputDecoration(

                    hintText: 'Password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                    )
                ),
                  validator: (value){

                    if(value == null || value.isEmpty){

                      return 'Please enter valid password';
                    }
                    else if(value.length < 6){

                      return 'Your password should at least 6 characters';
                    }
                    else{

                      return null;
                    }
                  }
              ),
            ],
          )),

          SizedBox(
            height: 20,
          ),

          Align(
            alignment: Alignment.center,
            child: ElevatedButton

              (onPressed: () {

              if(_formKey.currentState!.validate()){

                Navigator.push(context, MaterialPageRoute(builder: (context)=> listV()));
              }
            }, child: Text('Submit')),
          ),
          
          Align(
            alignment: Alignment.center,
            child: TextButton
              (onPressed: () {}, child: Text('Forgot password?')),
          ),

          ElevatedButton(onPressed: (){

            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => listV()),
            );
          }, child: Text('Layouts')),
        ],
      ),
    );
  }
}
