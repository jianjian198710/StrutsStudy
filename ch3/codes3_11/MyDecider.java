package codes3_11;

import org.apache.struts2.util.SubsetIteratorFilter.Decider;

public class MyDecider implements Decider{

	//该方法决定入选s:subet子集的条件
	@Override
	public boolean decide(Object arg0) throws Exception {
		String str = (String)arg0;
		return str.indexOf("AAA")>0;
	}
	
}
