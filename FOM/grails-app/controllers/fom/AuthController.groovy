package fom


import org.springframework.dao.DataIntegrityViolationException

class AuthController {
    
    
     def authenticationService

    def index() { 
        redirect(action:'signup')
    }
 
    
    
    
}
