/*
 * Projet  : Alfox
 * Fichier : User.java
 * Description : Classe interface de la table donneesTR
 * Cette table stocke les données TR
 */
package com.persistence;

import java.sql.*;
import java.util.ArrayList;
import javax.xml.bind.annotation.adapters.HexBinaryAdapter;

public class DonneesTR {

    static String sMode[] = {"STANDARD", "NORMAL", "DEGRADE", "DMD_GPS",
        "GPS", "MAINTENANCE", "INIT", "DORMIR", "ERREUR"};

    private String mode;             // non null
    private Timestamp datation;      // non null
    private int vitesse;
    private int regime;
    private int consommation;
    private int vitesseMax;
    private int regimeMax;
    private int consoMax;
    private int nbDefauts;
    private int defaut1;
    private int defaut2;
    private int defaut3;
    private int defaut4;
    private double latitude;
    private double longitude;
    private long distanceParcourue;
    private int seqNumber;           // non null, unique
    private double snr;              // non null
    private double rssi;             // non null
    private double avgSnr;           // non null
    private String device;           // non null, unique

    /**
     * Créer un nouvel objet persistant
     *
     * @param con
     * @param mode
     * @param datation
     * @param vitesse
     * @param regime
     * @param consommation
     * @param vitesseMax
     * @param regimeMax
     * @param consoMax
     * @param nbDefauts
     * @param defaut1
     * @param defaut2
     * @param defaut3
     * @param defaut4
     * @param latitude
     * @param longitude
     * @param distanceParcourue
     * @param seqNumber
     * @param snr
     * @param rssi
     * @param avgSnr
     * @param device
     * @return
     * @ return retourne une donneesTR si la date est unique sinon null
     * @throws Exception impossible d'accéder à la ConnexionMySQL ou la date est
     * deja dans la BD
     *
     */
    static public DonneesTR create(Connection con, String mode, Timestamp datation,
            int vitesse, int regime, int consommation, int vitesseMax, int regimeMax,
            int consoMax, int nbDefauts, int defaut1, int defaut2, int defaut3,
            int defaut4, double latitude, double longitude,
            long distanceParcourue, int seqNumber, double snr, double rssi,
            double avgSnr, String device) throws Exception {
        DonneesTR donneesTR = new DonneesTR(mode, datation, vitesse, regime,
                consommation, vitesseMax, regimeMax, consoMax, nbDefauts, defaut1,
                defaut2, defaut3, defaut4, latitude, longitude, distanceParcourue,
                seqNumber, snr, rssi, avgSnr, device);

        String queryString;
        if (mode == "NORMAL") {
            queryString
                    = "insert into donneesTR (Mode, Datation, Vitesse, Regime, "
                    + "Consommation, VitesseMax, RegimeMax, ConsoMax, NbDefauts, "
                    + "Defaut1, Defaut2, Defaut3, Defaut4, Latitude, Longitude, "
                    + "DistanceParcourue, SeqNumber, Snr, Rssi, AvgSnr, Device) "
                    + "values ("
                    + Utils.toString(mode) + ", "
                    + Utils.toString(datation) + ", "
                    + Utils.toString(vitesse) + ", "
                    + Utils.toString(regime) + ", "
                    + Utils.toString(consommation) + ", "
                    + Utils.toString(vitesseMax) + ", "
                    + Utils.toString(regimeMax) + ", "
                    + Utils.toString(consoMax) + ", "
                    + Utils.toString(nbDefauts) + ", "
                    + Utils.toString(defaut1) + ", "
                    + Utils.toString(defaut2) + ", "
                    + Utils.toString(defaut3) + ", "
                    + Utils.toString(defaut4) + ", "
                    + Utils.toString(latitude) + ", "
                    + Utils.toString(longitude) + ", "
                    + Utils.toString(distanceParcourue) + ", "
                    + Utils.toString(seqNumber) + ", "
                    + Utils.toString(snr) + ", "
                    + Utils.toString(rssi) + ", "
                    + Utils.toString(avgSnr) + ", "
                    + Utils.toString(device)
                    + ")";
        } else if ((mode == "DMD_GPS") || (mode == "GPS")) {
            queryString
                    = "insert into donneesTR (Mode, Datation, Vitesse, Regime, "
                    + "Consommation, VitesseMax, RegimeMax, ConsoMax, NbDefauts, "
                    + "Defaut1, Defaut2, Defaut3, Defaut4, Latitude, Longitude, "
                    + "DistanceParcourue, SeqNumber, Snr, Rssi, AvgSnr, Device) "
                    + "values ("
                    + Utils.toString(mode) + ", "
                    + Utils.toString(datation) + ", "
                    + "NULL,NULL,"
                    + "NULL,NULL,NULL,NULL,NULL,"
                    + "NULL,NULL,NULL,NULL,"
                    + Utils.toString(latitude) + ", "
                    + Utils.toString(longitude) + ", "
                    + Utils.toString(distanceParcourue) + ", "
                    + Utils.toString(seqNumber) + ", "
                    + Utils.toString(snr) + ", "
                    + Utils.toString(rssi) + ", "
                    + Utils.toString(avgSnr) + ", "
                    + Utils.toString(device)
                    + ")";
        } else {
            queryString
                    = "insert into donneesTR (Mode, Datation, Vitesse, Regime, "
                    + "Consommation, VitesseMax, RegimeMax, ConsoMax, NbDefauts, "
                    + "Defaut1, Defaut2, Defaut3, Defaut4, Latitude, Longitude, "
                    + "DistanceParcourue, SeqNumber, Snr, Rssi, AvgSnr, Device) "
                    + "values ("
                    + Utils.toString(mode) + ", "
                    + Utils.toString(datation) + ", "
                    + "NULL,NULL,"
                    + "NULL,NULL,NULL,NULL,NULL,"
                    + "NULL,NULL,NULL,NULL,NULL,NULL,"
                    + Utils.toString(distanceParcourue) + ", "
                    + Utils.toString(seqNumber) + ", "
                    + Utils.toString(snr) + ", "
                    + Utils.toString(rssi) + ", "
                    + Utils.toString(avgSnr) + ", "
                    + Utils.toString(device)
                    + ")";
        }
        Statement lStat = con.createStatement();
        lStat.executeUpdate(queryString, Statement.NO_GENERATED_KEYS);
        return donneesTR;
    }

    public static void saveData(Connection con, String data,
            Timestamp datation, double latitude, double longitude,
            String device, int seqNumber, float snr, float rssi, float avgSnr)
            throws Exception {
        // conversion de la chaine hexa en tableau de byte
        HexBinaryAdapter adapter = new HexBinaryAdapter();
        byte[] bData = adapter.unmarshal(data);

        int vitesseMoy = 0, regimeMoy = 0, consoMoy = 0, vitesseMax = 0,
                regimeMax = 0, consoMax = 0;
        int defaut1 = 0, defaut2 = 0, defaut3 = 0, defaut4 = 0;
        long distanceParcourue = 0L;

        // décodage du 1er octet TM
        boolean bluetoothActif = false;
        bluetoothActif = (bData[0] & 0x80) == 0x80;
        boolean OBD2Actif = false;
        OBD2Actif = (bData[0] & 0x40) == 0x40;
        int nbDefauts = 0;
        boolean isDefaut = false;
        isDefaut = (bData[0] & 0x10 >> 4) != 0;
        String mode = "";
        mode = sMode[bData[0] & 0x0F];
        if (mode == "ERREUR") {
            // rien à faire
        } else if (mode == "NORMAL") {
            // NORMAL : TM K1 K2 K3 CD CD VX VM RX RM CX CM
            distanceParcourue = bData[1] * 10000 + bData[2] * 100 + bData[3];
            defaut1 = (bData[4] & 0xF0) >> 4;
            defaut2 = bData[4] & 0x0F;
            defaut3 = (bData[5] & 0xF0) >> 4;
            defaut4 = bData[5] & 0x0F;
            nbDefauts = ((defaut1 != 0) ? 1 : 0) + ((defaut2 != 0) ? 1 : 0)
                    + ((defaut3 != 0) ? 1 : 0) + ((defaut4 != 0) ? 1 : 0);
            vitesseMax = bData[6];
            if (vitesseMax < 0) {
                vitesseMax = 256 + vitesseMax;
            }
            vitesseMoy = bData[7];
            if (vitesseMoy < 0) {
                vitesseMoy = 256 + vitesseMoy;
            }
            regimeMax = bData[8] * 100;
            regimeMoy = bData[9] * 100;
            consoMax = bData[10];
            if (consoMax < 0) {
                consoMax = 256 + consoMax;
            }
            consoMoy = bData[11];
            if (consoMoy < 0) {
                consoMoy = 256 + consoMoy;
            }
            DonneesTR donneesTR = create(con, mode, datation,
                    vitesseMoy, regimeMoy, consoMoy, vitesseMax, regimeMax, consoMax,
                    nbDefauts, defaut1, defaut2, defaut3, defaut4,
                    latitude, longitude, distanceParcourue,
                    seqNumber, snr, rssi, avgSnr, device);
        } else if ((mode == "DEGRADE") || (mode == "INIT") || (mode == "DORMIR")) {
            // TM K1 K2 K3 00 00 00 00 00 00 00 00
            distanceParcourue = bData[1] * 10000 + bData[2] * 100 + bData[3];
            DonneesTR donneesTR = create(con, mode, datation,
                    vitesseMoy, regimeMoy, consoMoy, vitesseMax, regimeMax, consoMax,
                    nbDefauts, defaut1, defaut2, defaut3, defaut4,
                    latitude, longitude, distanceParcourue,
                    seqNumber, snr, rssi, avgSnr, device);
        } else if ((mode == "DMD_GPS") || (mode == "GPS")) {
            // DMD_GPS : TM K1 K2 K3 LA LA LA LA LO LO LO LO
            boolean negLat = false;
            boolean negLg = false;
            
            // gestion du signe des données GPS.
            distanceParcourue = bData[1] * 10000 + bData[2] * 100 + bData[3];

            if ((bData[7] & 0x01) != 0) {
                bData[7] &= 0xFE;
                negLat = true;
            }
            if ((bData[11] & 0x01) != 0) {
                bData[11] &= 0xFE;
                negLg = true;
            }
            double lat = (float) bData[4] + (float) bData[5] / 100
                    + (float) bData[6] / 10000 + (float) bData[7] / 1000000;
            if (negLat) {
                lat = -lat;
            }
            double lg = (float) bData[8] + (float) bData[9] / 100
                    + (float) bData[10] / 10000 + (float) bData[11] / 1000000;
            if (negLg) {
                lg = -lg;
            }
            DonneesTR donneesTR = create(con, mode, datation,
                    vitesseMoy, regimeMoy, consoMoy, vitesseMax, regimeMax, consoMax,
                    nbDefauts, defaut1, defaut2, defaut3, defaut4,
                    lat, lg, distanceParcourue,
                    seqNumber, snr, rssi, avgSnr, device);
        }
    }

    /**
     * suppression de l'objet donneesTR dans la BD
     *
     * @param con
     * @return
     * @throws SQLException impossible d'accéder à la ConnexionMySQL
     */
    public boolean delete(Connection con) throws Exception {
        String queryString = "delete from donneesTR where Datation='" + datation + "' and Device = '" + device + "'";
        Statement lStat = con.createStatement();
        lStat.executeUpdate(queryString);
        return true;
    }

    /**
     * update de l'objet donneesTR dans la ConnexionMySQL
     *
     * @param con
     * @throws Exception impossible d'accéder à la ConnexionMySQL
     */
    public void save(Connection con) throws Exception {
        String queryString
                = "update donneesTR set "
                + " Mode =" + Utils.toString(mode) + ","
                + " Datation =" + Utils.toString(datation) + ","
                + " Vitesse =" + Utils.toString(vitesse) + ","
                + " Regime =" + Utils.toString(regime) + ","
                + " Consommation =" + Utils.toString(consommation) + ","
                + " VitesseMax =" + Utils.toString(vitesseMax) + ","
                + " RegimeMax =" + Utils.toString(regimeMax) + ","
                + " ConsoMax =" + Utils.toString(consoMax) + ","
                + " NbDefauts =" + Utils.toString(nbDefauts) + ","
                + " Defaut1 =" + Utils.toString(defaut1) + ","
                + " Defaut2 =" + Utils.toString(defaut2) + ","
                + " Defaut3 =" + Utils.toString(defaut3) + ","
                + " Defaut4 =" + Utils.toString(defaut4) + ","
                + " Latitude =" + Utils.toString(latitude) + ","
                + " Longitude =" + Utils.toString(longitude) + ","
                + " DistanceParcourue =" + Utils.toString(distanceParcourue) + ","
                + " SeqNumber =" + Utils.toString(seqNumber) + ","
                + " Snr =" + Utils.toString(snr) + ","
                + " Rssi =" + Utils.toString(rssi) + ","
                + " AvgSnr =" + Utils.toString(avgSnr) + ","
                + " Device =" + Utils.toString(device)
                + " where Datation ='" + datation + "'"
                + " and device ='" + device + "'";
        Statement lStat = con.createStatement();
        lStat.executeUpdate(queryString, Statement.NO_GENERATED_KEYS);
    }

    /**
     * Retourne une donneesTR trouve par sa date, saved is true
     *
     * @param con
     * @param idSigfox date de donneesTR a trouver
     * @return donneesTR trouv" par immatriculation
     * @throws java.lang.Exception
     */
    public static DonneesTR getLastByImmatriculation(Connection con, String idSigfox) throws Exception {
        String queryString = "select * from donneesTR where Device = '" + idSigfox + "' order by Datation desc limit 1";
        Statement lStat = con.createStatement(
                ResultSet.TYPE_SCROLL_INSENSITIVE,
                ResultSet.CONCUR_READ_ONLY);
        ResultSet lResult = lStat.executeQuery(queryString);
        // y en a t'il au moins un ?
        if (lResult.next()) {
            return creerParRequete(lResult);
        } else {
            return null;
        }
    }

    public static ArrayList<DonneesTR> getByDate(Connection con, String idSigfox, String dateDonnees) throws Exception {
        String queryString = "select * from donneesTR where Device = '" + idSigfox + "' and Datation between '" + dateDonnees + " 00:00:00' and '" + dateDonnees + " 23:59:59' order by Datation desc";
        Statement lStat = con.createStatement(
                ResultSet.TYPE_SCROLL_INSENSITIVE,
                ResultSet.CONCUR_READ_ONLY);
        ResultSet lResult = lStat.executeQuery(queryString);
        ArrayList<DonneesTR> lstDonneesTR = new ArrayList<>();
        // y en a t'il au moins un ?
        while (lResult.next()) {
            lstDonneesTR.add(creerParRequete(lResult));
        }
        return lstDonneesTR;
    }

    public static ArrayList<DonneesTR> getDonneesVehicule(Connection con, String idSigfox) throws Exception {
        String queryString = "select * from donneesTR where Device = '" + idSigfox + "' order by Datation desc";
        Statement lStat = con.createStatement(
                ResultSet.TYPE_SCROLL_INSENSITIVE,
                ResultSet.CONCUR_READ_ONLY);
        ResultSet lResult = lStat.executeQuery(queryString);
        ArrayList<DonneesTR> lstDonneesTR = new ArrayList<>();
        // y en a t'il au moins un ?
        while (lResult.next()) {
            lstDonneesTR.add(creerParRequete(lResult));
        }
        return lstDonneesTR;
    }

    private static DonneesTR creerParRequete(ResultSet result) throws Exception {
        String lMode = result.getString("Mode");
        Timestamp lDatation = result.getTimestamp("Datation");
        int lVitesse = result.getInt("Vitesse");
        int lRegime = result.getInt("Regime");
        int lConsommation = result.getInt("Consommation");
        int lVitesseMax = result.getInt("VitesseMax");
        int lRegimeMax = result.getInt("RegimeMax");
        int lConsoMax = result.getInt("ConsoMax");
        int lNbDefauts = result.getInt("NbDefauts");
        int lDefaut1 = result.getInt("Defaut1");
        int lDefaut2 = result.getInt("Defaut2");
        int lDefaut3 = result.getInt("Defaut3");
        int lDefaut4 = result.getInt("Defaut4");
        double lLatitude = result.getDouble("Latitude");
        double lLongitude = result.getDouble("Longitude");
        long lDistanceParcourue = result.getLong("DistanceParcourue");
        int lSeqNumber = result.getInt("SeqNumber");
        double lSnr = result.getDouble("Snr");
        double lRssi = result.getDouble("Rssi");
        double lAvgSnr = result.getDouble("AvgSnr");
        String lDevice = result.getString("Device");
        return new DonneesTR(lMode, lDatation, lVitesse, lRegime, lConsommation,
                lVitesseMax, lRegimeMax, lConsoMax, lNbDefauts, lDefaut1, lDefaut2,
                lDefaut3, lDefaut4, lLatitude, lLongitude, lDistanceParcourue,
                lSeqNumber, lSnr, lRssi, lAvgSnr, lDevice);
    }

    /**
     * Cree et initialise completement DonneesTR
     */
    private DonneesTR(String mode, Timestamp datation,
            int vitesse, int regime, int consommation, int vitesseMax, int regimeMax,
            int consoMax, int nbDefauts, int defaut1, int defaut2, int defaut3,
            int defaut4, double latitude, double longitude, long distanceParcourue,
            int seqNumber, double snr, double rssi, double avgSnr, String device) {
        this.mode = mode;
        this.datation = datation;
        this.vitesse = vitesse;
        this.regime = regime;
        this.consommation = consommation;
        this.vitesseMax = vitesseMax;
        this.regimeMax = regimeMax;
        this.consoMax = consoMax;
        this.nbDefauts = nbDefauts;
        this.defaut1 = defaut1;
        this.defaut2 = defaut2;
        this.defaut3 = defaut3;
        this.defaut4 = defaut4;
        this.latitude = latitude;
        this.longitude = longitude;
        this.distanceParcourue = distanceParcourue;
        this.seqNumber = seqNumber;
        this.snr = snr;
        this.rssi = rssi;
        this.avgSnr = avgSnr;
        this.device = device;
    }

    // --------------------- les assesseurs ----------------------------
    public String getMode() {
        return mode;
    }

    public Timestamp getDatation() {
        return datation;
    }

    public int getVitesse() {
        return vitesse;
    }

    public int getRegime() {
        return regime;
    }

    public double getConsommation() {
        return consommation / 10;
    }

    public int getVitesseMax() {
        return vitesseMax;
    }

    public int getRegimeMax() {
        return regimeMax;
    }

    public double getConsoMax() {
        return consoMax / 10;
    }

    public int getNbDefauts() {
        return nbDefauts;
    }

    public int getDefaut1() {
        return defaut1;
    }

    public int getDefaut2() {
        return defaut2;
    }

    public int getDefaut3() {
        return defaut3;
    }

    public int getDefaut4() {
        return defaut4;
    }

    public double getLatitude() {
        return latitude;
    }

    public double getLongitude() {
        return longitude;
    }

    public long getDistanceParcourue() {
        return distanceParcourue;
    }

    public int getSeqNumber() {
        return seqNumber;
    }

    public double getSnr() {
        return snr;
    }

    public double getRssi() {
        return rssi;
    }

    public double getAvgSnr() {
        return avgSnr;
    }

    public String getDevice() {
        return device;
    }

    /**
     * toString() operator overload
     *
     * @return the result string
     */
    @Override
    public String toString() {
        return " Mode = " + Utils.toString(mode) + "\t"
                + " Datation = " + Utils.toString(datation)
                + " Vitesse = " + Utils.toString(vitesse)
                + " Regime = " + Utils.toString(regime)
                + " Consommation = " + Utils.toString(consommation)
                + " VitesseMax = " + Utils.toString(vitesseMax)
                + " RegimeMax = " + Utils.toString(regimeMax)
                + " ConsoMax = " + Utils.toString(consoMax)
                + " NbDefauts = " + Utils.toString(nbDefauts)
                + " Defaut1 = " + Utils.toString(defaut1)
                + " Defaut2 = " + Utils.toString(defaut2)
                + " Defaut3 = " + Utils.toString(defaut3)
                + " Defaut4 = " + Utils.toString(defaut4)
                + " Latitude = " + Utils.toString(latitude)
                + " Longitude = " + Utils.toString(longitude)
                + " DistanceParcourue = " + Utils.toString(distanceParcourue)
                + " SeqNumber = " + Utils.toString(seqNumber)
                + " Snr = " + Utils.toString(snr)
                + " Rssi = " + Utils.toString(rssi)
                + " AvgSnr = " + Utils.toString(snr)
                + " Device = " + Utils.toString(device)
                + " ";
    }
}
