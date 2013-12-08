package codes3_11;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class TagAction extends ActionSupport {

	private static final long serialVersionUID = -7915383144000194340L;
	private String author;
	
	public String execute() throws Exception{
		ActionContext.getContext().put("boss", "Lampard");
		return "done";
	}
	
	public String login() throws Exception{
		ActionContext.getContext().put("author", "jianjian");
		return "done";
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}
}
