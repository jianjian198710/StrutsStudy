package codes3_2;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport {
	
	private static final long serialVersionUID = -9061312393218544644L;
	private String username;
	private String password;
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	public String execute() throws Exception{
		if(getUsername().equals("jianjian")&&(getPassword().equals("198710"))){
			ActionContext.getContext().getSession().put("user", getUsername());
			return SUCCESS;
		}else{
			return ERROR;
		}
	}
}
