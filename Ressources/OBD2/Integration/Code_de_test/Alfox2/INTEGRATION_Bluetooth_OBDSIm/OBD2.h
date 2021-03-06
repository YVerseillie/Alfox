/*
  Librairie SoftwareSerial dans IDE ARDUINO aller dans Croquis > Inclurenune Blibliothèque >
  Gérer les Blibliothèques > Chercher "SowtwareSerial" > installer.
*/
#ifndef __OBD2__
#define __OBD2__

#include <Arduino.h>
#include "Bluetooth.h"
#define OBDSIM
//#define REEL

//Via la prise OBD2 d'une voiture
#ifdef REEL
#define DEBUT_POIDS_FORT 6
#define FIN_POIDS_FORT 8
#define DEBUT_POIDS_FAIBLE 9
#define FIN_POIDS_FAIBLE 11
#endif

//Via OBDSIM
#ifdef OBDSIM
#define DEBUT_POIDS_FORT 8
#define FIN_POIDS_FORT 10
#define DEBUT_POIDS_FAIBLE 11
#define FIN_POIDS_FAIBLE 13
#endif

typedef enum {C_VITESSE, C_CONSOMMATION, C_REGIME, C_DEFAUT, C_VERSION} TCode;
    
class OBD2
{

	private:
    
    Bluetooth* moduleBT;
    Uart* liaisonBT;
    String code[5] = {"010D", "015E", "010C", "CODE_DEFAUT_NONDEF" ,"ATI"};
  
	public:
		/** Constructeur **/
		OBD2(Bluetooth* bt);
    bool isConnected();
    String demande(TCode numCode);
    float lireConsomation();
    int lireRegimeMoteur();
    int lireVitesse();
    String lireReponse();
};

#endif
