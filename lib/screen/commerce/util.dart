
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';

class Util {
  static NumberFormat nformat = NumberFormat("###,###,###,###");

  static void showToast(String msg) {
    Fluttertoast.cancel();
    Fluttertoast.showToast(msg: msg);
  }
}