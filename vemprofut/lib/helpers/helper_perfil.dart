import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

final String perfilTable = "perfilTable";
final String idColumn = "idColumn";
final String nameColumn = "nomeColumn";
final String cidadeColumn = "cidadeColumn";
final String posicaoColumn = "posicaoColumn";
final String idadeColumn = "idadeColumn";
final String sexoColumn = "sexoColumn";

class PerfilHelper{

  static final PerfilHelper _instance = PerfilHelper.internal();

  factory PerfilHelper() => _instance;

  PerfilHelper.internal();

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
    final path = join(databasesPath, "perfsnew.db");

    return await openDatabase(path,version: 1,onCreate: (Database db,int newerVersion) async{
      await db.execute(
          "CREATE TABLE $perfilTable($idColumn INTEGER PRIMARY KEY, $nameColumn TEXT, $cidadeColumn TEXT, $posicaoColumn TEXT,"
              "$idadeColumn TEXT, $sexoColumn TEXT,) "
      );
    });
  }

  Future <Perfil> savePerfil(Perfil perfil) async{
    Database dbPerfil = await db;
    perfil.id = await dbPerfil.insert(perfilTable, perfil.toMap());
    return perfil;
  }

  Future <Perfil> getPerfil(int id) async{
    Database dbPerfil = await db;
    List<Map> maps = await dbPerfil.query(perfilTable,
        columns: [idColumn,nameColumn,cidadeColumn,posicaoColumn,idadeColumn,sexoColumn],
        where: "$idColumn = ?",
        whereArgs: [id]);
    if(maps.length > 0){
      return Perfil.fromMap(maps.first);
    }else{
      return null;
    }
  }

  Future<int> deletePerfil(int id) async {
    Database dbPerfil = await db;
    return await dbPerfil.delete(perfilTable, where: "$idColumn = ?",whereArgs: [id]);
  }

  Future <int> updatePerfil(Perfil perf) async{
    Database dbPerfil = await db;
    return await dbPerfil.update(perfilTable, perf.toMap(),where: "$idColumn = ?",whereArgs: [perf.id]);
  }

  Future<List> getAllPerfil() async {
    Database dbPerfil = await db;
    List listMap = await dbPerfil.rawQuery("SELECT * FROM $perfilTable");
    List<Perfil> listPerfil = List();
    for(Map m in listMap){
      listPerfil.add(Perfil.fromMap(m));
    }
    return listPerfil;
  }

  Future<int> getNumber() async {
    Database dbPerfil = await db;
    return Sqflite.firstIntValue(await dbPerfil.rawQuery("SELECT COUNT(*) FROM $perfilTable"));
  }

  Future close() async{
    Database dbPerfil = await db;
    dbPerfil.close();
  }

}



class Perfil {

  int id;
  String name;
  String cidade;
  String posicao;
  String idade;
  String sexo;

  Perfil();

  Perfil.fromMap(Map map){
    name = map[nameColumn];
    cidade = map[cidadeColumn];
    posicao= map[posicaoColumn];
    idade = map[idadeColumn];
    sexo = map[sexoColumn];


  }

  Map toMap(){
    Map<String, dynamic> map = {
      nameColumn: name,
      cidadeColumn: cidade,
      posicaoColumn: posicao,
      idadeColumn: idade,
      sexoColumn: sexo,

    };
    if(id!=null){
      map[idColumn] = id;
    }
    return map;
  }

  @override
  String toString() {
    return "Fut(id: $idColumn, name: $name, cidade: $cidade, posicao: $posicao, idade: $idade, sexo: $sexo)";
  }

}