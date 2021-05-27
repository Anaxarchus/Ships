extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
    pass # Replace with function body.


func load_map(path):
    var map_path = path + "/data/map.txt"
    var file = File.new()
    file.open(map_path, file.READ)
    regex(file.get_as_text())

    file.close()


func regex(file_string):
    var regex = RegEx.new()
    regex.compile('([^\\t][^\\t]*)\\t?|\\t')
    var parsed = regex.search_all(file_string)
    for result in parsed:
        if result:
            print(result.get_string())


func csv(file):
    while not file.eof_reached(): # iterate through all lines until the end of file is reached
        var csv = file.get_csv_line("\t")
        print('size: ', csv.size())
        if csv[0].split(" ")[0] == "system":
            print(csv[0])
            return


func _on_Button_pressed():
    $FileDialog.popup_centered()


func _on_FileDialog_confirmed():
    load_map($FileDialog.current_path)
