import be.vdab.controller.ActorController;
import org.junit.Test;
import static org.junit.Assert.assertNotNull;

public class ActorControllerTest {

    @Test
    public void actorRepositoryCanFindActors() throws Exception {
        ActorController actorController = new ActorController();

        assertNotNull(actorController.getAllActors());
    }
}
