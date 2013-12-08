package codes4_1;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport {

	private static final long serialVersionUID = -6396926757640430097L;
	private User user;
	private String tip;
	
	@Override
	public String execute() throws Exception{
		ActionContext ctx = ActionContext.getContext();
		if(getUser().getName().equals("jianjian")&&getUser().getPassword().equals("198710")){
			ctx.put("tip", "转换成功");
			return SUCCESS;
		}else{
			ctx.put("tip", "转换失败");
			return ERROR;
		}
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getTip() {
		return tip;
	}

	public void setTip(String tip) {
		this.tip = tip;
	}
	
}
