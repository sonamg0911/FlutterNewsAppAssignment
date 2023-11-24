import 'package:intl/intl.dart';

String formatDate(String timestamp) {
  try{
    var date = DateTime.parse(timestamp);
    return DateFormat('EEEE MMMM dd, yyyy').format(date);
  }catch(e){
    return DateFormat('EEEE MMMM dd, yyyy').format(DateTime.now());
  }

}
