extension MapExtension<K, V> on Map<K, V>{
  V byKeyOrFirst(K? key){
    if(containsKey(key) == false){
      return values.first;
    }

    return entries.firstWhere((element) => element.key == key).value;
  }

  K firstOr(K? key){
    if(key == null){
      return keys.first;
    }
    if(containsKey(key) == false){
      return keys.first;
    }
    return key;
  }
}