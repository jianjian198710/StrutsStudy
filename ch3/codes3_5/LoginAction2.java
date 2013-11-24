package codes3_5;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.interceptor.ServletResponseAware;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
/*
 * (1)Struts2提供如下接口直接方位ServletAPI
 * 	  ServletContextAware:实现该接口的Action可以直接访问Web的ServletContext实例
 * 	  ServletRequestAware: ....                           HttpServletRequest实例
 * 	  ServletResponseAware: ...							  HttpServletResponse实例
 * 
 */
public class LoginAction2 implements Action, ServletResponseAware {

	private String username;
	private String password;
	private HttpServletResponse response;
	
	//实现ServletResponseAware接口
	@Override
	public void setServletResponse(HttpServletResponse response) {
		this.response = response;
	}

	@Override
	public String execute() throws Exception {
		ActionContext ctx = ActionContext.getContext();
		Integer counter = (Integer)ctx.getApplication().get("counter");
		if(counter==null){
			counter=1;
		}else{
			counter = counter+1;
		}
		ctx.getApplication().put("counter", counter);
		ctx.getSession().put("username", username);
		if(getUsername().equals("jianjian")&&getPassword().equals("198710")){
			Cookie cookie = new Cookie("username",getUsername());
			cookie.setMaxAge(60*60);
			//访问HttpServletrespones对象
			response.addCookie(cookie);
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
