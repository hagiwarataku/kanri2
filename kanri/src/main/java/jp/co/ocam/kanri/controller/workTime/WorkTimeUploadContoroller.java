package jp.co.ocam.kanri.controller.workTime;

import java.io.IOException;

import jp.co.ocam.kanri.form.WorkTimeListForm;
import jp.co.ocam.kanri.form.WorkTimeUploadForm;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * 稼働一覧画面
 * @author hagiwara
 *
 */
@RequestMapping(value = "/workTimeUpload")
@Controller
public class WorkTimeUploadContoroller {

	/**
	 * 初期表示
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String init(WorkTimeListForm form) {

		return "workTime/workTimeUpload";
	}

	@RequestMapping(value="/doUpload", method=RequestMethod.POST)
	 public String doUpload(WorkTimeUploadForm file, Model model) throws IOException {
		System.out.println("test");


		return "workTime/workTimeUpload";

	}





}
