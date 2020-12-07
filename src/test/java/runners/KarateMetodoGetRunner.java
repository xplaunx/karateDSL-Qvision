package runners;


import com.intuit.karate.KarateOptions;
import com.intuit.karate.junit4.Karate;
import org.junit.runner.RunWith;

@RunWith(Karate.class)
@KarateOptions(
        features = {"src/test/resources/features/karate_metodo_get.feature"}
)
public class KarateMetodoGetRunner {
}
