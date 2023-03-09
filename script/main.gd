extends Node2D


var PanelManaHarvest = null
var ManaBackend = null


func _ready():
	ManaBackend = $ManaBackend
	
	PanelManaHarvest = $CanvasLayer/ManaHarvest
	
	PanelManaHarvest.set_mana_backend(ManaBackend)
	
	_hide_all_panel()
	PanelManaHarvest.visible = true

func _update_panels():
	PanelManaHarvest.act()

func _on_timer_timeout():
	_update_panels()

func _hide_all_panel():
	PanelManaHarvest.visible = false

func _on_mana_button_button_down():
	_hide_all_panel()
	PanelManaHarvest.visible = true

func _on_exp_button_button_down():
	_hide_all_panel()
