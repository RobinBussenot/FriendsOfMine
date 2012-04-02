package fom
import javax.persistence.*

/*
 * Membre du reseau social 
 */

class Membre {

    int id
    String nom
    String prenom
    String email
    Album album
    //Classe d'association serait peut etre mieux
    static hasMany=[friends:Membre]
    
    
    static constraints = {
        nom blank:false
        prenom blank:false
        email email:true,blank:false
    }
}
