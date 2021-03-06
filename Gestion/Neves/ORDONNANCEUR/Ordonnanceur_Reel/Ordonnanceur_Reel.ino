#include "DonneesTR.h"
#include "Bluetooth.h"
#include "CarteSD.h"
#include "GPS.h"
#include "OBD2.h"
#include "LedTri.h"
#include "Global.h"
#include <SoftwareSerial.h>


void traiterEtat(Mode mode);

void nouvelEtat(Etat e) {
    
    if (e != etat) {
        traiterEtat(EXIT);
        // on doit toujours revenir à un état de suivi normal
        if (e == STANDARD) {
            if (connexionOBD2)
                etat = NORMAL;
            else
                etat = DEGRADE;
        }
        else 
            etat = e;
        traiterEtat(ENTRY);
        traiterEtat(DO);
        chgtModeSrv = false;
    }
}

void traiterEvenement(Event ev) {
   
    switch (etat) {
            case INIT:
                nouvelEtat(INIT);
                break;
            case NORMAL:
                switch (ev) {
                    case MODE_DMD_GPS:
                        nouvelEtat(DMD_GPS);
                        break;
                    case MODE_GPS:
                        nouvelEtat(GPS);
                        break;
                    case BLUETOOTH_OFF:
                        nouvelEtat(DEGRADE);
                        break;                                                
                    case MODE_DORMIR:
                        nouvelEtat(DORMIR);
                        break;
                    case MODE_MAINTENANCE:
                        nouvelEtat(MAINTENANCE);
                        break;
                    case MODE_INIT:
                        nouvelEtat(INIT);
                        break;
                }
                break;
            case DEGRADE:
                switch (ev) {
                    case MODE_DMD_GPS:
                        nouvelEtat(DMD_GPS);
                        break;
                    case MODE_GPS:
                        nouvelEtat(GPS);
                        break;
                    case BLUETOOTH_ON:
                        nouvelEtat(NORMAL);
                        break;
                   
                    case MODE_DORMIR:
                        nouvelEtat(DORMIR);
                        break;
                    case MODE_MAINTENANCE:
                        nouvelEtat(MAINTENANCE);
                        break;
                    case MODE_INIT:
                        nouvelEtat(INIT);
                        break;
                }
                break;
            case DMD_GPS :
                nouvelEtat(DMD_GPS);
                break;
            case GPS :
                switch (ev) {
                    case MODE_STANDARD:
                        nouvelEtat(STANDARD);
                        break;
                    case MODE_DORMIR:
                        nouvelEtat(DORMIR);
                        break;
                    case MODE_MAINTENANCE:
                        nouvelEtat(MAINTENANCE);
                        break;
                    case MODE_INIT:
                        nouvelEtat(INIT);
                        break;
                    }
                break;
            case DORMIR :
                switch (ev) {
                    case MODE_STANDARD:
                        nouvelEtat(STANDARD);
                        break;                        
                    case MODE_MAINTENANCE:
                        nouvelEtat(MAINTENANCE);
                        break;
                    }
                break;
            case MAINTENANCE :
                switch (ev) {
                    case MODE_INIT:
                        nouvelEtat(INIT);
                        break;
                    case MODE_STANDARD:
                        nouvelEtat(STANDARD);
                        break;
                    }
                break;
        }
    
    
}

void traiterEtat(Mode mode) {
    switch (etat) {
        case INIT:
            switch (mode) {
                case ENTRY:
                    break;
                case DO:
                    cout << "Initialisation" << endl;
                    nouvelEtat(STANDARD);
                    break;
                case EXIT:
                    break;
            }
            break;
        case NORMAL:
            switch (mode) {
                case ENTRY:
                    if (chgtModeSrv)
                        dureeCumulee = 0;
                    break;
                case DO:
                    if ((dureeCumulee % tempoMessage) == 0) {
                        cout << "Envoi d'un message NORMAL" << endl;
                       // sigfox.envoyer(Message.normal(
                         //   connexionOBD2, 
                           // 0, 
                            //dpVoiture.getCodeDefauts(), 
                            //(int)dpVoiture.getCompteur(),
                            //dpVoiture.getConsoMoyenne(), 
                            //dpVoiture.getVitesseMoyenne(),
                            //dpVoiture.getRegimeMoyen())
                      //  );
                    }
                    break;
                case EXIT:
                    break;
            }
            break;
        case DEGRADE:
            switch (mode) {
                case ENTRY:
                    if (chgtModeSrv)
                        dureeCumulee = 0;
                    break;
                case DO:
                    if ((dureeCumulee % tempoMessage) == 0) {
                        cout << "Envoi d'un message DEGRADE" << endl;
                        //sigfox.envoyer(Message.degrade(connexionOBD2));
                    }
                    break;
                case EXIT:
                    break;
            }
            break;
        case DMD_GPS:
            switch (mode) {
                case ENTRY:
                    dureeCumulee = 0;
                    break;
                case DO:
                    cout << "Envoi d'un message DMD_GPS" << endl;
                    //sigfox.envoyer(Message.gps(gps));
                    chgtModeSrv = false;
                    nouvelEtat(STANDARD);
                    break;
                case EXIT:
                    break;
            }
            break;
        case GPS:
            switch (mode) {
                case ENTRY:
                    dureeCumulee = 0;
                    break;
                case DO:
                    if ((dureeCumulee % tempoMessage) == 0) {
                        cout << "Envoi d'un message GPS" << endl;
                        //sigfox.envoyer(Message.gps(gps));
                    }
                    break;
                case EXIT:
                    break;
            }
            break;
        case DORMIR:
            switch (mode) {
                case ENTRY:
                    cout << "Envoi d'un message DORMIR" << endl;
                    //sigfox.envoyer(Message.eco(connexionOBD2));
                    break;
                case DO:                   
                    break;
            }
            break;
        case MAINTENANCE:
            switch (mode) {
                case ENTRY:
                    // afficher un id sur la console
                    cout << "Envoi d'un message MAINTENANCE" << endl;
                    break;
                case DO:
                    break;
                case EXIT:
                    break;            
            }
            break;
    }
}

void setup() {
    Serial.begin(9600);
    Serial.println(VERSION); 
}


loop() {
//variables

  const int dureeEnSeconde = 0;
  
//debut 

    // millis retourne un entier contenant le nombre de millisecondes depuis le démarrage du programme
    unsigned long heureDebut = millis();  
  
    // ---------- TRAITEMENTS SYSTEMATIQUES -------------
 
    // le GPS, on récupère l'heure et la position
    if gps.isDispo() {

        majGPS();
        /* donneesTR.setLatitude(gps.getLatitude());
        donneesTR.setLongitude(gps.getLongitude());
        donneesTR.setDateGPS(gps.getDate()); */
    }
    
    // Horloge Temps Réel
    // donneesTR.setDateHTR(htr.getDate());
    
    // LED
    led.setCouleur(couleurEtatCrt);

    // ---------------------------------------------------
    // ------------- TRAITEMENTS EVENEMENTS -------------

    // réception d’un message Sigfox de changement d’état
    if sigfox.msgPresent() {
        msg = sigfox.lire;
        nouvelEtat = message.decode(msg);               
        mae.nouvelEvent(nouvelEtat);
    }
    
    // Surveillance du Bluetooth
    if (BLUETOOTH_ON) {
        if (mae.getEtat = DEGRADE) {
            mae.nouvelEvent(BLUETOOTH_ON);
        }
    else  (mae.getEtat = NORMAL) 
        mae.nouvelEvent(BLUETOOTH_OFF);
    }
    
    // Surveillance de la voie série
    int donneesAlire = Serial.available();    //lecture du nombre de caractères disponibles dans le buffer
    if (donneesAlire > 0) {                   //si le serial a reçu un caractère // si le buffer n'est pas vide
        car = Serial.read(donneesAlire);     //lecture du caractère reçu
        //while(Serial.read(donneesAlire) != -1);  Permet de lire et vider tout le buffer; à voir si à utiliser? 
    
         if car =’#’ {
          mae.nouvelEvent(MAINTENANCE);
        }
    }    
    
    // ---------------------------------------------------
    // -------------- TRAITEMENTS COURANTS ---------------
    
    mae.traiterEtat(DO);
    
    // ------- Cycle de traitement de 1s exactement ------
 
    dormir(1000 – (millis - heureDebut));
    dureeEnSeconde = dureeEnSeconde + 1;
//fin 
    
    // ---------------------------------------------------
    
    // Procédures appelées dans le traitement DO de la MAE
//traitement12mn
//debut 

    sigfox.envoyer(message.codage(mae.etat, donneesTR)); 
    carteSD.ecrire(donneesTR);
    
//fin  

// on le traite en une seule fois (c’est suspensif)
// durée approximative 3x50ms (A vérifier)
// les setter de donnéesTR font les calculs de moyennes, max et km
// acqDonneesVehicule
// debut

        majDataTR();
        /*obd2.demande(‘vitesse’);
        vitesse = obd2.lire();
        donneesTR.setVitesse(vitesse);
        obd2.demande(‘regime’);
        regime = obd2.lire();
        donneesTR.setVitesse(regime);
        obd2.demande(‘consommation’);
        consommation <- obd2.lire();
        donneesTR.setVitesse(consommation);
        obd2.demande(‘Defauts’);
        defauts = obd2.lire(); */
        if defauts {
            nbDefauts = nbDefauts + 1;
            donneesTR.setDefauts(defauts);
        }
}
// ---------------------------------------------------
