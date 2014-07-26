package jp.co.ocam.kanri.controller.workTime;

import jp.co.ocam.kanri.form.WorkTimeListForm;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * 稼働一覧画面
 * @author hagiwara
 *
 */
@RequestMapping(value = "/workTimeList")
@Controller
public class WorkTimeListContoroller {

	/**
	 * 初期表示
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String init(WorkTimeListForm form) {

		return "workTime/workTimeList";
	}


}
