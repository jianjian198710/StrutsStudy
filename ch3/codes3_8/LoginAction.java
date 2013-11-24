package codes3_8;

import java.sql.SQLException;

import com.opensymphony.xwork2.Action;

public class LoginAction implements Action {

	private String username;
	private String password;
	private String tip;
	
	@Override
	public String execute() throws Exception {
		if(getUsername().equalsIgnoreCase("sql")){
			throw new SQLException("用户名不能为SQL");
		}
		if(getPassword().equalsIgnoreCase("")){
			throw new MyException("密码不能为空");
		}
		if(getUsername().equals("jianjian")&&getPassword().equals("198710")){
			setTip("服务器提示");
			return SUCCESS;
		}
		return ERROR;
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
