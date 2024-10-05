import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarWidget extends StatefulWidget {
  const CalendarWidget({super.key});

  @override
  State<CalendarWidget> createState() => _CalendarWidgetState();
}

class _CalendarWidgetState extends State<CalendarWidget> {
  // Initialisation des variables à leur déclaration
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  // Map pour stocker les événements associés à chaque jour
  final Map<DateTime, List<String>> _events = {};

  @override
  void initState() {
    super.initState();
    _selectedDay = _focusedDay;

    // Initialisation des événements sur certaines dates spécifiques
    _events[DateTime.utc(2024, 10, 5)] = ['Événement 1'];
    _events[DateTime.utc(2024, 10, 7)] = ['Événement 2', 'Événement 3'];
    _events[DateTime.utc(2024, 10, 12)] = ['Événement 4'];
    _events[DateTime.utc(2024, 10, 20)] = ['Événement 5'];
  }

  // Fonction pour charger les événements pour un jour donné
  List<String> _getEventsForDay(DateTime day) {
    return _events[day] ?? []; // Renvoie la liste des événements ou une liste vide si aucun événement
  }

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      focusedDay: _focusedDay,
      firstDay: DateTime.utc(2020, 1, 1),
      lastDay: DateTime.utc(2030, 12, 31),
      calendarFormat: _calendarFormat,
      selectedDayPredicate: (day) => isSameDay(_selectedDay, day),

      // Appelé lors de la sélection d'un jour
      onDaySelected: (selectedDay, focusedDay) {
        setState(() {
          _selectedDay = selectedDay;
          _focusedDay = focusedDay;
        });
      },

      onFormatChanged: (format) {
        if (_calendarFormat != format) {
          setState(() {
            _calendarFormat = format;
          });
        }
      },

      onPageChanged: (focusedDay) {
        _focusedDay = focusedDay;
      },

      // Récupération des événements pour chaque jour
      eventLoader: _getEventsForDay,

      // Personnalisation des styles de calendrier
      calendarStyle: CalendarStyle(
        todayDecoration: BoxDecoration(
          color: Colors.orangeAccent,
          shape: BoxShape.circle,
        ),
        selectedDecoration: BoxDecoration(
          color: Colors.blue,
          shape: BoxShape.circle,
        ),
        markerDecoration: BoxDecoration(
          color: Colors
              .red, // Couleur des pastilles de notification pour les événements
          shape: BoxShape.circle,
        ),
      ),

      headerStyle: HeaderStyle(
        formatButtonVisible: true,
        titleCentered: true,
        formatButtonDecoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(16.0),
        ),
        formatButtonTextStyle: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}


//Afficher les évenement sur le calendar:
/* ..._getEventsForDay(_selectedDay ?? _focusedDay).map(
            (event) => ListTile(
              title: Text(event),
            ),
          ), */