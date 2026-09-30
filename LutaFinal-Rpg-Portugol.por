// substituir escolhas8

cadeia art_definido = "o"
cadeia pron_pessoal = "ele"
cadeia desinencia_o = "o"

inteiro hp_jogador = 100
inteiro hp_richard = 150
inteiro hp_onix = 80

funcao carregarPronomes()
{
	se (global_gen == "ela/dela/a" ou global_gen == "ela/dela")
	{
		art_definido = "a"
		pron_pessoal = "ela"
		desinencia_o = "a"
	}
	senao se (global_gen == "elx/delx" ou global_gen == "elx/delx/e")
	{
		art_definido = "e"
		pron_pessoal = "elx"
		desinencia_o = "e"
	}
	senao
	{
		art_definido = "o"
		pron_pessoal = "ele"
		desinencia_o = "o"
	}
}

funcao escolhas8()
{
	inicioLutaFinal()
}

funcao inicioLutaFinal()
{
	carregarPronomes()

	escLen("O CONFRONTO FINAL\n\n")
	escLen("Richard Miller ouve o assobio na floresta e vira a cabeça lentamente...\n")
	escLen("O ar fica gélido. A tensão é sufocante.\n\n")
	escLen("\"Como eu devo agir depressa?\" - pensa " + nome + ".\n\n")
	escLen("1) Atacar de surpresa\n")
	escLen("2) Empurrar Onix para fugir\n\n")
	escLen("Escolha sua ação: ")

	inteiro escolha_inicial
	leia(escolha_inicial)

	limpa()

	se (escolha_inicial == 1)
	{
		rotaA_AtacarSurpresa()
	}
	senao se (escolha_inicial == 2)
	{
		rotaB_EmpurrarOnix()
	}
	senao
	{
		escLen("Escolha inválida.\n")
		U.aguarde(1500)
		inicioLutaFinal()
	}
}

funcao rotaA_AtacarSurpresa()
{
	escLen("Assim que " + nome + " se prepara para atacar...\n")
	escLen("Richard lançou a flecha em direção a " + nome + " bem antes!\n")
	escLen("A flecha teria " + art_definido + " acertado se Onix não tivesse entrado na frente.\n\n")
	escLen("-- ONIX!\n\n")
	
	inteiro dano_flecha = sorteia(35, 50)
	hp_onix = hp_onix - dano_flecha
	
	escLen("A flecha atingiu a barriga dele.\n")
	escLen(nome + " imediatamente tenta verificá-lo, mas ele a empurra para trás.\n")
	escLen("-- Eu tô bem.\n")
	
	se (desinencia_o == "a")
	{
		escLen("-- Ah, sim, você está ótimo. - " + nome + " murmurou para si mesma enquanto se levantava da queda, suando de desespero.\n\n")
	}
	senao se (desinencia_o == "e")
	{
		escLen("-- Ah, sim, você está ótimo. - " + nome + " murmurou para si mesme enquanto se levantava da queda, suando de desespero.\n\n")
	}
	senao
	{
		escLen("-- Ah, sim, você está ótimo. - " + nome + " murmurou para si mesmo enquanto se levantava da queda, suando de desespero.\n\n")
	}

	escLen("Richard apenas vira a cabeça de lado lentamente. A expressão era de pura antipatia.\n")
	escLen("Um movimento brusco! Onix apenas enxergou um borrão sumindo até sentir a presença por trás.\n")
	escLen("Onix desvia do ataque no exato milissegundo em que Richard avança, puxa o braço do vilão e o derruba no chão!\n")
	escLen(nome + " imediatamente corre na direção dos dois.\n\n")

	escLen("1) Parar e Observar atenciosamente, confiando em Onix\n")
	escLen("2) Dar uma Cacetada em Richard\n\n")
	escLen("Digite sua opção: ")

	inteiro decisao
	leia(decisao)
	limpa()

	se (decisao == 2)
	{
		escLen(nome + " entra na frente de Onix e tenta atingir Richard com um soco.\n")
		escLen("-- Você é fraco.\n\n")
		escLen("Foi a última coisa que " + nome + " ouviu de Richard antes de morrer.\n\n")
		exibirGameOver()
	}
	senao se (decisao == 1)
	{
		rotaA_ObservarEConfronto()
	}
	senao
	{
		escLen("Opção inválida!\n")
		U.aguarde(1500)
		rotaA_AtacarSurpresa()
	}
}

funcao rotaA_ObservarEConfronto()
{
	escLen("Richard, assim que caiu no chão, levantou a perna. Um chute forte na mandíbula de Onix.\n")
	escLen("Assim que o atinge, Richard dá um mortal e pousa desviando da foice que Onix lançou, observando-o seriamente.\n")
	escLen("Onix se vira em direção a Richard.\n")
	escLen("-- Você age como se estivesse no controle de tudo, Miller.\n\n")
	escLen("Antes que Richard pudesse responder, ele apenas sente um líquido escorrer no seu peito.\n")

	inteiro dano_critico = sorteia(60, 80)
	hp_richard = hp_richard - dano_critico

	escLen("No mesmo segundo, sua visão ainda era Onix inclinado para trás, rindo com sangue nos dentes.\n")
	escLen("Ao olhar para debaixo do nariz, sua visão é a mão com as unhas afiadas de Onix atravessando seu peito por trás.\n")
	escLen("-- URGH!\n\n")
	escLen("Richard perdeu muito sangue quando Onix retirou a mão e o chutou para longe.\n")
	escLen("Enquanto é lançado, Richard rosna e se estabiliza de pé instantaneamente.\n")
	escLen("Ele lança várias flechas em direção a Onix por caminhos diferentes. Tão rápido quanto uma Águia.\n")
	escLen("Onix mantinha as mãos nos bolsos da calça, desviando de cada uma delas. Se movia para os lados como se estivesse entediado.\n")
	escLen("Assim que Richard salta para lançar uma flecha em direção ao seu coração, Onix salta para o lado, e tenta atingir um soco por trás de sua cabeça.\n")
	escLen("Richard desvia para baixo e chuta ele para longe.\n")
	escLen("Enquanto Onix voava para trás, encostando no chão às vezes, Richard salta em sua direção.\n")
	escLen("Onix desvia do lado e pousa sobre uma árvore gigante.\n\n")

	escLen("Uma tempestade começa. O chão fica escorregadio...\n")
	escLen("A água da chuva escorria pelo chapéu de cogumelo de Onix. Que estava ofegante.\n")
	escLen("Ele estava totalmente enfraquecido pela quantidade de sangue que perdeu pela barriga.\n")
	escLen("Onix caiu, batendo a cabeça no chão.\n\n")

	escLen("-- " + nome + ".\n")
	escLen("-- ONIX!\n\n")

	escLen(nome + " corre em direção a ele, as mãos trêmulas.\n")
	escLen("Onix fecha os olhos enquanto se encosta no tronco da árvore. Respira fundo.\n")
	escLen("-- Toque no meu cabelo e termine isso por mim.\n\n")

	escLen("1) Aceitar o poder de Onix\n")
	escLen("2) Ignorar, rir e sair correndo\n\n")
	escLen("Digite sua decisão: ")

	inteiro escolha_poder
	leia(escolha_poder)
	limpa()

	se (escolha_poder == 2)
	{
		escLen("Onix chora enquanto a observa fugir, fechando os olhos.\n")
		escLen("Correndo pela floresta, " + nome + " tropeça enquanto é atingid" + desinencia_o + " por trás.\n")
		escLen("Richard acerta uma flecha em sua cabeça.\n\n")
		exibirGameOver()
	}
	senao se (escolha_poder == 1)
	{
		finalRotaA_VitoriaEpica()
	}
	senao
	{
		escLen("Opção inválida!\n")
		U.aguarde(1500)
		rotaA_ObservarEConfronto()
	}
}

funcao finalRotaA_VitoriaEpica()
{
	escLen(nome + " agarra uma das tranças de Onix com a mão.\n")
	escLen("De repente, sente um vigor diferente.\n")
	escLen("Agora o mundo parecia bem mais devagar comparado a " + pron_pessoal + ".\n\n")
	escLen("Richard estava tentando se estabilizar para não cair. Enfraquecido, uma tontura insuportável.\n")
	escLen("-- ONDE ESTÃO VOCÊS?!\n")
	escLen("Richard segura seu arco e flecha tremendo enquanto mira para todos os lados. Exceto... para cima.\n\n")
	escLen("Richard olha para cima tarde demais.\n")
	escLen(nome + " segurava a foice de Onix, os olhos brilhando rosa claro.\n")
	escLen("O impacto acabou com a vida de Richard.\n\n")

	U.aguarde(1500)

	escLen("Dias após a luta, " + nome + " e Onix são reconhecidos pela população ao derrotar Richard Miller.\n")
	escLen(nome + " está sentad" + desinencia_o + " na beira do rio roxo, juntamente a outros elfos enquanto brincam de quem lança a pedra mais longe.\n")
	escLen(nome + " sorri, fecha os olhos enquanto inclina a cabeça para baixo e depois olha para cima.\n\n")
	escLen("\"O mundo voltou ao seu ritmo normal.\"\n")
	escLen("\"Menos eu.\"\n")
	escLen("\"Eu carregava os passos de quem ficou para trás.\"\n\n")

	exibirVitoria()
}

funcao rotaB_EmpurrarOnix()
{
	escLen(nome + " empurrou Onix com força em direção aos arbustos.\n")
	escLen("Corre na direção oposta para distrair Richard.\n")
	escLen("Ao ouvir o barulho, Richard não hesita. Puxa a corda do arco e dispara um tiro cego na névoa.\n")
	escLen("Um grito desesperado e abafado ecoa.\n\n")
	escLen(nome + " para de correr e olha para trás.\n")
	escLen("Richard não atirou em " + pron_pessoal + ".\n")
	escLen("A flecha atingiu a perna de Onix, que caiu na lama.\n")
	escLen("Richard surge das sombras como um fantasma, caminhando lentamente até Onix com uma nova flecha engatilhada.\n\n")
	escLen("-- O jogo de esconde-esconde acabou. - disse Richard, com um olhar frio.\n\n")
	escLen(nome + " precisa agir imediatamente antes que Richard acabe com a vida de Onix.\n\n")

	escLen("1) Avançar rastejando pela lama para desarmar o arco de Richard\n")
	escLen("2) Atirar uma pedra na cabeça de Richard para chamar a atenção\n\n")
	escLen("Digite sua escolha: ")

	inteiro escolha_resgate
	leia(escolha_resgate)
	limpa()

	se (escolha_resgate == 1)
	{
		escLen(nome + " tenta deslizar silenciosamente pela lama, mas o chão escorregadio trai seus movimentos. O galho estala.\n")
		escLen("Richard gira o corpo num reflexo desumano.\n")
		escLen("-- Eu ouvi você.\n\n")
		escLen("Uma flecha atravessa o peito de " + nome + " antes mesmo de conseguir se levantar.\n")
		escLen("Onix grita ao fundo, mas a visão de " + nome + " escurece rapidamente.\n\n")
		exibirGameOver()
	}
	senao se (escolha_resgate == 2)
	{
		finalRotaB_SacrificioDeOnix()
	}
	senao
	{
		escLen("Opção inválida!\n")
		U.aguarde(1500)
		rotaB_EmpurrarOnix()
	}
}

funcao finalRotaB_SacrificioDeOnix()
{
	escLen(nome + " segura uma pedra pesada do chão e a lançou com toda a fúria.\n")
	escLen("Acerta o ombro de Richard, desalinhando o arco dele.\n")
	escLen("Richard rosna de raiva e se vira para " + nome + ".\n\n")
	escLen("Esse segundo de distração era tudo que Onix precisava.\n")
	escLen("Mesmo com a perna ferida, Onix surge da lama. Suas unhas afiadas brilhando no escuro.\n")
	escLen("Num movimento desesperado, Onix avança e crava as garras diretamente no pescoço de Richard.\n\n")
	escLen("-- Você... subestimou a gente, Miller. - cospe Onix, ensanguentado.\n\n")
	escLen("Richard desaba morto na lama, sufocado pelo próprio sangue.\n\n")
	escLen("A tempestade começa a cair pesadamente, lavando o campo de batalha.\n")
	escLen(nome + " corre até Onix, mas o ferimento da flecha dele, misturado à lama contaminada da floresta, começa a paralisar o corpo dele.\n")
	escLen("Onix cai sentado, escorado em uma rocha.\n")
	escLen("Ele olha para a perna e depois para " + nome + ".\n\n")
	escLen("-- Nós vencemos... mas o veneno das flechas dele já se espalhou. Não há tempo.\n")
	escLen("Onix estende a mão trêmula, entregando seu chapéu de cogumelo e sua foice para " + nome + ".\n")
	escLen("-- Pegue isso. Saia deste lugar e conte a todos que os monstros de Tártaro não se renderam.\n\n")
	escLen("Onix fecha os olhos permanentemente sob a chuva.\n\n")

	U.aguarde(1500)

	escLen("Anos depois, " + nome + " está em uma taverna distante, longe de Tártaro.\n")
	escLen("O chapéu de cogumelo de Onix está pendurado na parede como uma relíquia.\n")
	escLen(nome + " toma um gole de sua bebida, olhando para a foice descansando ao lado da mesa.\n\n")
	escLen("\"Ganhamos a liberdade que ele tanto queria.\"\n")
	escLen("\"Mas o gosto da lama e da chuva nunca sairá da minha boca.\"\n\n")

	exibirVitoria()
}

funcao exibirGameOver()
{
	morreu()
}

funcao exibirVitoria()
{
	escLen("FIM DA HISTÓRIA.\n")
	U.aguarde(2000)
	limpa()
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 10946; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */