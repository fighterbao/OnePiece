package cn.wjb.action;

import cn.wjb.service.MainService;

import com.opensymphony.xwork2.ActionSupport;
import com.util.mail.MailSenderInfo;
import com.util.mail.SimpleMailSender;

public class MainAction extends ActionSupport {
	
	private MainService mainservice;

	public void setMainservice(MainService mainservice) {
		this.mainservice = mainservice;
	}
	
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

	public String animal(){
		
		return "animal";
	}
	
	public String register(){
		
		 //这个类主要是设置邮件     
	      MailSenderInfo mailInfo = new MailSenderInfo();      
	      mailInfo.setMailServerHost("pop.qq.com");      
	      mailInfo.setMailServerPort("995");      
	      mailInfo.setValidate(true);      
	      mailInfo.setUserName("1004938662@qq.com");      
	      mailInfo.setPassword("xiaoyanzi");//您的邮箱密码      
	      mailInfo.setFromAddress("1004938662@qq.com");      
	      mailInfo.setToAddress(username);      
	      mailInfo.setSubject("设置邮箱标题 如http://www.guihua.org 中国桂花网");      
	      mailInfo.setContent("设置邮箱内容 如http://www.guihua.org 中国桂花网 是中国最大桂花网站==");      
	         //这个类主要来发送邮件     
	      SimpleMailSender sms = new SimpleMailSender();     
	          sms.sendTextMail(mailInfo);//发送文体格式      
	          sms.sendHtmlMail(mailInfo);//发送html格式 
		
		  return "ok";
	}
	

}
