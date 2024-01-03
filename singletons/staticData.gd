extends Node

var item_data = {}

var data_file_path = "res://staticData/dialogueData.json"


func _ready():
	item_data = load_json_file(data_file_path)

func load_json_file(file_path : String):
	if FileAccess.file_exists(file_path):
		var data_file = FileAccess.open(file_path, FileAccess.READ)
		var parsed_result = JSON.parse_string(data_file.get_as_text())
		
		if parsed_result is Dictionary:
			return parsed_result
		else:
			print("Erro ao ler o arquivo.")
	else:
		print("O arquivo não existe.")

