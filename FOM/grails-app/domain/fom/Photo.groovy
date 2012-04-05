package fom

/**
 * Photo
 * Une <code>Photo</code> appartient à un <code>Album</code>
 * 
 * @author Robin Bussenot (robinbussenot@gmail.com) & Vincent Carassus (vincentcarassus@gmail.com)
 * @see fom.Album
 */
class Photo {
    String name
    byte[] photo
	
    static belongsTo = Album

    static constraints = {
        name blank:false
		photo nullable:false
    }
}
