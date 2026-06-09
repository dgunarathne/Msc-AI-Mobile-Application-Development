
import '../../models/fuel_entry.dart';

class FuelRepository {
  final List<FuelEntry> _items=[];

  List<FuelEntry> getAll()=>_items;

  void add(FuelEntry entry)=>_items.add(entry);
}
