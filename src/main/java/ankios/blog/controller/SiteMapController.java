/*
 * Copyright 2016, http://mytrusteddr.com/
 * All rights reserved.
 */

/**
 * 
 */
package ankios.blog.controller;

import java.io.IOException;
import java.io.InputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.bind.JAXBException;

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
public class SiteMapController {

	public static final Logger logger = LoggerFactory.getLogger(SiteMapController.class);


	/**
	 * Gets the sitemap.
	 *
	 * @param request
	 *            the request
	 * @param response
	 *            the response
	 * @return the sitemap
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 * @throws JAXBException
	 *             the JAXB exception
	 */
	@RequestMapping(value = "/sitemap.xml", method = RequestMethod.GET)
	public void getSitemap(final HttpServletRequest request, final HttpServletResponse response) throws IOException, JAXBException {
		logger.debug("...Start downloading sitemap.xml...");
		InputStream inputStream = null;
		try {
			inputStream = new ClassPathResource("sitemap.xml").getInputStream(); // read file
			response.setContentType(MediaType.APPLICATION_XML_VALUE);
			IOUtils.copy(inputStream, response.getOutputStream());
		} finally {
			if (inputStream != null) {
				inputStream.close();
			}
		}
		inputStream.close();
		logger.debug("Rendered sitemap.xml...");
	}


}
