package codes3_10;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport {

	private static final long serialVersionUID = -1261459073914318546L;
	private String username;
	private String password;
	
	@Override
	public String execute() throws Exception{
		ActionContext ctx = ActionContext.getContext();
		if(getUsername().equals("jianjian")&&getPassword().equals("198710")){
			ctx.getSession().put("user", getUsername());
			//getText()方法访问国际化信息
			ctx.put("tip", getText("succTip"));
			return SUCCESS;
		}else{
			ctx.put("tip", getText("failTip"));
			return ERROR;
		}
	}

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
}