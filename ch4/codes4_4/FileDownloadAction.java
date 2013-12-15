package codes4_4;

import java.io.InputStream;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class FileDownloadAction extends ActionSupport {

	//被下载文件的路径,可在Struts.xml中动态配置
	private String inputPath;
	private String inputName;
	private InputStream targetFile;
	
	public void setInputPath(String value){
		inputPath = value;
	}
	/*
	 * 定义一个返回InputStream的方法,该方法将作为被下载文件的路口,且需要配置stream类型结果时指定inputName参数,
	 */
	public InputStream getTargetFile() throws Exception{
		return ServletActionContext.getServletContext().getResourceAsStream(inputPath);
	}
	public String getInputName() {
		return inputName;
	}
	public void setInputName(String inputName) {
		this.inputName = inputName;
	}
}
