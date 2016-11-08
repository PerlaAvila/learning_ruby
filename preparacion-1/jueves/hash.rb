new_hash = Hash.new
  canasta_de_frutas = {"papaya" => 3, "naranja" => 4, "uva" => 12}
  canasta_de_frutas["fresa"] = 10
p canasta_de_frutas
  fruta_seleccionada = canasta_de_frutas.values_at("uva")
p fruta_seleccionada