package pack.model;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import pack.controller.StudyDetailBean;
import pack.controller.StudySearchBean;

@Repository
public class StudyDaoImpl extends SqlSessionDaoSupport implements StudyDaoInter {

	@Autowired
	public StudyDaoImpl(SqlSessionFactory factory) {
		setSqlSessionFactory(factory);
	}

	@Override
	public ArrayList<StudyDto> getStudyListLogin(int userNo) {
		// �뜝�룞�삕�뜝占� �뜝�룞�삕�뜝�떢�벝�삕 �뜝�룞�삕�뜝�룞�삕 �뜝�떩源띿삕
		return (ArrayList) getSqlSession().selectList("selectStudyListLogin",userNo);
	}

	@Override
	public ArrayList<StudyDto> getStudyList() {
		
		return (ArrayList) getSqlSession().selectList("selectStudyList");
	}

	@Override
	public ArrayList<StudyDto> getSelectSearchTitleStudyList(StudySearchBean bean) {
		// �뜝�룞�삕�뜝�떢�벝�삕 �뜝�떛紐뚯삕 �뜝�떙�궪�삕
		return (ArrayList) getSqlSession().selectList("selectSearchTitleStudyList", bean);
	}
	
	@Override
	public ArrayList<StudyDto> getSelectSearchLanguageStudyList(StudySearchBean bean) {
		// �뜝�룞�삕�뜝�떢�벝�삕 �뜝�룞�삕�뜝占� �뜝�떙�궪�삕
		return (ArrayList) getSqlSession().selectList("selectSearchLanguageStudyList", bean);
	}
	
	@Override
	public ArrayList<StudyDto> getSelectImgBtnStudyList(List<String> langList) {
		// �뜝�떛諭꾩삕�뜝�룞�삕 �뜝�룞�삕�듉 �겢�뜝�룞�삕�뜝�떦紐뚯삕 �뜝�뙏�뙋�삕 �뜝�룞�삕�뜝�떢�벝�삕 �뜝�룞�삕�뜝�룞�삕�뜝�룞�삕
		return (ArrayList) getSqlSession().selectList("selectImgBtnStudyList", langList);
	}
	
	@Override
	public StudyDetailBean getStudyDetail(int studyNo) {
		// �뜝�룞�삕�뜝�떢�벝�삕 �뜝�룞�삕 �뜝�룞�삕�뜝�룞�삕 (�뜝�떦�냲�삕�뜝�룞�삕 �뜝�룞�삕�뜝�떢�벝�삕 �뜝�룞�삕�뜝�룞�삕 �뜝�룞�삕�뜝�룞�삕�뜝�룞�삕�뜝�룞�삕�뜝占�)
		return getSqlSession().selectOne("selectStudy", studyNo);
	}
	
	@Override
	public boolean createStudy(StudyDto studyDto) {
		int re = getSqlSession().insert("insertStudy", studyDto);
		if(re > 0)
			return true;
		else
			return false;
	}

	@Override
	public ArrayList<StudyDto> selectMyStudyAsMember(String userNo) {
		
		return (ArrayList)getSqlSession().selectList("selectMyStudyAsMember",userNo);
	}

	@Override
	public ArrayList<StudyDto> selectMyStudyAsManager(String userNo) {
		// TODO Auto-generated method stub
		return (ArrayList)getSqlSession().selectList("selectMyStudyAsManager",userNo);
	}

	@Override
	public boolean insert(StudySearchBean bean) {
		int re = getSqlSession().insert("insertStudy", bean);
		if(re > 0)
			return true;
		else
			return false;
	}
	
	@Override
	public int getStudyNo(int manager_userNo) {
		return getSqlSession().selectOne("getStudyNo", manager_userNo);
	}

	@Override
	public StudyDto selectNoStudyInfo(int studyNo) {
		
		return getSqlSession().selectOne("selectNoStudyInfo",studyNo);
	}

	@Override
	public boolean updateNowPeople(int studyNo) {
		
		int re = getSqlSession().update("updateNowPeople", studyNo);
		if(re > 0)
			return true;
		else
			return false;
	}

	@Override
	public boolean selectstudyName(StudyDto studyDto) {
		int i=getSqlSession().selectOne("selectstudyName",studyDto);
		
		if(i>0)
			return false;
		else              
			return true;
	}

	@Override
	public int selectNowPeople(int studyNo) {
		return getSqlSession().selectOne("selectNowPeople", studyNo);
	}

	@Override
	public int selectManagerno(int studyNo) {
		return getSqlSession().selectOne("selectManagerno", studyNo);
	}

	@Override
	public boolean upStudyManage(StudyDto studyDto) {
		int re = getSqlSession().update("upStudyManage", studyDto);
		if(re > 0)
			return true;
		else
			return false;
	}

	@Override
	public boolean downNowpnum(int studyNo) {
		int re = getSqlSession().update("downNowpnum", studyNo);
		if(re > 0)
			return true;
		else
			return false;
	}

	@Override
	public boolean updateStudyinfo(StudyDto studyDto) {
		int re = getSqlSession().update("updateStudyinfo", studyDto);
		if(re > 0)
			return true;
		else
			return false;
	}

	@Override
	public String selectSnoName(int studyNo) {
		
		return getSqlSession().selectOne("selectSnoName",studyNo);
	}
	@Override
	public StudyDto selectStudyInfo(int studyMemberNo) {
		
		return getSqlSession().selectOne("selectStudyInfo",studyMemberNo);
	}
	
}


