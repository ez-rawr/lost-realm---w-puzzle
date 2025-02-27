extends TextureButton

var number

signal tile_pressed
signal slide_completed

# Update the number of the tile
func set_text(new_number):
	number = new_number
	$Number/Label.text = str(number)

# Update the background image of the tile
func set_sprite(new_frame, size, tile_size): 
	var sprite = $Sprite

	update_size(size, tile_size)

	sprite.set_hframes(size)
	sprite.set_vframes(size)
	sprite.set_frame(new_frame)


# scale to the new tile size
func update_size(size, tile_size:

# Update the entire background image
func set_sprite_texture(texture):

# Slide the tile to a new position
func slide_to(new_position, duration):

#Hide / Show the number of the tile
func set_number_visible(state):

# Tile is pressed
func_on_Tile_pressed():

# Tile has finished sliding
func_on_Tween_tween_completed(_object, key): -
