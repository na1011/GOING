package going.web.dispatcherservlet;

import java.util.Map;

public interface MyController {
	
	String process(Map<String, String> requestParam, Map<String, Object> myModel);
}
