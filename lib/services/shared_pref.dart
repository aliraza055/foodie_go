import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefercesHelper{
  static String userIdKey='USERKEY';
  static String nameIdKey='NAMEKEY';
  static String gmailIDkey='GMAILKEY';
  setUserID(String id)async{
    SharedPreferences pref=await SharedPreferences.getInstance();
    pref.setString(userIdKey,id );
  }
}