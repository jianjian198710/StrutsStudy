package codes3_2;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

/*
 * (1)Action实例是通过反射来创建的
 * (2)当Servlet或Filter拦截用户请求后,如何指定对应的Action?
 * 	  (a)利用配置文件
 * 	  (b)利用约定 xxx.action总是对应XxxAction类
 * (3)控制器实际上有两个部分组成,一个是web.xml中配的StrutsPrepareAndExecuteFilter,为核心控制器;
 * 	    另一个XxxAction成为业务控制器
 * (4)Action中应包含与请求参数对应的属性
 * (5)Struts2提供了一个ActionContext类来访问ServletAPI
 */
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

	@Override
	public String execute() throws Exception {
		if (getUsername().equals("jianjian")
				&& (getPassword().equals("198710"))) {
			ActionContext.getContext().getSession().put("user", getUsername());
			return SUCCESS;
		} else {
			return ERROR;
		}
	}
}
