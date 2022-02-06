import 'package:flutter/material.dart';

void main() {
  // WidgetsApp //MaterialApp //CupertinoApp
  
  runApp(MaterialApp(
    home: const HomePage(),
    theme: ThemeData(
      primarySwatch: Colors.purple
    ),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Me deixa ir pro final fantasy")
      ),
      // ignore: avoid_unnecessary_containers
      body: Center(
        child: Container(
          height: 100,
          width: 100,
          color: Colors.red, 
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: <Widget> [
            const UserAccountsDrawerHeader(
              accountName: Text("Sophie"),
              accountEmail: Text("sophie.nyascimento.gamer@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/images/sophie"),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text("Perfil"),
              onTap: (){},
            ),
            const ListTile(
              leading: Icon(Icons.wallet_giftcard),
              title: Text("Pagamento"),
              subtitle: Text("Me da dinheiro"),
              trailing: Icon(Icons.edit),
            )
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.edit)
      )
    ); 
  }
}