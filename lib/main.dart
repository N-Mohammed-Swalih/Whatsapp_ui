import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.teal),
      home: const Whatsapp(),
    );
  }
}

// ignore: camel_case_types
class Whatsapp extends StatelessWidget {
  const Whatsapp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chats"),
      ),
      body: SafeArea(
        child: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              title: Text("Name : Person ${index + 1}"),
              subtitle: Text("Message ${index*10}"),
              leading: const CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage("./assets/avatar.png"),
              ),
              trailing: Text("1$index:00"),
            );
          },
          separatorBuilder: (context, index) {
            return const Divider();
          },
          itemCount: 50,
        ),
      ),
    );
  }
}
