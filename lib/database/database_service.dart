import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseService {
  static final DatabaseService _instance = DatabaseService._internal();
  static Database? _database;

  // Construtor interno privado
  DatabaseService._internal();

  // Construtor que retorna à instância privada ao invés de criar uma nova
  factory DatabaseService() {
    return _instance;
  }

  // Getter do atributo database, cria uma nova instância se _database for nula
  // Reusa a instância criada após inicialização do banco
  Future<Database> get database async {
    if (_database != null) return _database!;

    _database = await _initialize();
    return _database!;
  }

  // Método para iniciar o banco e criar as tabelas
  Future<Database> _initialize() async {
    String path = join(await getDatabasesPath(), 'app.db');

    return await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );
  }

  // Método privado executado  ao inicializar o banco
  Future _onCreate(Database db, int version) async {
    // Inicialização de cada tabela com respectivo CRUD
  }

  // Fecha a conexão com o banco
  Future close() async {
    final Database db = await database;
    await db.close();
    _database = null;
  }
}
