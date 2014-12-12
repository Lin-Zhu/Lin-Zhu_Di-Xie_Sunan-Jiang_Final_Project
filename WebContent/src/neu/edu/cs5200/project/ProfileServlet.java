package neu.edu.cs5200.project;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sun.invoke.empty.Empty;


@WebServlet(name = "ProfileServlet", urlPatterns = { "/ProfileServlet" })
public class ProfileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		
		String phoneId = request.getParameter("phoneId");
		String actionDelete = request.getParameter("actionDelete");
		
		String emailId = request.getParameter("emailId");
		String emailDelete = request.getParameter("emailDelete");
		
		String workId = request.getParameter("workId");
		String workDelete = request.getParameter("workDelete");
		
		String educationId = request.getParameter("educationId");
		String educationDelete = request.getParameter("educationDelete");
		
		String action = request.getParameter("action");
		String profileId = request.getParameter("profileId");
		UserDao userDao = new UserDao();
		ProfileDao profileDao = new ProfileDao();
		PhoneDao phoneDao = new PhoneDao();
		EmailDao emailDao = new EmailDao();
		WorkDao workDao = new WorkDao();
		EducationDao educationDao = new EducationDao();
		List<User> usersByUsername = userDao.selectUserByUsername(username);
		User user = usersByUsername.get(0);
		String myButton = request.getParameter("myButton");
		
		if ("deleteAll".equals(action) && profileId!=null){
			profileDao.removeProfileById(Integer.parseInt(profileId));
		}
		
		System.out.println("this is my phone Id"+actionDelete+" "+phoneId+""+username);
		if ("deletePhone".equals(actionDelete)&&Integer.parseInt(phoneId)!=0){
			System.out.println("this is my phone Id");
			phoneDao.removePhoneById(Integer.parseInt(phoneId));
		}
		
		if ("emailDelete".equals(emailDelete)&&Integer.parseInt(emailId)!=0){
			System.out.println("this is my phone Id");
			emailDao.removeEmailById(Integer.parseInt(emailId));
		}
		
		if ("workDelete".equals(workDelete)&&Integer.parseInt(workId)!=0){
			System.out.println("this is my phone Id");
			workDao.removeWorkById(Integer.parseInt(workId));
		}
		
		System.out.println("this is my education"+educationDelete+" "+educationId+""+username);
		if ("educationDelete".equals(educationDelete)&&Integer.parseInt(educationId)!=0){
			System.out.println("I'm in delete" + educationId);
			educationDao.removeEducationById(Integer.parseInt(educationId));
		}
		
		System.out.println(myButton);
		if (myButton!=null){
			String nickname = request.getParameter("nickname");
			if (nickname!=null){
			String gender = request.getParameter("gender");
			String dob = request.getParameter("dob");
			String currentlocation = request.getParameter("currentlocation");
			String hometown = request.getParameter("hometown");
			String Language = request.getParameter("Language");
			String address = request.getParameter("address");
			
			String phone = request.getParameter("phone");
			String phonetype = request.getParameter("phonetype");
			
			String email = request.getParameter("email");
			String emailtype = request.getParameter("emailtype");
			
			String company = request.getParameter("company");
			String occupation = request.getParameter("occupation");
			String WorkAddress = request.getParameter("WorkAddress");
			System.out.println(phone+""+phonetype+""+gender+""+occupation);
			
			String institution = request.getParameter("institution");
			String enrollment = request.getParameter("enrollment");
			String graduation = request.getParameter("graduation");
			String major = request.getParameter("major");
			String degree = request.getParameter("degree");
			
			Profile profile = new Profile(nickname,Gender.valueOf(gender),dob,currentlocation,hometown,Language,address,user);
			Phone createdPhone = new Phone(Type.valueOf(phonetype), phone, profile);
			Email createdEmail = new Email(Type.valueOf(emailtype), email, profile);
			Work createdWork = new Work(company, Occupation.valueOf(occupation), WorkAddress, profile);
			Education creatEducation = new Education(institution, enrollment, graduation, major, degree, profile);
			
			if (profileDao.findProfileByUser(user).isEmpty()){
			profileDao.createProfile(profile);
			phoneDao.createPhone(createdPhone);
			emailDao.createEmail(createdEmail);
			workDao.createWork(createdWork);
			educationDao.createEducation(creatEducation);
			}
			}
		}
		
		if (profileDao.findProfileByUser(user).isEmpty()){
			request.setAttribute("user", user);
			RequestDispatcher dispatcher = request.getRequestDispatcher("/NewProfile.jsp");
			dispatcher.forward(request, response);
		}
		
		else{
			request.setAttribute("user", user);
			RequestDispatcher dispatcher = request.getRequestDispatcher("/profile.jsp");
			dispatcher.forward(request, response);
		}
		
	}


}