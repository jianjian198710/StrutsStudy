package codes3_5;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
/*
 * Struts2提供了一个ActionContext类来访问ServletAPI
 */
public class LoginAction implements Action {
	
	private String username;
	private String password;

	@Override
	public String execute() throws Exception {
		//获取ActionContext对象
		ActionContext ctx = ActionContext.getContext();
		Integer counter = (Integer)ctx.getApplication().get("counter");
		if(counter==null){
			counter=1;
		}else{
			counter = counter+1;
		}
		//设置application和session对象的属性
		ctx.getApplication().put("counter", counter);
		ctx.getSession().put("username", username);
		if(getUsername().equals("jianjian")&&getPassword().equals("198710")){
			//设置request对象的属性
			ctx.put("tip", "服务器提示,您已经登录成功");
			return SUCCESS;
		}else{
			ctx.put("tip","服务器提示,登录失败");
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
