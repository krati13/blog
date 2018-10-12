package ankios.blog.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.net.HttpURLConnection;

@Controller
public class ExceptionController {

    @RequestMapping("/404")
    public String notFoundErrorHandler(HttpServletRequest request, Exception e) {
        return String.valueOf(HttpURLConnection.HTTP_NOT_FOUND);
    }
    @RequestMapping("/error")
    public String defaultErrorHandler(HttpServletRequest request, Exception e) {
        return "error";
    }
}
