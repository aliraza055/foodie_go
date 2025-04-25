import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefercesHelper{
  static String userIdKey='USERKEY';
  static String nameIdKey='NAMEKEY';
  static String gmailIDkey='GMAILKEY';
    static String adressIDkey='ADRESSKEY';



  setUserID(String id)async{
    SharedPreferences pref=await SharedPreferences.getInstance();
  return  pref.setString(userIdKey,id );
  }
   getUserID()async{
    SharedPreferences pref=await SharedPreferences.getInstance();
   return pref.getString(userIdKey);
  }
  setUserName(String name)async{
    SharedPreferences pref=await SharedPreferences.getInstance();
    pref.setString(nameIdKey, name);
  }
  getUserName()async{
 SharedPreferences pref=await SharedPreferences.getInstance();
    return pref.getString(nameIdKey);

  }
    setUserGmail(String gmail)async{
    SharedPreferences pref=await SharedPreferences.getInstance();
  return  pref.setString(gmailIDkey,gmail );
  }
    getUserGmail()async{
 SharedPreferences pref=await SharedPreferences.getInstance();
    return pref.getString(gmailIDkey);

  }
}
