package codes3_6;

import java.util.Date;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.interceptor.PreResultListener;

public class LoginRegistAction extends ActionSupport{

	private static final long serialVersionUID = -3306745325402048971L;
	private String username;
	private String password;
	private String tip;
	
	public String regist() throws Exception{
		ActionContext.getContext().getSession().put("username", getUsername());
		setTip("恭喜您"+getUsername()+",您已经注册成功!");
		return SUCCESS;
	}
	
	@Override
	public String execute() throws Exception{
		//3.7.10的内容,加入一个PreResultListener
		final ActionInvocation invocation = ActionContext.getContext().getActionInvocation();
		invocation.addPreResultListener(new PreResultListener(){
			@Override
			public void beforeResult(ActionInvocation arg0, String arg1) {
				System.out.println("返回的视图名字为: "+arg1);
				//在返回之前调用一个额外的数据
				invocation.getInvocationContext().put("extra", new Date()+"由"+arg1+"逻辑视图名转入");
			}
		});
		
		if(getUsername().equals("jianjian")&&getPassword().equals("198710")){
			ActionContext.getContext().getSession().put("username", getUsername());
			setTip("欢迎:"+getUsername()+",您已经登录成功!");
			return SUCCESS;
		}else{
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

	public String getTip() {
		return tip;
	}

	public void setTip(String tip) {
		this.tip = tip;
	}
}
