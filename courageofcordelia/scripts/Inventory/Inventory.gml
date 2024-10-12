function Inventory() constructor{
	_inventory_items = [];
	
	item_set = function(_name, _quantity, _sprite, _type, _weapon_equiping_arg, _description, _style, _armor_bonus, _damage_bonus){
		array_push(_inventory_items, {
			name : _name,
			quantity : _quantity,
			sprite : _sprite,
			type : _type,
			weapon_equiping_arg : _weapon_equiping_arg,
			description : _description,
			style : _style,
			armor_bonus : _armor_bonus,
			damage_bonus : _damage_bonus,
			
			
		})
	}
	
	item_find = function (_name){
		for (var i = 0; i < array_length(_inventory_items); i++){
			if (_name == _inventory_items[i].name) {
				return i;
			}
		}
		
		return -1;
	}
	
	item_add = function(_name, _quantity, _sprite, _type, _weapon_equiping_arg, _description, _style, _armor_bonus, _damage_bonus){
		var _index = item_find(_name);
		
		if _index >= 0{
			_inventory_items[_index].quantity += _quantity;
		} else {
			item_set(_name, _quantity, _sprite, _type, _weapon_equiping_arg, _description, _style, _armor_bonus, _damage_bonus);
	}
		
	}
	
	item_has = function(_name, _quantity){
		var _index = item_find(_name);
		
		if (_index >= 0){
			return _inventory_items[_index].quantity >= _quantity;
		}
		return false;
	}
	
	item_subtract = function(_name, _quantity){
		var index = item_find(_name);
		
		if (index >= 0){
			if(item_has(_name, _quantity)){
				_inventory_items[index].quantity -= _quantity;
				
				if (_inventory_items[index].quantity <= 0){
					item_remove(index);
				}
			}
		}
	}
	
	item_remove = function(_index){
		array_delete(_inventory_items, _index, 1);
	}
	
	item_get = function(){
		return _inventory_items;
	}
	
	

}