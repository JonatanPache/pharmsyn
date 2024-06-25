import 'package:flutter_test/flutter_test.dart';
import 'package:t_store/data/repositories/authentication/drug_repo.dart';

void main() {
  group('MedicineRepository', () {
    late MedicineRepository medicineRepository;

    setUp(() {
      medicineRepository = MedicineRepository();
    });

    test('searchMedicines - existing medicine', () async {
      // Arrange
      String query = 'paracetamol';

      // Act
      List<Medicine> results = await medicineRepository.searchMedicines(query);

      // Assert
      expect(results.length, 1); // Se espera que haya un medicamento que coincida con 'paracetamol'
      expect(results[0].name.toLowerCase(), contains(query)); // Se espera que el nombre del medicamento contenga 'paracetamol'
    });

    test('searchMedicines - non-existing medicine', () async {
      // Arrange
      String query = 'insulin'; // Un medicamento que no está en la lista simulada

      // Act
      try {
        await medicineRepository.searchMedicines(query);
        fail('Expected an exception');
      } catch (e) {
        // Assert
        expect(e, isA<Exception>());
        expect(e.toString(), 'Exception: No medicines found for query: $query');
      }
    });
  });
}
