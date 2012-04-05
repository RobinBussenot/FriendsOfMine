package fom



import grails.test.mixin.*
import org.junit.*

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(Membre)
class MembreTests {

    void testAttributs() {
       Membre m1 = new Membre("LastName", "FirstName", "test@mail.net")
	   m1.save()
	   assert m1.getFirstname().equals("FirstName")
	   assert m1.getLastname().equals("LastName")
	   assert m1.getEmail().equals("test@mail.net")
    }
	
	void testIds() {
		Membre m1 = new Membre("LastName", "FirstName", "test@mail.net")
		m1.save()
		assert m1.id == 1
		Membre m2 = new Membre("OtherName", "OtherOtherName", "mymail@mail.com")
		m2.save()
		assert m2.id == 2
	}
}
