import 'dart:async';

class Medicine {
  final String id;
  final String name;
  final String description;
  final String dosage;
  final double price;

  Medicine({
    required this.id,
    required this.name,
    required this.description,
    required this.dosage,
    required this.price,
  });
}

class MedicineRepository {
  // Simulamos una lista de medicamentos
  List<Medicine> _medicines = [
    Medicine(
      id: '1',
      name: 'Paracetamol',
      description: 'Para aliviar el dolor y la fiebre',
      dosage: '500mg',
      price: 5.0,
    ),
    Medicine(
      id: '2',
      name: 'Ibuprofeno',
      description: 'Antiinflamatorio y analgésico',
      dosage: '400mg',
      price: 8.0,
    ),
    Medicine(
      id: '3',
      name: 'Omeprazol',
      description: 'Reducción de la acidez estomacal',
      dosage: '20mg',
      price: 10.0,
    ),
    Medicine(
      id: '4',
      name: 'Amoxicilina',
      description: 'Antibiótico para infecciones bacterianas',
      dosage: '500mg',
      price: 12.0,
    ),
    Medicine(
      id: '5',
      name: 'Loratadina',
      description: 'Antihistamínico para alergias',
      dosage: '10mg',
      price: 6.0,
    ),
  ];

  // Función para buscar medicamentos por nombre
  Future<List<Medicine>> searchMedicines(String query) async {
    await Future.delayed(Duration(seconds: 1));

    // Filtramos los medicamentos que coincidan con la consulta
    List<Medicine> results = _medicines.where((medicine) =>
        medicine.name.toLowerCase().contains(query.toLowerCase())).toList();

    if (results.isEmpty) {
      throw Exception('No medicines found for query: $query');
    }

    return results;
  }
}







