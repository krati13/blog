package ankios.blog.controller;

import java.io.IOException;
import java.io.InputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.IOUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.core.io.ClassPathResource;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * 
 * @author Arjun Agarwal
 * @since 15-Aug-2017
 */
@Controller
@RequestMapping(value = "/robots.txt")
public class RobotsController {

	public static final Logger logger = LoggerFactory.getLogger(RobotsController.class);

	/**
	 * Gets the robots.
	 *
	 * @param request
	 *            the request
	 * @param response
	 *            the response
	 * @return the robots
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 */
	@RequestMapping(method = RequestMethod.GET)
	public void getRobots(final HttpServletRequest request, final HttpServletResponse response) throws IOException {
		InputStream inputStream = null;
		try {
			logger.debug("Start downloading robots.txt...");
			inputStream = new ClassPathResource("robots.txt").getInputStream();
			response.setContentType(MediaType.TEXT_PLAIN_VALUE);
			IOUtils.copy(inputStream, response.getOutputStream());
		} finally {
			if (inputStream != null) {
				inputStream.close();
			}
		}

		logger.debug("Rendering robots.txt...");
	}

}
