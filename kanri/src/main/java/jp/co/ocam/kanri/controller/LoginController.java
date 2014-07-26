package jp.co.ocam.kanri.controller;

import jp.co.ocam.kanri.form.LoginForm;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * ログイン画面
 * @author hagiwara
 *
 */
@RequestMapping(value = "/login")
@Controller
public class LoginController {

//	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);

	/**
	 * 初期表示
	 */
	@RequestMapping(value = "/")
	public String init(LoginForm form) {

		return "login";
	}

	/**
	 * ログイン処理
	 */
	@RequestMapping(value = "/doLogin", method = RequestMethod.POST)
	public String doLogin(LoginForm form) {

		return "redirect:/workTimeList/";
	}



}
