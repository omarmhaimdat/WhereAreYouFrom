//
//  CreateCities.swift
//  WhereAreYouFrom
//
//  Created by M'haimdat omar on 20-07-2019.
//  Copyright © 2019 M'haimdat omar. All rights reserved.
//

extension ViewController {
    
    func createCity() {
        let rabat = City(context: persistenceManager.context)
        rabat.id = 1
        rabat.name = "Rabat"
        
        let saleMedina = City(context: persistenceManager.context)
        saleMedina.id = 2
        saleMedina.name = "Salé Medina"
        
        let salaElJadida = City(context: persistenceManager.context)
        salaElJadida.id = 3
        salaElJadida.name = "Sala El-jadida"
        
        let skhiratTemara = City(context: persistenceManager.context)
        skhiratTemara.id = 4
        skhiratTemara.name = "Skhirat - Témara"
        
        let khemissat = City(context: persistenceManager.context)
        khemissat.id = 5
        khemissat.name = "Khémissat"
        
        let casablancaAnfa = City(context: persistenceManager.context)
        casablancaAnfa.id = 6
        casablancaAnfa.name = "Casablanca - Anfa"
        
        let casablancaHayMohammadiAinSebaa = City(context: persistenceManager.context)
        casablancaHayMohammadiAinSebaa.id = 7
        casablancaHayMohammadiAinSebaa.name = "Casablanca - Hay mohammadi - Aïn sebaa"
        
        let casablancaHayHassaniAinChock = City(context: persistenceManager.context)
        casablancaHayHassaniAinChock.id = 8
        casablancaHayHassaniAinChock.name = "Casablanca - Hay Hassani - Aïn chock"
        
        let casablancaBenmsikMediouna = City(context: persistenceManager.context)
        casablancaBenmsikMediouna.id = 9
        casablancaBenmsikMediouna.name = "Casablanca - Benmsik - Mediouna"
        
        let casablancaMoulayRachidSidiOthmane = City(context: persistenceManager.context)
        casablancaMoulayRachidSidiOthmane.id = 10
        casablancaMoulayRachidSidiOthmane.name = "Casablanca - Moulay Rachid - Sidi othmane"
        
        let casablancaElFidaDerbSoltane = City(context: persistenceManager.context)
        casablancaElFidaDerbSoltane.id = 11
        casablancaElFidaDerbSoltane.name = "Casablanca - El fida - Derb soltane"
        
        let casablancaMechouar = City(context: persistenceManager.context)
        casablancaMechouar.id = 12
        casablancaMechouar.name = "Casablanca - Mechouar"
        
        let casablancaSidiBernoussiZenata = City(context: persistenceManager.context)
        casablancaSidiBernoussiZenata.id = 13
        casablancaSidiBernoussiZenata.name = "Casablanca - Sidi bernoussi - Zenata"
        
        let mohammadia = City(context: persistenceManager.context)
        mohammadia.id = 14
        mohammadia.name = "Mohammadia"
        
        let fesJdid = City(context: persistenceManager.context)
        fesJdid.id = 15
        fesJdid.name = "Fès Jdid"
        
        let fesMedina = City(context: persistenceManager.context)
        fesMedina.id = 16
        fesMedina.name = "Fès Medina"
        
        let zouaghaMoulayYaacoub = City(context: persistenceManager.context)
        zouaghaMoulayYaacoub.id = 17
        zouaghaMoulayYaacoub.name = "Zouagha - Moulay yaacoub"
        
        let sefrou = City(context: persistenceManager.context)
        sefrou.id = 18
        sefrou.name = "Sefrou"
        
        let boulmane = City(context: persistenceManager.context)
        boulmane.id = 19
        boulmane.name = "Boulmane"
        
        let meknesMenzah = City(context: persistenceManager.context)
        meknesMenzah.id = 20
        meknesMenzah.name = "Meknès - Menzah"
        
        let meknesIsmailia = City(context: persistenceManager.context)
        meknesIsmailia.id = 21
        meknesIsmailia.name = "Meknès - Ismailia"
        
        let elHajeb = City(context: persistenceManager.context)
        elHajeb.id = 22
        elHajeb.name = "El Hajeb"
        
        let ifrane = City(context: persistenceManager.context)
        ifrane.id = 23
        ifrane.name = "Ifrane"
        
        let khenifra = City(context: persistenceManager.context)
        khenifra.id = 24
        khenifra.name = "Khénifra"
        
        let errachidia = City(context: persistenceManager.context)
        errachidia.id = 25
        errachidia.name = "Errachidia"
        
        let marrakechMenara = City(context: persistenceManager.context)
        marrakechMenara.id = 26
        marrakechMenara.name = "Marrakech Menara"
        
        let marrakechMedina = City(context: persistenceManager.context)
        marrakechMedina.id = 27
        marrakechMedina.name = "Marrakech Medina"
        
        let marrakechSidiYoussefBenAli = City(context: persistenceManager.context)
        marrakechSidiYoussefBenAli.id = 28
        marrakechSidiYoussefBenAli.name = "Marrakech - Sidi youssef ben ali"
        
        let marrakechElHaouz = City(context: persistenceManager.context)
        marrakechElHaouz.id = 29
        marrakechElHaouz.name = "Marrakech - El haouz"
        
        let chichaoua = City(context: persistenceManager.context)
        chichaoua.id = 30
        chichaoua.name = "Chichaoua"
        
        let kelaatEsSraghna = City(context: persistenceManager.context)
        kelaatEsSraghna.id = 31
        kelaatEsSraghna.name = "Kelaat es-sraghna"
        
        let essaouira = City(context: persistenceManager.context)
        essaouira.id = 32
        essaouira.name = "Essaouira"
        
        let agadir = City(context: persistenceManager.context)
        agadir.id = 33
        agadir.name = "Agadir"
        
        let inezganeAitMelloul = City(context: persistenceManager.context)
        inezganeAitMelloul.id = 34
        inezganeAitMelloul.name = "Inezgane - Aït melloul"
        
        let chtoukaAitBaha = City(context: persistenceManager.context)
        chtoukaAitBaha.id = 35
        chtoukaAitBaha.name = "Chtouka aït baha"
        
        let taroudant = City(context: persistenceManager.context)
        taroudant.id = 36
        taroudant.name = "Taroudant"
        
        let tiznit = City(context: persistenceManager.context)
        tiznit.id = 37
        tiznit.name = "Tiznit"
        
        let ouarzazate = City(context: persistenceManager.context)
        ouarzazate.id = 38
        ouarzazate.name = "Ouarzazate"
        
        let zagora = City(context: persistenceManager.context)
        zagora.id = 39
        zagora.name = "Zagora"
        
        let tangerAsila = City(context: persistenceManager.context)
        tangerAsila.id = 40
        tangerAsila.name = "Tanger - Asila"
        
        let beniMekada = City(context: persistenceManager.context)
        beniMekada.id = 41
        beniMekada.name = "Beni mekada"
        
        let laaracheKsarElkebir = City(context: persistenceManager.context)
        laaracheKsarElkebir.id = 42
        laaracheKsarElkebir.name = "Laarache - Ksar El kébir"
        
        let chefchaouen = City(context: persistenceManager.context)
        chefchaouen.id = 43
        chefchaouen.name = "Chefchaouen"
        
        let tetouan = City(context: persistenceManager.context)
        tetouan.id = 44
        tetouan.name = "Tétouan"
        
        let elHoceima = City(context: persistenceManager.context)
        elHoceima.id = 45
        elHoceima.name = "El hoceïma"
        
        let taza = City(context: persistenceManager.context)
        taza.id = 46
        taza.name = "Taza"
        
        let taounate = City(context: persistenceManager.context)
        taounate.id = 47
        taounate.name = "Taounate"
        
        let oujda = City(context: persistenceManager.context)
        oujda.id = 48
        oujda.name = "Oujda"
        
        let berkane = City(context: persistenceManager.context)
        berkane.id = 49
        berkane.name = "Berkane"
        
        let nador = City(context: persistenceManager.context)
        nador.id = 50
        nador.name = "Nador"
        
        let taourirt = City(context: persistenceManager.context)
        taourirt.id = 51
        taourirt.name = "Taourirt"
        
        let jerada = City(context: persistenceManager.context)
        jerada.id = 52
        jerada.name = "Jerada"
        
        let figuig = City(context: persistenceManager.context)
        figuig.id = 53
        figuig.name = "Figuig"
        
        let safi = City(context: persistenceManager.context)
        safi.id = 54
        safi.name = "Safi"
        
        let elJadida = City(context: persistenceManager.context)
        elJadida.id = 55
        elJadida.name = "El jadida"
        
        let settat = City(context: persistenceManager.context)
        settat.id = 56
        settat.name = "Settat"
        
        let khouribga = City(context: persistenceManager.context)
        khouribga.id = 57
        khouribga.name = "Khouribga"
        
        let benslimane = City(context: persistenceManager.context)
        benslimane.id = 58
        benslimane.name = "Benslimane"
        
        let kenitra = City(context: persistenceManager.context)
        kenitra.id = 59
        kenitra.name = "Kénitra"
        
        let sidiKacem = City(context: persistenceManager.context)
        sidiKacem.id = 60
        sidiKacem.name = "Sidi kacem"
        
        let beniMellal = City(context: persistenceManager.context)
        beniMellal.id = 61
        beniMellal.name = "Beni mellal"
        
        let azilal = City(context: persistenceManager.context)
        azilal.id = 62
        azilal.name = "Azilal"
        
        let smara = City(context: persistenceManager.context)
        smara.id = 63
        smara.name = "Smara"
        
        let guelmim = City(context: persistenceManager.context)
        guelmim.id = 64
        guelmim.name = "Guelmim"
        
        let tanTan = City(context: persistenceManager.context)
        tanTan.id = 65
        tanTan.name = "Tan-Tan"
        
        let tata = City(context: persistenceManager.context)
        tata.id = 66
        tata.name = "Tata"
        
        let assaZag = City(context: persistenceManager.context)
        assaZag.id = 67
        assaZag.name = "Assa-Zag"
        
        let laayoune = City(context: persistenceManager.context)
        laayoune.id = 68
        laayoune.name = "Laayoune"
        
        let boujdour = City(context: persistenceManager.context)
        boujdour.id = 69
        boujdour.name = "Boujdour"
        
        let ouedEdDahab = City(context: persistenceManager.context)
        ouedEdDahab.id = 70
        ouedEdDahab.name = "Oued Ed-dahab"
        
        let aoussred = City(context: persistenceManager.context)
        aoussred.id = 71
        aoussred.name = "Aoussred"
        
        let casablancaAinChok = City(context: persistenceManager.context)
        casablancaAinChok.id = 72
        casablancaAinChok.name = "Casablanca - Aïn chok"
        
        let casablancaNouacer = City(context: persistenceManager.context)
        casablancaNouacer.id = 73
        casablancaNouacer.name = "Casablanca - Nouacer"
        
        let casablancaMediouna = City(context: persistenceManager.context)
        casablancaMediouna.id = 74
        casablancaMediouna.name = "Casablanca - Mediouna"
        
        let mDiqFnideq = City(context: persistenceManager.context)
        mDiqFnideq.id = 75
        mDiqFnideq.name = "M'diq - Fnideq"
        
        let driouch = City(context: persistenceManager.context)
        driouch.id = 76
        driouch.name = "Driouch"
        
        let guercif = City(context: persistenceManager.context)
        guercif.id = 77
        guercif.name = "Guercif"
        
        let ouazzane = City(context: persistenceManager.context)
        ouazzane.id = 78
        ouazzane.name = "Ouazzane"
        
        let sidiSlimane = City(context: persistenceManager.context)
        sidiSlimane.id = 79
        sidiSlimane.name = "Sidi slimane"
        
        let midelt = City(context: persistenceManager.context)
        midelt.id = 80
        midelt.name = "Midelt"
        
        let berrechid = City(context: persistenceManager.context)
        berrechid.id = 81
        berrechid.name = "Berrechid"
        
        let sidiBennour = City(context: persistenceManager.context)
        sidiBennour.id = 82
        sidiBennour.name = "Sidi bennour"
        
        let skourErrhamna = City(context: persistenceManager.context)
        skourErrhamna.id = 83
        skourErrhamna.name = "Skour errhamna"
        
        let fqihBenSaleh = City(context: persistenceManager.context)
        fqihBenSaleh.id = 84
        fqihBenSaleh.name = "Fqih Ben saleh"
        
        let youssoufia = City(context: persistenceManager.context)
        youssoufia.id = 85
        youssoufia.name = "Youssoufia"
        
        let tinghir = City(context: persistenceManager.context)
        tinghir.id = 86
        tinghir.name = "Tinghir"
        
        let sidiIfni = City(context: persistenceManager.context)
        sidiIfni.id = 87
        sidiIfni.name = "Sidi Ifni"
        
        persistenceManager.save()
    }
}

