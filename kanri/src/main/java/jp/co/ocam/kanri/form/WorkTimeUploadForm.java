package jp.co.ocam.kanri.form;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class WorkTimeUploadForm {

	// アップロードファイルS
	private List<MultipartFile> files;

	public List<MultipartFile> getFiles() {
		return files;
	}

	public void setFiles(List<MultipartFile> files) {
		this.files = files;
	}


}
