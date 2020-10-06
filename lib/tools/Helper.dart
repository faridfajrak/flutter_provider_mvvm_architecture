class Helper{

  static String numToStr(int number)
  {
    try {
      return number.toString();
    } on Exception catch(ex){
      return '';
    }
    catch(error)
    {
      return '';
    }
  }

  static int strToNum(String str)
  {
    try {
      return int.parse(str);
    } on Exception catch(ex){
      return 0;
    }
    catch(error)
    {
      return 0;
    }
  }
}