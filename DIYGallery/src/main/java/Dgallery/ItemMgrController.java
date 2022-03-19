package Dgallery;

import java.io.IOException;
import java.time.LocalDate;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import org.apache.commons.beanutils.BeanUtils;

/**
 * Servlet implementation class ItemMgrController
 */
@WebServlet("/im")
@MultipartConfig(maxFileSize=1024*1024*2, location="c:/Temp/img")
public class ItemMgrController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ItemMgrController() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		String action = request.getParameter("action");
		ItemDAO dao = new ItemDAO();
		BoardDAO bdao = new BoardDAO();
		MemberDAO mdao = new MemberDAO();
		HttpSession ses = request.getSession();//세션 객체 가져오기 
		switch (action) {
			case "itemAdd": //H2 book 테이블에 저장
				ItemVo vo = new ItemVo();
				try {									                            
				        //이미지 파일 저장(c:Temp/img에 진짜이미지 저장)
					 	Part part = request.getPart("img");
				        System.out.println("Part:"+part.toString());
				        String fileName = getFilename(part);
				        if(fileName != null && !fileName.isEmpty()){
				            part.write(fileName);
				        }	              
				        // 입력값을 News 객체로 매핑
				        //String title = request.getParameter("title");
						BeanUtils.populate(vo, request.getParameterMap());
				        // 이미지 파일 이름을 News 객체에도 저장
//				        vo.setImg("/img/"+fileName);

						dao.addItem(vo);
						System.out.println(vo.getAuthor());
						System.out.println("추가됨");
						
					} catch (Exception e) {
						e.printStackTrace();
					}
				response.sendRedirect("index.jsp");	
				
				break;
			case "itemList":
				//모든책을 보따리에 담아온다
				List<ItemVo> items = dao.getAllItems();
				System.out.println(items.get(0).getImg());
				ses.setAttribute("itemList",items);
				response.sendRedirect("itemList.jsp");//View 페이지
				break;
				
			case "itemSearch":
				//모든책을 보따리에 담아온다
				String title2 =request.getParameter("word");
				List<ItemVo> searchBooks = dao.getSearchItems(title2);
				ses.setAttribute("itemList",searchBooks);
				response.sendRedirect("itemList.jsp");//View 페이지
				break;
				
			case "memberAdd":
				//모든책을 보따리에 담아온다
				String id=request.getParameter("id");
				String pwd=request.getParameter("pwd");
				String email=request.getParameter("email");
				String phone=request.getParameter("phone");
				mdao.insert(id, pwd, email, phone);
				
				response.sendRedirect("index.jsp");
				break;
				
			case "login": //회원검사
				String id2 =request.getParameter("id");
				String pwd2 =request.getParameter("pwd");
				String rr= mdao.loginCheck(id2,pwd2);
				if(rr.equals("OK")) { //회원맞음
					ses.setAttribute("login", "OK");
					response.sendRedirect("index.jsp");
				}else {//회원 아님
					response.sendRedirect("login.jsp");
				}
				break;
				
			case "logout": //ses 객체에 저장되어 있는 login 값 제거
				ses.removeAttribute("login");
				response.sendRedirect("index.jsp");
				break;
			case "boardRegister":
				bdao = new BoardDAO();
				String title = request.getParameter("boardTitle");
				String content = request.getParameter("boardContent");
				LocalDate now = LocalDate.now();
				String day = now.toString();
				// 결과 출력
				bdao.insert(title, content, day);
				List<BoardVO> list = bdao.getAll();
				ses.setAttribute("boardList", list);
				response.sendRedirect("boardList.jsp");
				break;
			case "boardList":
				List<BoardVO> list1 = bdao.getAll();
				ses.setAttribute("boardList", list1);
				response.sendRedirect("boardList.jsp");
				break;
			case "boardSearch":
				String input =request.getParameter("word2");
				List<BoardVO> searchBoards = bdao.getSearchBoard(input); 
				ses.setAttribute("boardList",searchBoards);
				response.sendRedirect("boardList.jsp");
				break;
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		doGet(request, response);
	}

	private String getFilename(Part part) {
        String fileName = null;   
        // 파일이름이 들어있는 헤더 영역을 가지고 옴
        String header = part.getHeader("content-disposition");
        //part.getHeader -> form-data; name="img"; filename="사진5.jpg"
        System.out.println("Header => "+header);
        
        if(header.contains("\\")) {
        	int start = header.lastIndexOf("\\");
        	fileName = header.substring(start+1,header.length()-1);
        }else {
        	// 파일 이름이 들어있는 속성 부분의 시작위치를 가져와 쌍따옴표 사이의 값 부분만 가지고옴
	        int start = header.indexOf("filename=");
	        fileName = header.substring(start+10,header.length()-1); 
        }

        
        System.out.println(fileName);
        return fileName; 
	}
}
