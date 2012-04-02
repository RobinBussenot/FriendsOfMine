package fom

class Photo {
    
    String name
    byte[] photo
    static belongsTo=Album

    static constraints = {
        name blank:false
    }
}
