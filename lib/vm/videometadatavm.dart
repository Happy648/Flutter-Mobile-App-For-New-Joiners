import 'package:app/model/network.dart';
import 'package:app/vm/constant.dart';

class VideoMetaDataVM {
  var network = NetworkCall();
  Future<List> videolist() async {
    Future<List> list = network.readJson(path);
    list = sortbydate(list);
    return list;
  }

  Future<List> sortbydate(Future<List> list) async {
    //Apply sort here
    List l = await list;
    l.sort((b, a) => a['date'].compareTo(b['date']));

    return l;
  }
}
