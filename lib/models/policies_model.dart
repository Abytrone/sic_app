class PoliciesModel {
  final String icon;
  final String title;
  final String route;
  final PolicyProducts products;

  PoliciesModel({
    required this.icon,
    required this.title,
    required this.route,
    required this.products,
  });

  static List<PoliciesModel> policies = <PoliciesModel>[
    PoliciesModel(
      icon: 'assets/mortarboard.png',
      title: 'Universal Life',
      route: 'universal',
      products: PolicyProducts(
        title: [
          'Education Plus Plan',
          'Ultimate Family Security Plan',
        ],
      ),
    ),
    PoliciesModel(
      icon: 'assets/terms-and-conditions.png',
      title: 'Term Life',
      route: 'term',
      products: PolicyProducts(
        title: [
          'Keyman Assurance',
          'School Fees Protection Plan',
          'Mortgage Protection Plan',
        ],
      ),
    ),
    PoliciesModel(
      icon: 'assets/donator.png',
      title: 'Endowment',
      route: 'endowment',
      products: PolicyProducts(
        title: [
          'Guaranteed Endowment Plan',
        ],
      ),
    ),
    PoliciesModel(
      icon: 'assets/mortgage.png',
      title: 'Group Mortage Plan',
      route: 'mortgage',
      products: PolicyProducts(
        title: [
          'Group Mortage Plan',
        ],
      ),
    ),
    PoliciesModel(
      icon: 'assets/shield.png',
      title: 'Group Security Plan',
      route: 'security',
      products: PolicyProducts(
        title: [
          'Group Security Plan',
        ],
      ),
    ),
    PoliciesModel(
      icon: 'assets/award.png',
      title: 'Group Final Journey Plan',
      route: 'journey',
      products: PolicyProducts(
        title: [
          'Group Final Journey Plan',
        ],
      ),
    ),
  ];
}

class PolicyProducts {
  final List<String> title;

  PolicyProducts({required this.title});
}
