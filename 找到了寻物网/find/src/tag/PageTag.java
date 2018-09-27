package tag;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;


public class PageTag extends SimpleTagSupport{
	
	private PagingBean pagingBean;
	private HttpServletRequest request;
	
	@Override
	public void doTag() throws JspException,IOException{
		StringBuffer sb = new StringBuffer();
		if(pagingBean!=null){
			//append�����������ַ���
			sb.append("<nav><ul class='pagination'>");
			//������һҳ����ҳ
			if(pagingBean.getCurrentPage()<=0)
			{
				sb.append("<li class='disable'><a>��ҳ</a></li>");
				sb.append("<li class='disables'><a href='#'>��һҳ</a></li>");
			}else{
				sb.append("<li><a href='").append(pagingBean.getPrefixUrl()).append("' aria-lable='Previous'><span aria-hidden = 'true'>��ҳ</span></a></li>");
				sb.append("<li><a href='").append(pagingBean.getPrefixUrl()).append(pagingBean.isAnd()?"&":"?").append("currentPage=").append(pagingBean.getCurrentPage()-1).append("'>��һҳ</a></li>");
			}
			//������һҳ��βҳ
			if(pagingBean.getCurrentPage()>=(pagingBean.getPageCount()-1))
			{
				sb.append("<li class='disabled'><a>��һҳ</a></li>");
				sb.append("<li class='disabled'><a>βҳ</a></li>");
			}else{
				sb.append("<li><a href='").append(pagingBean.getPrefixUrl()).append(pagingBean.isAnd()?"&":"?").append("currentPage=").append(pagingBean.getCurrentPage()+1).append("'>��һҳ</a></li>");
				sb.append("<li><a href='").append(pagingBean.getPrefixUrl()).append(pagingBean.isAnd()?"&":"?").append("currentPage=").append(pagingBean.getPageCount()-1).append("' aria-lable='Previous'><span aria-hidden = 'true'>βҳ</span></a></li>");
			}
			sb.append("<li><a href='#'>");
			sb.append("</span>");
			sb.append(pagingBean.getCurrentPage()+1);
			sb.append("/");
			sb.append(pagingBean.getPageCount());
			sb.append("</sapn>");
			sb.append("</a>");
			sb.append("</li>");
			sb.append("</ul></nav>");
			
		}
		getJspContext().getOut().write(sb.toString());
	}
	
	public PagingBean getPagingBean()
	{
		return pagingBean;
	}
	public void setPagingBean(PagingBean pagingBean)
	{
		this.pagingBean = pagingBean;
	}
	public HttpServletRequest getRequest()
	{
		return request;
	}
	public void setRequest(HttpServletRequest requset)
	{
		this.request=requset;
	}
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}