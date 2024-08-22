extends Label


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var tempo = Time.get_datetime_dict_from_system()
	var tempo_atual = tempo.hour
	await get_tree().create_timer(1.0).timeout
	print(tempo_atual)
	if tempo_atual >=18 :
		print("está a noite")
		$AnimationPlayer.play("dia_para_noite")
	if tempo_atual <=17 :
		print("esta dia")
		$AnimationPlayer.play("noite_para_dia")
	if tempo_atual <=6:
		print("esta madrugada")
		$AnimationPlayer.play("madrugada_escuro")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	var tempo = Time.get_datetime_dict_from_system()
	var hora = "%02d" % tempo.hour
	var minutos = "%02d" % tempo.minute 
	var segundos = "%02d" % tempo.second
	var tempo_atual = tempo.hour
	
	text = str(hora,":",minutos,".",segundos)
	
