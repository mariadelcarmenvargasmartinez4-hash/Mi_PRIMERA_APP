import 'package:flutter/material.dart';

class SnackbarsScreen extends StatelessWidget {
  static const String name = 'snackbar-screen';

  const SnackbarsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Snackbar Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
              onPressed: () {},
              child: Text('Licencias Usadas'),
            ),

            FilledButton.tonal(
              onPressed: () {},
              child: Text('Mostrar Diálogo')
            ),
          ]
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: Text('Mostrar Snackbar'),
        icon: Icon(Icons.remove_red_eye_outlined),
      )
    );
  }
  openDialog(BuildContext context){
    showDialog(
      context: context,
      builder:(context) => AlertDialog(
        title: Text('Licencias Usadas'),
        content: Text('Dolor cillum reprehenderit incididunt velit officia ad ut pariatur dolore irure minim.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('Cancelar'),
          ),
          FilledButton(
            onPressed: () => Navigator.pop(context),
            child: Text('Aceptar'),
          )
        ],
      ),
    );
  }

  showCustomSnackbar(){ }
}