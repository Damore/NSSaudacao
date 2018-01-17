//
//  NSSaudacao.swift
//  Saudacao
//
//  Created by Swift on 16/01/2018.
//  Copyright © 2018 Swift. All rights reserved.
//

import UIKit

let mensagens = [Periodo.manha: ["Bom dia! Que seu dia seja igual a vontade de Deus: bom, perfeito e agradável.", "Bom dia! Não importa a cor do céu. Quem faz o dia bonito é você.", "Bom dia! Sorria! Deus acaba de te dar um novo dia e coisas extraordinárias podem acontecer se você crer!", "Bom dia! Um pequeno pensamento positivo pela manhã pode mudar todo o seu dia.", "Que o dia seja leve, que a tristeza seja breve e que o dia seja feliz. Bom dia!", "Bom dia! Pra hoje: sorrisos bobos, uma mente tranquila e um coração cheio de paz.", "Bom dia! Que o dia comece bem e termine ainda melhor.", "Bom dia! Independente do que estiver sentindo, levante-se, vista-se e saia para brilhar.", "A cada nova manhã, nasce junto uma nova chance. Bom dia!", "Sempre que o sol nasce, você tem uma nova oportunidade de ser feliz. Bom dia!", "Bom dia! Comece o dia sorrindo. Afinal, coisa boa atrai coisa boa.", "Bom dia! Que o amor seja a melhor forma de começar e terminar o dia.", "Que esse dia seja cheio de energia positiva, amém. Bom dia.", "Tenha um bom dia, uma semana fantástica e uma vida maravilhosa.", "Bom dia! Hoje eu acordei tão linda que quando fui bocejar, miei.", "Viva cada momento, ria todos os dias, ame além das palavras... Tenha um bom dia!"],
                 Periodo.tarde: ["Boa tarde! Que a sua tarde seja leve, abençoada, iluminada, produtiva e feliz.", "Boa tarde! Não escute as pessoas negativas. Junte-se a quem enxerga a vida com bons olhos. Alie-se aos que lhe amam de verdade e que curtem seu sucesso e crescimento.", "Hoje, o meu beijo vai para você, pessoa linda que mesmo tão distante, sempre se faz presente. Boa tarde!", "Deus, que a minha vontade e a Tua coincidam, caso o contrário, que a a Sua prevaleça. Boa tarde!", "Que a sua tarde seja abençoada por Deus.", "Onde há fé, há amor. Onde há amor, há paz. Onde há Deus, nada falta. Tenha uma boa tarde!", "Não se importe com o que vão pensar de você. Faça o que você quiser e procure apenas a sua felicidade. Boa tarde!", "Que a sua tarde seja maravilhosa e muito abençoada!", "Se a gente cresce com os golpes duros da vida, também podemos crescer com os toques suaves da alma. Boa tarde!", "Seja leve e releve. Boa tarde!", "Uma feliz tarde para todos!", "Boa tarde! Uma das melhores coisas da vida é ter amigos, são eles que nos fazem mais felizes.", "Boa tarde! Já sorriu para alguém hoje?", "Um passo por vez. Ainda que o seu coração tenha corrido uma maratona pela manhã. Boa tarde!", "Desperte-se e vá realizar seus planos. Boa tarde!", "Que Deus abençoe a sua tarde...", "Desejo que a sua tarde seja linda, que o sol brilhe em seu coração, que haja alegria em seu olhar e paz no seu caminhar.", "Aceite o triunfo e a perda com igual serenidade. Faça tudo com humildade. Tenha uma boa tarde!", "Tenha uma tarde linda como o seu sorriso e iluminada como a sua alma!"],
                 Periodo.noite: ["O que o mundo te oferece, é passageiro. O que Deus te oferece, é eterno. Boa noite!", "A noite é uma boa oportunidade para descansar, perdoar, esquecer, sonhar e se preparar para as lutas do dia seguinte. Tenha uma boa noite!", "Que nunca falte um sonho para lutar, um projeto para realizar, algo para aprender, um lugar para ir e alguém para amar. Boa noite.", "Que sua noite seja tranquila e seu sono seja suave, para que o seu dia seja abençoado. Boa noite!", "Durma com ideias, acorde com atitudes. Boa noite!", "Para tudo na vida há um novo dia, um novo sol, um novo luar... Boa noite.", "Querido Deus, abençoe esta noite e nos livre de todo mal, boa noite!", "Tenha uma boa noite e lembre-se: a alegria vem pela manhã.", "Boa noite! Durma com os anjos.", "Mude o modo que você olha para as coisas, e as coisas que você olha mudarão. Boa noite!", "Boa noite. Durma em paz. Amanhã tem mais!", "A paz é a gente que faz. Boa noite!", "Quando os olhos pesarem, que os sonhos sejam leves. Uma ótima noite para você!", "Que a sua noite seja doce e feliz.", "Durma em paz que amanhã tem mais!", "Respire. Tome uma dose de paz. Escute o bater manso do coração. Silencie a mente. Relaxe o corpo. Descanse. Amanhã tem mais... Boa noite!", "Chegou a hora de apagar a luz e acender as estrelas... Para dar vida aos sonhos. Boa noite!", "Que os carneirinhos não durmam antes de você... Boa noite!", "Confie em Deus e tenha uma boa noite! Deus é poderoso para fazer infinitamente mais, muito além daquilo que pedimos ou pensamos.", "Para você eu desejo os sonhos mais lindos e que todos os seus sonhos sejam realizados ao amanhecer. Boa noite!", "Que os anjos te tragam tranquilidade e sonhos lindos esta noite. Boa noite!"]]

enum Periodo {
    case manha, tarde, noite
    
}

public class NSSaudacao: NSObject {
    
    class func definirPeriodo() -> Periodo {
        // Resgatar a data atual
        let agora = Date()
        
        // Criar as datas para comparacao
        
        let meioDia = Calendar.current.date(bySettingHour: 12, minute: 0, second: 0, of: agora)!
        let seisHoras = Calendar.current.date(bySettingHour: 18, minute: 0, second: 0, of: agora)!
        
        // Comparar as datas e retornar o período
        
        if agora >= meioDia && agora < seisHoras {
            return Periodo.tarde
        } else if agora >= seisHoras {
            return Periodo.noite
        }
        
        return Periodo.manha
    }
    
    public class func saudacao() -> String {
        // Resgatar o periodo atual
        let periodo = NSSaudacao.definirPeriodo()
        
        // Retornar a mensagem conforme periodo
        
        if periodo == .manha {
            return "Bom Dia!"
            
        } else if periodo == .tarde {
            return "Boa Tarde!"
        }
        
        return "Boa Noite!"
    }
    
    public static func mensagemWhatsApp() -> String {
        
        //Resgatar período atual
        let periodo = NSSaudacao.definirPeriodo()
        
        //Count das mensagens do período atual
        let count = mensagens[periodo]!.count
        
        // Sortear um número
        let numeroSorteio = Int(arc4random_uniform(UInt32(count)))
        
        // Retornar a mensagem sorteada
        return mensagens[periodo]![numeroSorteio]
    }
    
    

}
