import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Over Screens',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) => InicioSesion(),
        '/menu': (context) => MainMenu(),
        '/usuario': (context) => Usuario(),
        '/recompensas': (context) => Recompensas(),
        '/texto': (context) => Texto(),
        '/compras': (context) => Compras(),
      },
      initialRoute: '/',
    );
  }
}

class InicioSesion extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: Text('Inicio de sesión')),
        body: Builder(
          builder: (context) => Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 32),
            child: new Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 60.0),
                  child: Center(
                    child: Container(width: 200, height: 150, child: FlutterLogo()),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 15, bottom: 0),
                  child: TextField(
                    decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'Correo'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 15, bottom: 0),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'Contraseña'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 15, bottom: 0),
                  child: ElevatedButton(
                    onPressed: () => Navigator.pushNamed(context, '/menu'),
                    child: Text('Ingresar'),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}

class MainMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: Text('Menú principal')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.only(),
                  child: ElevatedButton(
                    onPressed: () => Navigator.pushNamed(context, '/usuario'),
                    child: Text('Usuario'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(),
                  child: ElevatedButton(
                    onPressed: () => Navigator.pushNamed(context, '/recompensas'),
                    child: Text('Recompensas'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(),
                  child: ElevatedButton(
                    onPressed: () => Navigator.pushNamed(context, '/texto'),
                    child: Text('Texto'),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.only(),
                  child: ElevatedButton(
                    onPressed: () => Navigator.pushNamed(context, '/compras'),
                    child: Text('Compras'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(),
                  child: ElevatedButton(
                    onPressed: () => Navigator.pushNamed(context, '/'),
                    child: Text('Deshabilitado'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(),
                  child: ElevatedButton(
                    onPressed: () => Navigator.pushNamed(context, '/'),
                    child: Text('Deshabilitado'),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: ElevatedButton(
                    onPressed: () => Navigator.pushNamed(context, '/'),
                    child: Text('Deshabilitado'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: ElevatedButton(
                    onPressed: () => Navigator.pushNamed(context, '/'),
                    child: Text('Deshabilitado'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: ElevatedButton(
                    onPressed: () => Navigator.pushNamed(context, '/'),
                    child: Text('Deshabilitado'),
                  ),
                ),
              ],
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Menú'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Usuario'),
            BottomNavigationBarItem(icon: Icon(Icons.notifications), label: 'Mensajes'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Buscar'),
          ],
          //currentIndex: _selectedIndex,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.blue,
          //onTap: _onItemTapped,
        ),
      );
}

class Usuario extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Usuario'),
      ),
      body: Builder(
        builder: (context) => Container(
          child: new Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 60.0),
                child: Center(
                  child: Container(width: 200, height: 150, child: FlutterLogo()),
                ),
              ),
              Padding(padding: const EdgeInsets.only(right: 0, top: 45, bottom: 0), child: Text("Detalles de usuario:", textAlign: TextAlign.start, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20))),
              Padding(padding: const EdgeInsets.only(right: 0, top: 15, bottom: 0), child: Text("Nombre completo", textAlign: TextAlign.start, style: TextStyle(fontSize: 20))),
              Padding(padding: const EdgeInsets.only(right: 0, top: 15, bottom: 0), child: Text("correo@ejemplo.com", textAlign: TextAlign.start, style: TextStyle(fontSize: 20))),
              Padding(padding: const EdgeInsets.only(right: 0, top: 15, bottom: 0), child: Text("+123 45678901", textAlign: TextAlign.start, style: TextStyle(fontSize: 20))),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Menú'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Usuario'),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: 'Mensajes'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Buscar'),
        ],
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.blue,
      ),
    );
  }
}

class Recompensas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recompensas'),
      ),
      body: Container(
        child: Card(
          clipBehavior: Clip.antiAlias,
          child: Column(
            children: [
              ListTile(
                leading: Icon(Icons.arrow_drop_down_circle),
                title: const Text('Recompensa'),
                subtitle: Text(
                  'Secondary Text',
                  style: TextStyle(color: Colors.black.withOpacity(0.6)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Greyhound divisively hello coldly wonderfully marginally far upon excluding.',
                  style: TextStyle(color: Colors.black.withOpacity(0.6)),
                ),
              ),
              ButtonBar(
                alignment: MainAxisAlignment.start,
                children: [
                  FlatButton(
                    textColor: const Color(0xFF6200EE),
                    onPressed: () => Navigator.pushNamed(context, '/menu'),
                    child: Text('Guardar'),
                  ),
                  FlatButton(
                    textColor: const Color(0xFF6200EE),
                    onPressed: () => Navigator.pushNamed(context, '/menu'),
                    child: Text('Volver'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Menú'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Usuario'),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: 'Mensajes'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Buscar'),
        ],
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.blue,
      ),
    );
  }
}

class Texto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Texto'),
      ),
      body: Builder(
        builder: (context) => Container(
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(horizontal: 32),
          child: new Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 15, bottom: 0),
                child: TextField(
                  decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'Texto 1'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 15, bottom: 0),
                child: TextField(
                  decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'Texto 2'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 15, bottom: 0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'Texto 3'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 15, bottom: 0),
                child: ElevatedButton(
                  onPressed: () => Navigator.pushNamed(context, '/menu'),
                  child: Text('Buscar'),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Menú'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Usuario'),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: 'Mensajes'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Buscar'),
        ],
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.blue,
      ),
    );
  }
}

class Compras extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de compras'),
      ),
      body: Container(
        child: Card(
          clipBehavior: Clip.antiAlias,
          child: Column(
            children: [
              ListTile(
                leading: Icon(Icons.arrow_drop_down_circle),
                title: const Text('Producto'),
                subtitle: Text(
                  'Descripción del producto.',
                  style: TextStyle(color: Colors.black.withOpacity(0.6)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ListTile(
                  leading: Icon(Icons.arrow_drop_down_circle),
                  title: const Text('Contacto 1'),
                  subtitle: Text(
                    'Descripción de contacto',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ListTile(
                  leading: Icon(Icons.arrow_drop_down_circle),
                  title: const Text('Contacto 2'),
                  subtitle: Text(
                    'Descripción de contacto',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ListTile(
                  leading: Icon(Icons.arrow_drop_down_circle),
                  title: const Text('Contacto 3'),
                  subtitle: Text(
                    'Descripción de contacto',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Menú'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Usuario'),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: 'Mensajes'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Buscar'),
        ],
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.blue,
      ),
    );
  }
}
