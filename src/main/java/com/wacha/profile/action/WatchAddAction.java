package com.wacha.profile.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.wacha.controller.Action;
import com.wacha.controller.ActionForward;
import com.wacha.model.MovieTitleStarDTO;
import com.wacha.model.StarDAO;

public class WatchAddAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		HttpSession session = request.getSession();
		String member_Id = (String)session.getAttribute("session_id");
		
		StarDAO dao = StarDAO.getInstance();
		
		//보는중 등록해놓은 영화 목록보는 메서드
		List<MovieTitleStarDTO> img_list = dao.movieTitleWatch(member_Id);
		request.setAttribute("img_List", img_list);
		
		//보는중 등록해놓은 영화 제목순으로 목록보는 메서드
		List<MovieTitleStarDTO> title_list = dao.movieTitleWatchTitle(member_Id);
		request.setAttribute("title_list", title_list);
		
		//보는중 등록해놓은 영화 년도순으로 목록보는 메서드
		List<MovieTitleStarDTO> year_list = dao.movieTitleWatchYear(member_Id);
		request.setAttribute("year_list", year_list);
		
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("lby/detail3.jsp");
		return forward;
	}

}
