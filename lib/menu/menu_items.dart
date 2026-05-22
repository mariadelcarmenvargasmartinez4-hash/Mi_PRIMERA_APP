import 'package:flutter/material.dart';

class MenuItems{
  final String title;
  final String subtitle;
  final String url;
  final IconData icon;

  const MenuItems({
    required this.title,
    required this.subtitle,
    required this.url,
    required this.icon,
  });
}

const appMenuItems = <MenuItems>[
  MenuItems(
    title: 'Botones',
    subtitle: 'Varios Botones en Flutter',
    url: '/buttons',
    icon: Icons.smart_button_rounded,
  ),
  MenuItems(
    title: 'Tarjetas',
    subtitle: 'Un contenedor estilizado',
    url: '/cards',
    icon: Icons.card_membership,
  ),
  MenuItems(
    title: 'Pogress indicator',
    subtitle: 'Generales y controles',
    url: '/progress',
    icon: Icons.refresh_rounded,
  ),

  MenuItems(
    title: 'Snackbars y Diálogos',
    subtitle: 'Indicadores en Pantallas',
    url: '/snackbars',
    icon: Icons.info_outline_rounded,
  ),

  MenuItems(
    title: 'Animated Container',
    subtitle: 'Stateful Widget ',
    url: '/animated',
    icon: Icons.check_box_outline_blank_rounded,
  ),
   MenuItems(
    title: 'Introduccion a la aplicacion',
    subtitle: 'Tutorial Introductorio ',
    url: '/tutorial',
    icon: Icons.check_box_outline_blank_rounded,
  ),
  MenuItems(
    title: 'Cambiar tema',
    subtitle: 'Cambiar el tema de la aplicacion',
    url: '/theme-changer',
    icon: Icons.color_lens_outlined,
  ),
  MenuItems(
    title: 'Riverpod Counter',
    subtitle: 'Introduccion a Riverpod',
    url: '/counter-riverpod',
    icon: Icons.color_lens_outlined,
  ),
];