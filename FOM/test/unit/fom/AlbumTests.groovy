package fom



import grails.test.mixin.*
import org.junit.*

import fom.Membre

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(Album)
class AlbumTests {

	void testAlbum() {
		Membre m1 = new Membre("LastName", "FirstName", "test@mail.net")
		Album a1 = new Album("test", m1)
		a1.save()
		assert a1.id == 1
		assert a1.getName().equals("test")
		assert a1.getOwner().equals(m1)
	}
}
