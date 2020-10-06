import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_generic_provider_mvvm/generics/view_model_provider.dart';
import 'package:flutter_generic_provider_mvvm/view_model/main_screen_view_model.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelProvider<MainScreenViewModel>(
        viewModel: MainScreenViewModel(context: context),
        builder: (viewModel) {
          return SafeArea(
              child: Scaffold(
            appBar: AppBar(
              title: Text('Flutter Starter App Provider_MVVM'),
              centerTitle: true,
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Current Value',
                  ),
                  Text(
                    '${viewModel.model.currentValue}',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ],
              ),
            ),
            floatingActionButton: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  heroTag: 'floating_2',
                  onPressed: (){
                    viewModel.decreaseCurrentNumber();
                  },
                  tooltip: 'Decrement',
                  child: Icon(Icons.remove),
                ),

                SizedBox(width: 10,),
                FloatingActionButton(
                  heroTag: 'floating_1',
                  onPressed: (){
                    viewModel.increaseCurrentNumber();
                  },
                  tooltip: 'Increment',
                  child: Icon(Icons.add),
                ),



              ],
            )
             // This trailing comma makes auto-formatting nicer for build methods.
          ));
        });
  }
}
