package com.Auth.Users;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class SignUpController {

	@Autowired
	private DataSource dataSource;
	

	@GetMapping("/signup")
	public String showPage() {
		return "signup";
	}
	@GetMapping("showSignup")
	public String showSignupUsers(Model model) {
		String sql = "select firstname, lastname, email, gender, location from users_table";
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		//Bean Row mapper push the data into list as one by one
		List<SignUpInfo> userList = jdbcTemplate.query(sql, new BeanPropertyRowMapper(SignUpInfo.class));
		model.addAttribute("users", userList);
		
		return ("showSignup");
	}
	@GetMapping("deleteUser")
	public String deleteUserAction(@RequestParam String cpname) {
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		jdbcTemplate.update("delete from users_table where email =?", new Object[] {cpname});
		return "redirect:/showSignup";
	}

	@PostMapping("signup")
	public String postData(HttpServletRequest req) {
		
		String firstname = req.getParameter("firstname");	
		String lastname = req.getParameter("lastname");
		String email = req.getParameter("email");
		String gender = req.getParameter("gender");
		String location = req.getParameter("location");
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		Object[] data = new Object[] { firstname, lastname, email, gender, location };
		jdbcTemplate.update("insert into users_table values(?,?,?,?,?)", data);
		SignUpInfo info = new SignUpInfo(firstname, lastname, email, gender, location);
		req.setAttribute("info", info);
		String msg  = "Added to database";
		req.setAttribute("msg", msg);
		return ("signup");
	}
	@PostMapping("showsignup")
	public String showUsers() {
		return "showsignup";
	}
}
