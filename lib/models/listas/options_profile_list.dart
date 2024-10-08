import 'package:flutter/material.dart';

import '../parametros/options_profile.dart';

class OptionsProfileList {
  static List<OptionsProfile> get optionsProfile {
    return [
      OptionsProfile(title: 'Perfil do usuário', subTitle: 'Editar dados pessoais', nomeIcon: const Icon(Icons.edit_rounded)),
      OptionsProfile(title: 'Configurações', subTitle: 'Gerais e segurança', nomeIcon: const Icon(Icons.settings_rounded)),
      OptionsProfile(title: 'Atividades', subTitle: 'Histórico de atividades', nomeIcon: const Icon(Icons.history_rounded)),
      OptionsProfile(title: 'Assinatura', subTitle: 'Planos e pagamentos', nomeIcon: const Icon(Icons.payment_rounded)),
      OptionsProfile(title: 'Suporte', subTitle: 'Central de ajuda', nomeIcon: const Icon(Icons.help_rounded)),
      OptionsProfile(title: 'Sair', subTitle: 'Sair do aplicativo', nomeIcon: const Icon(Icons.logout_rounded)),
    ];
  }
}