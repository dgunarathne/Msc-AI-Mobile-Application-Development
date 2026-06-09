
import '../../models/runtime_entry.dart';

class RuntimeRepository {
  final List<RuntimeEntry> _items=[];

  List<RuntimeEntry> getAll()=>_items;

  void add(RuntimeEntry entry)=>_items.add(entry);
}
