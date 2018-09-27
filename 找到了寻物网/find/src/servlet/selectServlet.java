package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserDao;
import dao.findinfoDao;
import domain.User;
import domain.losefindinfo;
import tag.PagingBean;
import utils.StringUtil;

/**
 * Servlet implementation class selectServlet
 */
@WebServlet("/select")
public class selectServlet extends HttpServlet {

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=utf-8");
		String method = req.getParameter("method");
		if(method.equals("lose")){
			lose(req,resp);
		}
		else if(method.equals("show")){
			show(req,resp);
		}
		else{
			find(req,resp);
		}
	}
	/**
	 * ����id��ʾĳ����Ϣ����������
	 * @param req
	 * @param resp
	 * @throws IOException 
	 * @throws ServletException 
	 */private void show(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id = req.getParameter("id");
		String type = req.getParameter("type");
		findinfoDao dao = new findinfoDao();
		losefindinfo l = new losefindinfo();
		
		if(type.equals("1")){
			l =dao.getinfobyId(id);
		}
		else{
			l =dao.getinfobyId1(id);
			
		}
		req.setAttribute("info", l);
//		User user = (User)req.getSession().getAttribute("user");
//		req.getSession().setAttribute("user", user);
		req.getRequestDispatcher("show.jsp").forward(req, resp);
	}

/**
 * ���������loginҳ����ת�����ĸ������ͷ����������Ϣ
 * @param req
 * @param resp
 * @throws IOException 
 * @throws ServletException 
 */
	private void find(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String status = req.getParameter("status");
		System.out.println(status);
		if(status!=null){
			findinfoDao dao =new findinfoDao();
			
			//�õ����ڵ�ҳ��
			int currentPage = StringUtil.StringToInt(req.getParameter("currentPage"));
			//���ݱ��е���������
			int countSize = findinfoDao.getCount2();
			//����pagingBeanʵ�����й���
			PagingBean pagingBean = new PagingBean(currentPage,countSize,2);
			List<losefindinfo> list2 = findinfoDao.getListByPage2(currentPage * 2,2);
			//����servlet
			pagingBean.setPrefixUrl("select?method=find");
			pagingBean.setAnd(true);
			req.setAttribute("pagingBean",pagingBean);
			req.setAttribute("list", list2);
			//List<losefindinfo> list = dao.getfindinfo();
			//req.setAttribute("list", list);
			req.getRequestDispatcher("find.jsp").forward(req, resp);
		}
		else{
			//ͨ������
			String type = req.getParameter("type");
			findinfoDao dao =new findinfoDao();
			System.out.println(type);
			//List<losefindinfo> list =dao.findbytype(type);
			
			//�õ����ڵ�ҳ��
			int currentPage = StringUtil.StringToInt(req.getParameter("currentPage"));
			//���ݱ��е���������
			int countSize = findinfoDao.getCountbytype2(type);
			//����pagingBeanʵ�����й���
			PagingBean pagingBean = new PagingBean(currentPage,countSize,2);
			List<losefindinfo> list2 = findinfoDao.getListByPagebytype2(currentPage * 2,2,type);
			//����servlet
			pagingBean.setPrefixUrl("select?method=find");
			pagingBean.setAnd(true);
			req.setAttribute("pagingBean",pagingBean);
			req.setAttribute("list", list2);
			
			//req.setAttribute("list", list);
			req.getRequestDispatcher("select.jsp?status=2").forward(req, resp);
		}
		
		
	}
/**
 * ���������loginҳ����ת�����ĸ������ͷ��ض�ʧ����Ϣ
 * @param req
 * @param resp
 * @throws IOException 
 * @throws ServletException 
 */
	private void lose(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		String status = req.getParameter("status");
		System.out.println(status);
		if(status!=null){
			findinfoDao dao =new findinfoDao();
			//�õ����ڵ�ҳ��
			int currentPage = StringUtil.StringToInt(req.getParameter("currentPage"));
			//���ݱ��е���������
			int countSize = findinfoDao.getCount1();
			//����pagingBeanʵ�����й���
			PagingBean pagingBean = new PagingBean(currentPage,countSize,2);
			List<losefindinfo> list2 = findinfoDao.getListByPage1(currentPage * 2,2);
			//����servlet
			pagingBean.setPrefixUrl("select?method=find");
			pagingBean.setAnd(true);
			req.setAttribute("pagingBean",pagingBean);
			req.setAttribute("list", list2);
			//List<losefindinfo> list = dao.getloseinfo();
			//req.setAttribute("list", list);
			req.getRequestDispatcher("lose.jsp").forward(req, resp);
		}
		else{
			//ͨ������
			String type = req.getParameter("type");
			findinfoDao dao =new findinfoDao();
			System.out.println(type);
			//�õ����ڵ�ҳ��
			int currentPage = StringUtil.StringToInt(req.getParameter("currentPage"));
			//���ݱ��е���������
			int countSize = findinfoDao.getCountbytype1(type);
			//����pagingBeanʵ�����й���
			PagingBean pagingBean = new PagingBean(currentPage,countSize,2);
			List<losefindinfo> list2 = findinfoDao.getListByPagebytype1(currentPage * 2,2,type);
			//����servlet
			pagingBean.setPrefixUrl("select?method=find");
			pagingBean.setAnd(true);
			req.setAttribute("pagingBean",pagingBean);
			req.setAttribute("list", list2);
			
			//List<losefindinfo> list =dao.losebytype(type);
			//req.setAttribute("list", list);
			req.getRequestDispatcher("select.jsp?status=1").forward(req, resp);
		}
		
	}

	
		//���ڲ�ѯ��ɸѡ��ʽ��Ѱ����߶�ʧ��Ϣ���������Ҫ���ҵı�ʱ��ȡ���ʱ���ǰ5��ͺ����죬��һ���������ʱ��Խ�ӽ���Խ�ȱ���ӡ����
		//�ص����Ʒֱ����Ϊ������������������������������������ȱ���ѡ��������������һ�����ɣ��������򲻱���ӡ���������ͨ�����β�ѯ���
		
	}


