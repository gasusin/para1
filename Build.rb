require 'csv'

	#Listar todas as palavras do dicionario
	def ListaPalavras (arrayDicionario)
		tam = arrayDicionario.size
	end

	#Menu
	def Menu
		puts "Digite uma opcao: "
		opcao = gets
		opcao.to_i

		if opcao == 1
			
		elsif opcao == 2


		elsif opcao == 3
			
		
		elsif opcao == 4


		elsif opcao == 5
					

		elsif opcao == 6
						

		end
	end


	# Criacao e escrita do arquivo
	arquivo = File.open("dicionario.csv", "a+")
		arquivo.puts 'pt,es'
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

	#Carrega array com os dados do dicionario
	arrayString = []
	CSV.foreach('dicionario.csv') do |row| 
		arrayString.push(row)
	end

	Menu()
