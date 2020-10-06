
import 'package:flutter/cupertino.dart';
import 'package:flutter_generic_provider_mvvm/generics/base_view_model.dart';
import 'package:flutter_generic_provider_mvvm/model/main_screen_model.dart';
import 'package:flutter_generic_provider_mvvm/tools/Helper.dart';
import 'package:flutter_generic_provider_mvvm/tools/constants.dart';

class MainScreenViewModel extends BaseViewModel{
  final BuildContext context;

  MainScreenViewModel({this.context}) : super (context: context);

  MainScreenModel model = MainScreenModel(currentValue: Helper.numToStr(kMinimumValue));

  void updateCurrentValue(int newVal)
  {
    model.currentValue = Helper.numToStr(newVal);
    notifyListeners();
  }

  void increaseCurrentNumber()
  {
    int current = Helper.strToNum(model.currentValue);
    if( current < kMaximumValue )
      {
        current++;
        updateCurrentValue(current);
      }
  }

  void decreaseCurrentNumber()
  {
    int current = Helper.strToNum(model.currentValue);
    if( current > kMinimumValue )
    {
      current--;
      updateCurrentValue(current);
    }
  }


}