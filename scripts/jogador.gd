extends CharacterBody2D

# Velocidade em pixels por segundo; @export deixa mudar no Inspetor
@export var velocidade := 200.0

func _physics_process(_delta):
	# Lê as 4 teclas e devolve uma direção (ex.: (1, 0) = direita)
	var direcao := Input.get_vector("esquerda", "direita", "cima", "baixo")
	# A velocidade é a direção vezes a rapidez
	velocity = direcao * velocidade
	# Move e para ao bater em algo com colisão (as paredes)
	move_and_slide()
