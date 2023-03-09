extends Panel


var ManaBackend = null

func _ready():
	$ProgressBar.value = 0


func set_mana_backend(mana_backend):
	ManaBackend = mana_backend


func act():
	
	if ManaBackend.current_mana >= ManaBackend.max_mana:
		return
	
	if $ProgressBar.value >= $ProgressBar.max_value:
		$ProgressBar.value = 0
		ManaBackend.up_mana_lvl()
	else: 
		$ProgressBar.value += 1
		
	$ManaLabel.text = str(ManaBackend.current_mana) + ' / ' + str(ManaBackend.max_mana)
