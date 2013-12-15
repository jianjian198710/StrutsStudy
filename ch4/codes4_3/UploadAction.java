package codes4_3;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;

import com.opensymphony.xwork2.ActionSupport;

public class UploadAction extends ActionSupport {

	private String title;
	private File upload;
	//Struts2 将上传的文件名自动封装进XXXFileName,所以可以直接调用get
	private String uploadFileName;
	//Struts2 将上传的文件类型自动封装进XXXContentType
	private String uploadContentType;
	private String savePath;
	
	@Override
	public String execute() throws Exception{
//		setSavePath("H:/Developer/Java work space/StrutsStudy/"+getUploadFileName());
		try(FileOutputStream fos = new FileOutputStream(getSavePath()+getUploadFileName());
			FileInputStream fis = new FileInputStream(getUpload())){
			byte[] buffer = new byte[1024];
			int len = 0;
			while((len=fis.read(buffer))>0){
				fos.write(buffer,0,len);
			}
			return SUCCESS;
		}
	}
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public File getUpload() {
		return upload;
	}
	public void setUpload(File upload) {
		this.upload = upload;
	}
	public String getUploadFileName() {
		return uploadFileName;
	}
	public void setUploadFileName(String uploadFileName) {
		this.uploadFileName = uploadFileName;
	}
	public String getSavePath() {
		return savePath;
	}
	public void setSavePath(String savePath) {
		this.savePath = savePath;
	}
	public String getUploadContentType() {
		return uploadContentType;
	}
	public void setUploadContentType(String uploadContentType) {
		this.uploadContentType = uploadContentType;
	}
}
