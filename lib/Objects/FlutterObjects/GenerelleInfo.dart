import 'GenerelleInfoExpanded.dart';

class GenerelleInfo {
  String? headerValue;
  bool isExpanded;
  int? id;
  final List<expandedValue>? expandedValueData;

  GenerelleInfo(
      {this.headerValue,
      this.isExpanded = false,
      this.id,
      this.expandedValueData});
}

List<GenerelleInfo> generelleInfos = [
  GenerelleInfo(
    headerValue: "Außenansicht",
    id: 1,
    expandedValueData: <expandedValue>[
      expandedValue(id: 1, title: "Roststellen"),
      expandedValue(
          id: 2,
          title:
              "Farbunterschiede im Lack, Unregelmäßigkeiten: \n • Problemstellen übermalt?"),
      expandedValue(
          id: 3,
          title:
              "• Kleine Kratzer?  \n• Hinter Karosserie größere\n  Folgeschäden?"),
      expandedValue(
          id: 4,
          title: "Dichtungen an Scheiben & Türen: \n • Porös \n • Rissig?"),
      expandedValue(
          id: 5,
          title:
              "Windschutzscheibe auf Kratzer untersuchen: \n • Gefahr größerer Rissbildung"),
      expandedValue(
          id: 6,
          title:
              "• Lampen funktionsfähig? \n• Innen beschlagene Scheinwerfer? \n    → Gefahr von Wasserschaden"),
      expandedValue(
          id: 7,
          title:
              "Reifen: \n • Risse o. abgefahrenes Profil?\n • Winter & Sommerreifen?\n • Reserverad?\n • Felgen in Ordnung?"),
    ],
  ),
  GenerelleInfo(
    headerValue: "Innenraum",
    id: 2,
    expandedValueData: <expandedValue>[
      expandedValue(
          id: 1,
          title: "Klappern Türen oder deren Seitenverkleidung beim Schließen?"),
      expandedValue(
          id: 2,
          title:
              "Funktionierende Elektrik? \n\n    • Scheinwerfer\n    • Blinklicht\n    • Scheibenwischer\n    • Klimaanlage\n    • Heizung\n    • Radio\n    • Hupe\n    • Navi\n    • Tempomat\n    • Spurhalter\n    • Fensterheber\n    • Spiegel\n    • (etc. Modellabhängig)"),
      expandedValue(
          id: 3,
          title:
              "Sitze: \n\n    • Einfach verstellbar?\n    • Durchgesessen?\n    • Gut befestigt?\n    • Wackeln?"),
      expandedValue(
          id: 4,
          title:
              "Rest:\n\n • Zu viel Lenkradspiel? \n    → ungenaues, anstrengendes Lenken\n • Fußmatten vollzählig?\n • Warndreieck & Verbandskasten?\n • Innen- & Kofferraum nach Feuchtigkeit\n    absuchen"),
    ],
  ),
  GenerelleInfo(
    headerValue: "Motorraum",
    id: 3,
    expandedValueData: <expandedValue>[
      expandedValue(
          id: 1,
          title:
              "Motor schon warmgelaufen? \n  → Eventuell sollen Startprobleme\n      vertuscht werden"),
      expandedValue(
          id: 2,
          title: "Batteriepole angerostet? \n  → Gefahr vorzeitiger Entladung"),
      expandedValue(
          id: 3,
          title:
              "Gibt es Öl oder Bremsflüssigkeitsspuren an:\n\n    • Bremsen\n    • Stoßdämpfern\n    • Getriebe\n    • Ölwanne\n    • Schläuchen"),
      expandedValue(
          id: 4,
          title:
              "Sprudelt Kühlwasser bei laufendem Motor? \n  → eventuell Zylinderkopfdichtung\n      defekt"),
      expandedValue(
          id: 5,
          title:
              "Stand von Öl, Bremsflüssigkeit & Kühlflüssigkeit prüfen\n  → nach Probefahrt vergleichen, Leck?"),
    ],
  ),
  GenerelleInfo(
    headerValue: "Unterboden",
    id: 4,
    expandedValueData: <expandedValue>[
      expandedValue(id: 1, title: "Roststellen?"),
      expandedValue(
          id: 2,
          title:
              "Neuer Unterbodenschutz? \n  → möglicher Versuch Problemstellen \n      zu verdecken (z.B Schweißnähte etc.)"),
      expandedValue(
          id: 3, title: "Sitzt der Auspuff fest, arbeitet der Motor leise?"),
    ],
  ),
  GenerelleInfo(
    headerValue: "Dokumenten- & Zahlencheck",
    id: 5,
    expandedValueData: <expandedValue>[
      expandedValue(
          id: 1,
          title:
              "Reperaturenabrechnungen vorhanden?\n    → Schadensumfang kann besser\n        abgeschätzt werden\n • Fragen zur Abrechnung stellen\n    → Stimmen vermeintliche Reperaturen \n        mit Erscheinungsbild überein\n        z.B. angebliche neue Kupplung,\n        bei schlechtem Schaltbild  "),
      expandedValue(
          id: 2,
          title:
              "Macht Laufleistung Sinn? \nMögliche Laufleistungen im Bereich von über 150 000 km, wenn:\n\ndurchgesessene Sitze\n • Abgenutzte Pedale\n • Ausgeblichener Lack\n • Abgegriffenes Lenkrad\n • Abgegriffener Schalthebel\n    → Viel geringere Laufleistung auf Tacho\n    → Manipulation gut möglich\n    → angezeigte Leistung mit\n        Ölwechselaufkleber vergleichen\n        (wenn vorhanden) sonst\n        → Möglicherweise Wartung\n            vernachlässigt oder sogar Tacho\n            manipuliert\n        → Module in z.B Werkstatt auslesen \n            (falls möglich)"),
      expandedValue(
          id: 3,
          title:
              "Zulassungsbescheinigung Teil 1&2: \n • Vorhanden?\n • Fahrgestellnummer kontrollieren\n • Wagen abgemeldet?\n    → Stilllegungsbescheinigung\n         vorhanden?\n • Anzahl der Vorbesitzer überprüfen in\n  Fahrzeugbrief, Faustregel:\n    → 5 Jahre max. 2 Besitzer\n    → 7 Jahre max. 3 Besitzer\n • Wann steht der nächste TÜV-Termin \n    an?\n • Auto regelmäßig beim TÜV vorgeführt?"),
      expandedValue(
          id: 4,
          title:
              "Wartungen & Rechnungen:\n • Scheckheft gepflegt?\n • Alle Inspektionen fachgerecht &\n    zeitgemäß durchgeführt?\n • Welche Rechnungen liegen vor?\n    → Idealfall Werkstatt &\n        Wartungsgeschichte nachvollziehen\n • Gegebenenfalls Betriebserlaubnis für\n    Zusatzteile vorhanden (ABE)?"),
    ],
  ),
  GenerelleInfo(
    headerValue: "Probefahrt",
    id: 6,
    expandedValueData: <expandedValue>[
      expandedValue(
          id: 1,
          title:
              "Vor der Fahrt:\n\n • Immer darauf Bestehen \n    → Ablehnen einer Probefahrt könnte \n        auf einen Vertuschungsversuch\n        von Mängeln hindeuten\n • Im Vorhinein Route \n    → Überland-, Stadt- & Autobahnfahrt\n        planen"),
      expandedValue(
          id: 2,
          title:
              "Bei der Fahrt:\n\n • Startet Motor problemlos?\n • Jegliche Auffälligkeiten zum Vergleich\n    zu vorhergefahrenem Auto? \n  → seltsame Geräusche beim: \n\n    • Lenken\n    • Kuppeln\n    • Beschleunigen\n    • Bremsen\n    • Zieht nach rechts\n       oder links?\n    • Klappern auf\n       holprigen Straßen?"),
      expandedValue(
          id: 3,
          title:
              "Nach der Fahrt:\n\n • Tropft unter dem Wagen Flüssigkeit?\n • Sind die Felgen heiß?"),
    ],
  ),
  GenerelleInfo(
    headerValue: "Garantie, Gewehrleistung und Vertrag ",
    id: 7,
    expandedValueData: <expandedValue>[
      expandedValue(
          id: 1,
          title:
              "\nAufgrund von Haftungsgründen, verweisen wir auf den Artikel der Allianz:"),
    ],
  ),
];
