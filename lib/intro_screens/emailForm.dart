import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:quickalert/quickalert.dart';

class EmailForm extends StatefulWidget {

  const EmailForm({Key? key}) : super(key: key);

  @override
  State<EmailForm> createState() => _EmailFormState();
}

class _EmailFormState extends State<EmailForm> {
  final controllerName=TextEditingController();
  final controllerEmail=TextEditingController();
  final controllerSubject=TextEditingController();
  final controllerMessage=TextEditingController();
  @override
  Widget build(BuildContext context)=>Scaffold(

    appBar:AppBar(
      title:const Text("Send request"),
      centerTitle: true,
    ),
  body: SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child:Column(
      children: [
        buildTextField(title:'Name',controller:controllerName),
        const SizedBox(height: 16),
        buildTextField(title:'Email',controller:controllerEmail),
        const SizedBox(height: 16),
        buildTextField(title: 'Subject', controller: controllerSubject),
        const SizedBox(height: 16),
        buildTextField(title: 'Message',
            controller: controllerMessage,
            maxLines:8,
        ),
        const SizedBox(height: 32),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            minimumSize: const Size.fromHeight(50),
            textStyle: const TextStyle(fontSize: 20),
          ),
          child: const Text('SEND'),
          onPressed: () {
            SendEmail(
              name: controllerName.text,
              email: controllerEmail.text,
              subject: controllerSubject.text,
              message: controllerMessage.text,
            );
            showAlert();
          }
          )
        ],
      ) ,
  ),
  );

  void showAlert(){
    QuickAlert.show(
      context: context,
      type: QuickAlertType.success,
    ); // That's it to display an alert, use other properties to customize.
  }

  Future SendEmail({
    required String name,
    required String email,
    required String subject,
    required String message,
  })async{
    const serviceId='service_5ruj3yd';
    const templateId='template_tsfvxfq';
    const userId='DpPMjWH9mApV0-Hj8';
    final url=Uri.parse('https://api.emailjs.com/api/v1.0/email/send');
    final response=await http.post(
        url,
      headers: {
          // 'origin':'http://localhost',
          'Content-Type':'application/json',
      },
      body:json.encode({
          'service_id':serviceId,
          'template_id':templateId,
          'user_id':userId,
        'template_params':{
            'user_name':name,
          'to_email':'26983014rayen@gmail.com',
          'user_email':email,
          'user_subject':subject,
          'user_message':message,
        },
      }),
    );
    print(response.body);
  }


  Widget buildTextField({
  required String title,
  required TextEditingController controller,
  int maxLines=1,
})=>Column(
    crossAxisAlignment:CrossAxisAlignment.start,
    children: [
      Text(
        title,
        style: const TextStyle(fontSize:20,fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 8),
      TextField(
        controller: controller,
        maxLines: maxLines,
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
        ),
      ),
    ],
  );
}













