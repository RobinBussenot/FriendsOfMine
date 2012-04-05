package fom

/**
 * Membre du reseau social 
 * 
 * @author Robin Bussenot (robinbussenot@gmail.com) & Vincent Carassus (vincentcarassus@gmail.com)
 */
class Membre {
    
	String lastname
    String firstname
    String email
    
    static hasMany = [friends:Membre, albums:Album]
	
	public Membre(String lastname, String firstname, String email) {
		super();
		this.lastname = lastname;
		this.firstname = firstname;
		this.email = email;
	}
    
    static constraints = {
        lastname blank:false, size: 3..30
        firstname blank:false, size: 3..30
        email email:true,blank:false
    }
	
	@Override
	public boolean equals(Object other) {
		if(other == null) return false
		if(!(other instanceof Membre)) return false
		Membre otherMembre = (Membre) other
		this.id == otherMembre.id
	}
}
