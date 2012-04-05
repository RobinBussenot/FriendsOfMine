package fom

/**
 * Album photo
 * Un <code>Album</code> appartient à un <code>Membre</code> et contient 0..* <code>Photos</code>
 * 
 * @author Robin Bussenot (robinbussenot@gmail.com) & Vincent Carassus (vincentcarassus@gmail.com)
 * @see fom.Membre
 * @see fom.Photo
 */
class Album {
	String name
	
    static hasone = [owner:Membre]
    static hasMany = [photos:Photo]
	static belongsTo = Membre
	
    static constraints = {
		name blank:false
    }
}
