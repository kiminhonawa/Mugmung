//package com.itwill.spring2.web.customer;
//
//import java.io.File;
//import java.io.IOException;
//import java.util.List;
//
//import jakarta.servlet.ServletException;
//import jakarta.servlet.annotation.WebServlet;
//import jakarta.servlet.http.HttpServlet;
//import jakarta.servlet.http.HttpServletRequest;
//import jakarta.servlet.http.HttpServletResponse;
//
//import org.apache.commons.fileupload.FileItem;
//import org.apache.commons.fileupload.disk.DiskFileItemFactory;
//import org.apache.commons.fileupload.servlet.ServletFileUpload;
//
//@WebServlet("/upload.do")
//public class FileUpload extends HttpServlet{
//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		doHandle(request, response);
//	}
//
//	/**
//	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
//	 */
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		doHandle(request, response);
//	}
//
//	private void doHandle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		request.setCharacterEncoding("utf-8");
//		String encoding = "utf-8";
//		File currentDirPath = new File("C:/mugmung/img/title"); // 업로드할 파일 경로를 지정
//		DiskFileItemFactory factory = new DiskFileItemFactory();
//		factory.setRepository(currentDirPath); // 파일 경로를 설정
//		factory.setSizeThreshold(1024*1024); // 최대 업로드 가능한 파일 크기를 설정
//		ServletFileUpload upload = new ServletFileUpload(factory);
//		try {
//			
//			List items = upload.parseRequest(request);
//			for(int i=0; i<items.size(); i++) {
//				FileItem fileItem = (FileItem)items.get(i); // 파일 업로드창에서 업로드된 항목들을 하나씩 가져옴
//				// 폼 필드이면 전송된 매개변수 값을 출력함
//                if(fileItem.isFormField()) {
//					System.out.println(fileItem.getFieldName()+ "=" +fileItem.getString(encoding));
//				// 폼 필드가 아니면 파일 업로드 기능을 수행
//                } else {
//					System.out.println("매개변수이름:"+fileItem.getFieldName());
//					System.out.println("파일이름:"+fileItem.getName());
//					System.out.println("파일크기:"+fileItem.getSize( ) + "bytes");
//					// 업로드한 파일 이름을 가져옴
//                    if(fileItem.getSize() > 0) {
//						int idx = fileItem.getName().lastIndexOf("/");
//						if(idx ==-1) {
//							idx = fileItem.getName().lastIndexOf("/");
//						}
//						String fileName = fileItem.getName().substring(idx+1);
//                        // 업로드한 파일 이름으로 저장소에 파일을 업로드
//						File uploadFile = new File(currentDirPath +"/" + fileName);
//						fileItem.write(uploadFile);
//					} // end if
//				} // end if
//			} // end for
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//	}
//}
