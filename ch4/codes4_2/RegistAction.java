package codes4_2;

import java.util.Date;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.validator.annotations.DateRangeFieldValidator;
import com.opensymphony.xwork2.validator.annotations.IntRangeFieldValidator;
import com.opensymphony.xwork2.validator.annotations.RegexFieldValidator;
import com.opensymphony.xwork2.validator.annotations.RequiredStringValidator;

public class RegistAction extends ActionSupport {

	private static final long serialVersionUID = 2499152728184960823L;
	private String name;
	private String pass;
	private int age;
	private Date birth;
	
	
	public String getName() {
		return name;
	}
	@RequiredStringValidator(key="name.requried",message="")
	@RegexFieldValidator(regexExpression="\\w{4,25}",key="name.regex",message="")
	public void setName(String name) {
		this.name = name;
	}
	public String getPass() {
		return pass;
	}
	@RequiredStringValidator(key="pass.requried",message="")
	@RegexFieldValidator(regexExpression="\\w{4,25}",key="pass.regex",message="")
	public void setPass(String pass) {
		this.pass = pass;
	}
	public int getAge() {
		return age;
	}
	@IntRangeFieldValidator(message="",key="age.range",min="1",max="150")
	public void setAge(int age) {
		this.age = age;
	}
	public Date getBirth() {
		return birth;
	}
//	@DateRangeFieldValidator(message="",key="birth.range",min="1900/01/01",max="2050/01/21")
	public void setBirth(Date birth) {
		this.birth = birth;
	}
	
	@Override
	public String execute() throws Exception{
		return SUCCESS;
	}
}
