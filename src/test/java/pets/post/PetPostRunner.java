package pets.post;

import com.intuit.karate.junit5.Karate;

public class PetPostRunner {

    @Karate.Test
    Karate petPost(){
        return Karate.run().relativeTo(getClass());
    }
}
