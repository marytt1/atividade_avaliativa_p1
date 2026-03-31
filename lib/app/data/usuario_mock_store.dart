import '../models/usuario_model.dart';

class UsuarioMockStore {
  static final List<UsuarioModel> usuarios = [
    UsuarioModel(
      nome: 'Mary',
      email: 'mary@cinema.com',
      senha: '1234',
    ),
  ];

  static void adicionarUsuario(UsuarioModel novoUsuario) {
    usuarios.add(novoUsuario);
  }

  static bool validarLogin(String email, String senha) {
    for (var usuario in usuarios) {
      if (usuario.email == email && usuario.senha == senha) {
        return true;
      }
    }
    return false;
  }
}