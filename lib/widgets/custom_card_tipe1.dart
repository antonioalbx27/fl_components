import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardTipe1 extends StatelessWidget {
  const CustomCardTipe1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
     child: Column(
       children: [
             ListTile(
               leading: Icon(Icons.accessible_forward_rounded, color: AppTheme.primary),
               title: Text('Aqui hay un gran titulo'),
               subtitle: Text('Sit duis aute ullamco excepteur occaecat et. Dolor magna non laboris consectetur. Ea minim dolor est cupidatat sunt adipisicing ipsum. Aute eu dolore cillum minim anim magna ipsum reprehenderit minim exercitation aute laboris Lorem veniam. Duis non proident eiusmod enim incididunt deserunt elit irure. Irure adipisicing elit officia exercitation excepteur consequat. Culpa dolor ullamco laborum irure dolore occaecat veniam.'),
             ),
             Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {}, 
                  style: TextButton.styleFrom(foregroundColor: Colors.green),
                child: Text('Cancelar')
                ),
                TextButton(
                  onPressed: () {}, 
                child: Text('Cancelar')
                )
              ],
             ),
       ],
     ),
    );
  }
}