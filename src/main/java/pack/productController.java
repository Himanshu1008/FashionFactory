package pack;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import pack.category.Category;
import pack.category.CategoryDao;
import pack.products.Product;
import pack.products.ProductDao;
import pack.user.User;
import pack.user.UserDao;

@Controller
public class productController {

	private static final String String = null;
	@Autowired
	ProductDao pdao;
	@Autowired
	CategoryDao cdao;
	@Autowired
	UserDao udao;
	@Autowired
	ServletContext context;

	@RequestMapping("/Home")
	protected ModelAndView handleRequestInternal(HttpServletRequest req, HttpServletResponse res) throws Exception {
		ModelAndView mv = new ModelAndView("Home");
		System.out.println("vv");
		return mv;
	}

	@RequestMapping(value = "/AddUserToDB")
	public ModelAndView AddUserToDB(@Valid @ModelAttribute("user") User u, BindingResult bind) {
		ModelAndView mv = new ModelAndView("Home");
		if (bind.hasErrors()) {
			mv = new ModelAndView("signup");
			mv.addObject("User", u);
			return mv;
		} else {
			if (u.getPassword().equals(u.getcPassword())) {
				System.out.println("inside");
				List<User> list = udao.getAllUser();

				System.out.println(list);

				boolean usermatch = false;

				for (User user : list) {
					if (user.getUsername().equals(u.getUsername())) {
						usermatch = true;
						break;
					}
				}

				System.out.println("Usermatch:" + usermatch);

				if (usermatch == false) {

					System.out.println(u.getPassword());

					udao.insert(u);

					mv.addObject("User", new User());

					mv.addObject("success", "success");
				} else {
					System.out.println("useralready");
					ModelAndView mv1 = new ModelAndView("signup");

					mv1.addObject("User", u);

					mv1.addObject("useralreadyexists", "useralreadyexists");

					return mv1;
				}
			} else {
				ModelAndView mav1 = new ModelAndView("signup");

				mav1.addObject("User", u);

				System.out.println("password mismatch");

				mav1.addObject("passwordmismatch", "passwordmismatch");

				return mav1;

			}
		}
		return mv;
	}

	@RequestMapping("/signup")
	protected ModelAndView signup(HttpServletRequest req, HttpServletResponse res) throws Exception {
		ModelAndView mv = new ModelAndView("signup");

		System.out.println("signup");
		User u = new User();

		u.setEmail("a@b.c");
		u.setPhone("asdas");

		// udao.insert(u);

		mv.addObject("user", u);

		return mv;
	}

	@RequestMapping("/Login")
	protected ModelAndView login(HttpServletRequest req, HttpServletResponse res) throws Exception {
		ModelAndView mv = new ModelAndView("Login");
		System.out.println("LoginPage");
		return mv;
	}

	@RequestMapping(value = "/AddProductToDB", method = RequestMethod.POST)
	public String AddProductToDB(@ModelAttribute("Product") Product p) {

		// System.out.println(p.getproductsName());
		pdao.insert(p);
		Product i1 = pdao.getProductWithMaxId();

		System.out.println(i1.getProductId());
		try {
			String path = context.getRealPath("/");

			System.out.println(path);

			File directory = null;

			if (p.getFile().getContentType().contains("image")) {
				directory = new File(path + "\\Resources\\images");

				System.out.println(directory);

				byte[] bytes = null;
				File file = null;
				bytes = p.getFile().getBytes();

				if (!directory.exists())
					directory.mkdirs();

				file = new File(directory.getAbsolutePath() + System.getProperty("file.separator") + "image_"
						+ i1.getProductId() + ".jpg");

				System.out.println(file.getAbsolutePath());

				BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(file));
				stream.write(bytes);
				stream.close();

			}

			i1.setImage("resources/images/image_" + i1.getProductId() + ".jpg");

			pdao.update(i1);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return "redirect:/product";
	}

	@RequestMapping("/productview")
	protected ModelAndView handleRequestInternal1(HttpServletRequest req, HttpServletResponse res) throws Exception {
		ModelAndView mv = new ModelAndView("productview");

		return mv;
	}
	
	@RequestMapping("/addproduct")
	protected ModelAndView addproduct() throws Exception {
		ModelAndView mv = new ModelAndView("addproduct");

		mv.addObject("Product", new Product());
		
		return mv;
	}

	@RequestMapping("/product")
	protected ModelAndView handleRequestInternal11(HttpServletRequest req, HttpServletResponse res) throws Exception {
		ModelAndView mv = new ModelAndView("product");

		mv.addObject("list", pdao.getAllProducts());
		
		return mv;
	}

	@RequestMapping("/deleteProductFromDB/{id}")
	protected ModelAndView deleteProductFromDB(@PathVariable("id") int id) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/product");

		pdao.delete(id);

		return mv;
	}

	@RequestMapping("/updateProduct/{id}")
	protected ModelAndView updateProductFromDB(@PathVariable("id") int id) throws Exception {

		System.out.println("update Product id: " + id);
		Product p = new Product();
		ModelAndView model = new ModelAndView("updateproduct");
		model.addObject("Product", pdao.getProduct(id));

		System.out.println(pdao.getProduct(id));

		return model;

	}

	@RequestMapping(value = "/updateProductToDB", method = RequestMethod.POST)
	protected ModelAndView updateProductToDB(@ModelAttribute("Product") Product p) throws Exception {

		ModelAndView model = new ModelAndView("redirect:/product");

		System.out.println(p);

		pdao.update(p);

		return model;

	}

	@RequestMapping("/category")
	protected ModelAndView category(HttpServletRequest req, HttpServletResponse res) throws Exception {
		ModelAndView mv = new ModelAndView("category");
		String categoryname = req.getParameter("categoryname");

		Category c = new Category();
		c.setCategoryname(categoryname);
		cdao.insert(c);
		List<Category> list = cdao.getAllCategory();
		mv.addObject("cat", list);
		System.out.println("category");

		return mv;
	}

	@RequestMapping("/categoryview")
	protected ModelAndView handleRequestInternal2(HttpServletRequest req, HttpServletResponse res) throws Exception {
		ModelAndView mv = new ModelAndView("categoryview");

		return mv;
	}

	@RequestMapping("/deleteCategoryFromDB/{id}")
	protected ModelAndView deleteCtegorytFromDB(@PathVariable("id") int id) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/category");

		cdao.delete(id);

		return mv;
	}

	@RequestMapping("/updatecategory/{id}")
	protected ModelAndView updateCategoryFromDB(@PathVariable("id") int id) throws Exception {

		System.out.println("update category id: " + id);
		Category c = new Category();
		ModelAndView model = new ModelAndView("updatecategory");
		model.addObject("Category", cdao.geCategory(id));

		System.out.println(cdao.geCategory(id));

		return model;

	}

	@RequestMapping(value = "/updateCategoryToDB", method = RequestMethod.POST)
	protected ModelAndView updateCategoryToDB(@ModelAttribute("Category") Category c) throws Exception 
	{
		ModelAndView model = new ModelAndView("redirect:/category");

		System.out.println(c);

		cdao.update(c);

		return model;

	}
	@RequestMapping("/Cart1")
	protected ModelAndView cart1()
	{
		ModelAndView mv=new ModelAndView("Cart1");
		System.out.println("cart");
		return mv;
		
	}

}
