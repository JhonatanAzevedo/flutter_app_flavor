enum Flavor {
  DEV,
  PROD,
}

extension FlavorName on Flavor {
  String get name => this.toString().split('.').last;
}

class F {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static String get title {
    switch (appFlavor) {
      case Flavor.DEV:
        return 'Flavor App Dev';
      case Flavor.PROD:
        return 'Flavor app prod';
      default:
        return 'title';
    }
  }

}
