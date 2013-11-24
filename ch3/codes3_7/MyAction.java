package codes3_7;

import com.opensymphony.xwork2.ActionSupport;

public class MyAction extends ActionSupport {

	private static final long serialVersionUID = 2360646416959911705L;
	private String target;
	private String tip;
	
	public String execute() throws Exception{
		setTip("恭喜您,已经成功转向");
		return SUCCESS;
	}

	public String getTarget() {
		return target;
	}

	public void setTarget(String target) {
		this.target = target;
	}

	public String getTip() {
		return tip;
	}

	public void setTip(String tip) {
		this.tip = tip;
	}
}