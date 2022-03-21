/*
map and list demo

1. map to list.

2. lists to map.


*/

void main(List<String> arguments) {
  Map mmap = <String, String>{
    'aaaaa': '1111',
    'bbbbb': '22222',
    'ccccc': '33333'
  };
// 1. map to list.
  var getlist = Map2List(mmap);
  List kkk = getlist.keylist();
  List vvv = getlist.vallist();
// 2. lists to map.
  Map map = {};

  for (var ii = 0; ii < kkk.length; ii++) {
    map.addAll({kkk[ii]: vvv[ii]});
  }

  print(map);
}

class Map2List {
  List kkk = [];
  List vvv = [];

  Map2List(mmap) {
    for (var iii in mmap.entries) {
      kkk.add(iii.value);
      vvv.add(iii.key);
    }
  }
  List keylist() => kkk;
  List vallist() => vvv;
  // update
}
