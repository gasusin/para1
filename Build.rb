require 'csv'
$NOMEARQUIVO = "dicionario.csv"
$HTML_SEP = "&#44;"
$CHAR_SEP = ","

	#Listar todas as palavras do dicionario
	#def ListaPalavras (arrayDicionario)
    #		tam = arrayDicionario.size
	#end

	
	def getPalavraExiste(pPalavra)
		_linha = 0
		pPalavra= pPalavra.upcase

		CSV.foreach($NOMEARQUIVO) do |row| 
			if _linha == 0 
				_linha= _linha + 1
				next
			end
			if row[0].upcase == pPalavra
				return true
			end
		end

		return false
	end

	def Continuar
		print "Pressione qualquer tecla para continuar..."
		gets.chomp
	end

	def addSignificado
		_palavra = " "		
		while _palavra.length != 0 do
			print "Informe a palavra (Deixe em branco para cancelar): "
			_palavra = gets.chomp

			if _palavra.length == 0 
				break
			end

			if getPalavraExiste(_palavra)
			   puts ""
			   puts "A palavra jah existe no dicionario."
			   Continuar()
			   next
			end

			print "Informe o significado: "
			_significado = gets.chomp
			if _significado.include? $CHAR_SEP
				_significado[$CHAR_SEP] = $HTML_SEP
			end


			arquivo = File.open($NOMEARQUIVO, "a+")
			arquivo.puts _palavra + $CHAR_SEP + _significado 
			arquivo.close()

			puts ""
			puts "Palavra adicionada com sucesso."
			Continuar()

			break

		end			

	end

	def listarPalavra
		_palavra = " "		
		while _palavra.length != 0 do
			_linha = 0
			print "Informe a palavra (Deixe em branco para cancelar): "
			_palavra = gets.chomp

			if _palavra.length == 0 
				break
			end

			_palavra= _palavra.upcase
			_total  = 0

			puts "-----------------------------------------"
			CSV.foreach($NOMEARQUIVO) do |row| 
				if _linha == 0 
					_linha= _linha + 1
					next
				end
				if row[0].upcase.start_with? _palavra					
					
					_significado = row[1]
					if _significado.include? $HTML_SEP
					   _significado[$HTML_SEP] = $CHAR_SEP
					end

					puts ('%-12s' % row[0]) +  _significado

					_total = _total + 1
				end

			end

			puts "-----------------------------------------"
			puts "Total de palavras encontradas: " + _total.to_s
			puts ""
			Continuar()

			break

		end			

	end

	def alterarSignificado
		_palavra = " "		
		while _palavra.length != 0 do
			print "Informe a palavra (Deixe em branco para cancelar): "
			_palavra = gets.chomp

			if _palavra.length == 0 
				break
			end

			if getPalavraExiste(_palavra) == false
			   puts ""
			   puts "Palavra nao esta no dicionario"
			   Continuar()
			   next
			end

			CSV.foreach($NOMEARQUIVO) do |row| 
				if getPalavraExiste(_palavra) 
				   print "Informe o novo significado: "
				   _significado = gets.chomp
				   if _significado.include? $CHAR_SEP
				      _significado[$CHAR_SEP] = $HTML_SEP
				      row[1]=_significado
				      break
				   end		
				end
			end

			
			arquivo = File.open($NOMEARQUIVO, "a+")
			arquivo.puts _palavra + $CHAR_SEP + _significado 
			arquivo.close()

			puts ""
			puts "Significado com sucesso."
			Continuar()

			break

		end	

	end

	def Menu
		puts "Dicionario Espanhol"
		puts "======================================="
		puts "Opcoes:"
		puts "1-Incluir palavra e significado;"
		puts "2-Pesquisar palavra em Espanhol;"
		puts "3-Alterar significado da palavra;"
		puts "4-Excluir palavra;"
		puts "5-Listar todo o conteudo do dicionario;"
		puts "6-Exportar dicionario para CSV e"
		puts "Qualquer outra tecla-Sair"
		puts "======================================="


		print "Digite uma opcao: "; opcao = gets.chomp; print "\n";
		opcao = opcao.to_i

		if opcao == 1
			addSignificado

		elsif opcao == 2
			listarPalavra

		elsif opcao == 3
			alterarSignificado
		
		elsif opcao == 4


		elsif opcao == 5
					

		elsif opcao == 6

		else
			return false;
		end

		return true;
	end

	# Criacao e escrita do arquivo
	
	if !File.exists?($NOMEARQUIVO)
		arquivo = File.open($NOMEARQUIVO, "a+")
		arquivo.puts 'palavra,significado'
		arquivo.puts 'Agulha,aguja'
		arquivo.puts 'Alfinete,alfiler'
		arquivo.puts 'Anel,anillo'
		arquivo.puts 'Anzol,anzuelo'
		arquivo.puts 'Andador,andador'
		arquivo.puts 'Apontador,sacapuntas'
		arquivo.puts 'Almofada,almohadilla'
		arquivo.puts 'Abajour,abajour'
		arquivo.puts 'Bola,bola'
		arquivo.puts 'Balao,globo'
		arquivo.puts 'Botas,botas'
		arquivo.puts 'Bexiga,vejiga'
		arquivo.puts 'Borracha,Caucho de la escuela'
		arquivo.puts 'CD,CD'
		arquivo.puts 'Colher,cuchara'
		arquivo.puts 'Caneta,pluma'
		arquivo.puts 'Camisa,camisa'
		arquivo.puts 'Camiseta,Camiseta'
		arquivo.puts 'Calca,pantalones'
		arquivo.puts 'Castical,candelero'
		arquivo.puts 'Copo,taza'
		arquivo.puts 'Carimbo,sello'
		arquivo.puts 'Dado,dado'
		arquivo.puts 'Dedal,dedal'
		arquivo.puts 'Dicionario,diccionario'
		arquivo.puts 'Diario,diario'
		arquivo.puts 'DVD,DVD'
		arquivo.puts 'Dentadura,dentado'
		arquivo.puts 'Escada,escalera'
		arquivo.puts 'Escova,cepillo'
		arquivo.puts 'Espelho,espejo'
		arquivo.puts 'Espada,espada'
		arquivo.puts 'Esmalte,esmalte'
		arquivo.puts 'Faca,cuchillo'
		arquivo.puts 'Facao,sable'
		arquivo.puts 'Folha,hoja'
		arquivo.puts 'Furadeira,taladro'
		arquivo.puts 'Ferradura,herradura'
		arquivo.puts 'Funil,embudo'
		arquivo.puts 'Farol,faro'
		arquivo.puts 'Gaiola,jaula'
		arquivo.puts 'Garfo,tenedor'
		arquivo.puts 'Gargantilh,cuello'
		arquivo.puts 'Garrafa,botella'
		arquivo.puts 'Gaveta,cajon'
		arquivo.puts 'Guitarra,guitarra'
		arquivo.puts 'Gaita,harmonica'
		arquivo.puts 'Gravata,lazo'
		arquivo.puts 'Gorro,capo'
		arquivo.puts 'Harpa,arpa'
		arquivo.puts 'Helice,helice'
		arquivo.puts 'Holofote,foco'
		arquivo.puts 'Isqueiro,encendedor'
		arquivo.puts 'Ima,iman'
		arquivo.puts 'Isopor,espuma de poliestireno'
		arquivo.puts 'Isca,cebo'
		arquivo.puts 'Inalador,inhalador'
		arquivo.puts 'Incenso,incienso'
		arquivo.puts 'Jarra,tarro'
		arquivo.puts 'Joias,joyeria'
		arquivo.puts 'Jaqueta,chaqueta'
		arquivo.puts 'Janela,ventana'
		arquivo.puts 'Lapis,lapiz'
		arquivo.puts 'Luvas,guantes'
		arquivo.puts 'Lampada,Lampada'
		arquivo.puts 'Luminaria,luminaria'
		arquivo.puts 'Leque,fan'
		arquivo.puts 'Lenco,bufanda'
		arquivo.puts 'Livro,libro'
		arquivo.puts 'Lanterna,flash'
		arquivo.puts 'Lixeira,vertedero'
		arquivo.puts 'Lapiseira,plumier'
		arquivo.puts 'Lata,lata'
		arquivo.puts 'Mola,primavera'
		arquivo.puts 'Maquiagem,maquillaje'
		arquivo.puts 'Meias,medias'
		arquivo.puts 'Mala,maleta'
		arquivo.puts 'Mochila,mochila'
		arquivo.puts 'Navalha,maquinilla de afeitar'
		arquivo.puts 'Novelo,bola'
		arquivo.puts 'Navio,barco'
		arquivo.puts 'oculos,gafas'
		arquivo.puts 'Obras,obras'
		arquivo.puts 'Panela,cacerola'
		arquivo.puts 'Pedra,piedra'
		arquivo.puts 'Papel,papel'
		arquivo.puts 'Porta-Retr,Porta retrato'
		arquivo.puts 'Pen Drive,Pendrive'
		arquivo.puts 'Prato,plato'
		arquivo.puts 'Pulseira,pulsera'
		arquivo.puts 'Queijeira,la fabricacion de queso'
		arquivo.puts 'Quebra Cab,Rompecabezas'
		arquivo.puts 'Quadro,imagen'
		arquivo.puts 'Regua,gobernante'
		arquivo.puts 'Ratoeira,ratonera'
		arquivo.puts 'Roleta,ruleta'
		arquivo.puts 'Relogio,ver'
		arquivo.puts 'Remo,remo'
		arquivo.puts 'Roteador,enrutador'
		arquivo.puts 'Rimel,rimel'
		arquivo.puts 'Revista,revista'
		arquivo.puts 'Sandalia,sandalia'
		arquivo.puts 'Sapato,zapato'
		arquivo.puts 'Saleiro,salero'
		arquivo.puts 'Sino,campana'
		arquivo.puts 'Saco,bolsa'
		arquivo.puts 'Sacola,bolsa'
		arquivo.puts 'Sabonete,jabon'
		arquivo.puts 'Shorts,pantalones cortos'
		arquivo.puts 'Tesoura,tijeras'
		arquivo.puts 'Teclado,teclado'
		arquivo.puts 'Telefone,telefono'
		arquivo.puts 'Tampa,cubierta'
		arquivo.puts 'Termometro,termometro'
		arquivo.puts 'Trena,cinta metrica'
		arquivo.puts 'Telha,azulejo'
		arquivo.puts 'Tatame,tatami'
		arquivo.puts 'Tamanco,zueco'
		arquivo.puts 'Urna,urna'
		arquivo.puts 'Urso,soportar'
		arquivo.puts 'Uniforme,uniforme'
		arquivo.puts 'Umidificad,humidificador'
		arquivo.puts 'Vassoura,escoba'
		arquivo.puts 'Ventilador,fan'
		arquivo.puts 'Vara,palo'
		arquivo.puts 'Varal,tendedero'
		arquivo.puts 'Vaso,florero'
		arquivo.puts 'Vidro,vidrio'
		arquivo.puts 'Viseira,visera'
		arquivo.puts 'Vela,vela'
		arquivo.puts 'Xicara,Xicara'
		arquivo.puts 'Xadrez,ajedrez'
		arquivo.puts 'Xale,chal'
		arquivo.puts 'Xarope,jarabe'
		arquivo.puts 'Ziper,cremallera'
		arquivo.puts 'Zarabatana,soplete'
		arquivo.close();
	end

	#Carrega array com os dados do dicionario
	#arrayString = []
	#CSV.foreach('dicionario.csv') do |row| 
	#		arrayString.push(row)
	#end

	system "clear"
	while Menu() do
		system "clear"

		## continua ateh o 9 ser pressionado!
	end