package going.web.dispatcherservlet;

import java.util.Map;

public interface MyController {
	
	String process(Map<String, String> paramMap, Map<String, Object> model);
}