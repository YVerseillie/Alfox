#ifndef LedTri_H
#define LedTri_H
#define redLedPin 2
#define greenLedPin 3
#define blueLedPin 4
#include <Arduino.h>

enum COLOR {rouge = 1, jaune, vert, cyan, bleu, magenta}; /*fonction sur laquelle s'appuie le switchcase pour 
                                                          changer de couleur a chaque fois */
class LedTri{
  
  public:
    LedTri();
    ~LedTri();
  
    LedTri( int pLedRougePin, int pLedVertPin, int pLedBleuPin );
  
    void setCouleur(COLOR couleur, int lumi);

    void setCouleur(int rouge, int vert, int bleu);

  private:
    COLOR couleur;                             //attributs
    int ledRougePin;
    int ledVertPin;
    int ledBleuPin;                            //attributs
    void setRouge(int lumi);                   //méthodes
    void setJaune(int lumi);
    void setVert(int lumi);
    void setCyan(int lumi);
    void setBleu(int lumi);
    void setMagenta(int lumi);                 
    void eteindre();                           //méthodes
};

#endif /* LedTri */

