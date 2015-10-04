/*  This file is part of Waisda 

    Copyright (c) 2012 Netherlands Institute for Sound and Vision
    https://github.com/beeldengeluid/waisda
	
    Waisda is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    Waisda is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with Waisda.  If not, see <http://www.gnu.org/licenses/>.
*/

package nl.waisda.controllers;

import java.io.IOException;
import java.io.StringWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import nl.waisda.domain.User;
import nl.waisda.forms.LoginForm;
import nl.waisda.forms.RegisterForm;
import nl.waisda.forms.RequestResetForm;
import nl.waisda.services.UserSessionService;
import nl.waisda.services.VideoService;

import org.apache.log4j.Logger;
import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class HomeController {
	
	private static final Logger LOGGER = Logger.getLogger(HomeController.class);

	@Autowired
	private UserSessionService userSessionService;
	
	@Autowired
	private VideoService videoService;
	
	@RequestMapping(value = { "/", "/index.html" })
	public String home(@RequestParam(defaultValue = "1", required = false) int page, ModelMap model, HttpSession session) {
		model.addAttribute("loginForm", new LoginForm());
		model.addAttribute("form", new RegisterForm());
		
		model.addAttribute("cssClass", "home");
		
		
		return "z_home";
	}


	
	@RequestMapping("/currentUser.js")
	public void currentUserJson(HttpServletRequest req, HttpServletResponse res) throws IOException {
		res.setContentType("text/javascript");
		
		User currentUser = userSessionService.getCurrentUser(req.getSession());
		ObjectMapper om = new ObjectMapper();
		StringWriter sw = new StringWriter();
		om.writeValue(sw, currentUser);
		res.getWriter().write("var CurrentUser = " + sw.toString() + ";");
	}

}
