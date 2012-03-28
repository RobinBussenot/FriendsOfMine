package fom

class Membre {

    
    String nom
    String prenom
    String email
    
    
    static constraints = {
        nom blank:false
        prenom blank:false
        email email:true,blank:false
    }
}
