class PoliciesModel {
  final String icon;
  final String title;
  final String route;

  PoliciesModel({
    required this.icon,
    required this.title,
    required this.route,
  });

  static List<PoliciesModel> policies = <PoliciesModel>[
    PoliciesModel(
      icon: 'assets/mortarboard.png',
      title: 'Universal Life',
      route: 'motorinsurance',
    ),
    PoliciesModel(
      icon: 'assets/terms-and-conditions.png',
      title: 'Term Life',
      route: 'firepolicy',
    ),
    PoliciesModel(
      icon: 'assets/donator.png',
      title: 'Endowment',
      route: 'generalaccident',
    ),
    PoliciesModel(
      icon: 'assets/mortgage.png',
      title: 'Group Mortage Plan',
      route: 'marineinsurance',
    ),
    PoliciesModel(
      icon: 'assets/shield.png',
      title: 'Group Security Plan',
      route: 'bondinsurance',
    ),
    PoliciesModel(
      icon: 'assets/award.png',
      title: 'Group Final Journey Plan',
      route: 'bondinsurance',
    ),
  ];
}
