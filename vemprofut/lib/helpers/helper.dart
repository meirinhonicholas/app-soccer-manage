import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

final String futTable = "futTable";
final String idColumn = "idColumn";
final String nameColumn = "nameColumn";
final String dateColumn = "dateColumn";
final String localColumn = "localColumn";
final String imgColumn = "imgColumn";
final String typeColumn = "typeColumn";
final String valorColumn = "valorColumn";
final String nivelColumn = "nivelColumn";

class FutHelper{

  static final FutHelper _instance = FutHelper.internal();

  factory FutHelper() => _instance;

  FutHelper.internal();

  Database _db;

  Future<Database >get db async{
    if(_db != null) {
      return _db;
    }
    else {
      _db = await initDb();
      return _db;
    }
  }

  Future<Database> initDb() async{
    final databasesPath = await getDatabasesPath();
    final path = join(databasesPath, "futsnew.db");

    return await openDatabase(path,version: 1,onCreate: (Database db,int newerVersion) async{
      await db.execute(
          "CREATE TABLE $futTable($idColumn INTEGER PRIMARY KEY, $nameColumn TEXT, $dateColumn TEXT,"
              "$localColumn TEXT, $imgColumn TEXT, $typeColumn TEXT, $valorColumn TEXT, $nivelColumn TEXT) "
      );
    });
  }

  Future <Fut> saveFut(Fut contact) async{
    Database dbFut = await db;
    contact.id = await dbFut.insert(futTable, contact.toMap());
    return contact;
  }

  Future <Fut> getFut(int id) async{
    Database dbFut = await db;
    List<Map> maps = await dbFut.query(futTable,
        columns: [idColumn,nameColumn,dateColumn,localColumn,imgColumn,typeColumn,valorColumn,nivelColumn],
        where: "$idColumn = ?",
        whereArgs: [id]);
    if(maps.length > 0){
      return Fut.fromMap(maps.first);
    }else{
      return null;
    }
  }

  Future<int> deleteFut(int id) async {
    Database dbFut = await db;
    return await dbFut.delete(futTable, where: "$idColumn = ?",whereArgs: [id]);
  }

  Future <int> updateFut(Fut fut) async{
    Database dbFut = await db;
    return await dbFut.update(futTable, fut.toMap(),where: "$idColumn = ?",whereArgs: [fut.id]);
  }

  Future<List> getAllFuts() async {
    Database dbFut = await db;
    List listMap = await dbFut.rawQuery("SELECT * FROM $futTable");
    List<Fut> listFut = List();
    for(Map m in listMap){
      listFut.add(Fut.fromMap(m));
    }
    return listFut;
  }

  Future<int> getNumber() async {
    Database dbFut = await db;
    return Sqflite.firstIntValue(await dbFut.rawQuery("SELECT COUNT(*) FROM $futTable"));
  }

  Future close() async{
    Database dbFut = await db;
    dbFut.close();
  }

}



class Fut {

  int id;
  String name;
  String date;
  String local;
  String img;
  String type;
  String valor;
  String nivel;

  Fut();

  Fut.fromMap(Map map){
    id = map[idColumn];
    name = map[nameColumn];
    date= map[dateColumn];
    local = map[localColumn];
    img = map[imgColumn];
    type = map[typeColumn];
    valor = map[valorColumn];
    nivel = map[nivelColumn];


  }

  Map toMap(){
    Map<String, dynamic> map = {
      nameColumn: name,
      dateColumn: date,
      localColumn: local,
      imgColumn: img,
      typeColumn: type,
      valorColumn: valor,
      nivelColumn: nivel,

    };
    if(id!=null){
      map[idColumn] = id;
    }
    return map;
  }

  @override
  String toString() {
    return "Fut(id: $id, name: $name, data: $date, local: $local, img: $img, type: $type, valor:$valor, nivel:$nivel)";
  }

}