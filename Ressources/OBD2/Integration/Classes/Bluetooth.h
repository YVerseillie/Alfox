/*
  Librairie SoftwareSerial.h disponible dans IDE Arduino ---> Croquis ---> Inclure une bibliothèque ---> Gérer les bibliothèques
  ---> Rechercher et installer SoftwareSerial
*/


#ifndef __BLUETOOTH__
#define __BLUETOOTH__

#include <Arduino.h>
#include "wiring_private.h"
#define PINALIM 0
#define PINEN 1

class Bluetooth {

  private :
    Uart* serialBT;
    int modeMaster();
    int modeConnexion();
    int motDePasse();
    int initialisation();
    int appairage(String adresse);
    int bind(String adresse);
    int modeDeconnecte();
    int lien(String adresse);
    int reinitialiser();
    int pinAlim;
    int pinEn;
    String adresseOBD2;
    
  
  public:
    Bluetooth(int pinAlim, int pinEn);
    ~Bluetooth();
    int connexion(String adresse);
    bool isActif();
    Uart* getLiaisonBT();
};

#endif
