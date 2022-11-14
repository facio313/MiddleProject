package member.dao;

import java.util.List;

import common.QueryDao;
import member.dao.IMemberDao;
import member.dao.MemberDaoImpl;
import member.vo.InsVO;
import member.vo.MemberVO;


	public class MemberDaoImpl extends QueryDao implements IMemberDao{

		
		private static IMemberDao memDao;
		private MemberDaoImpl() {
			
		}
		
		public static IMemberDao getInstance() {
			if (memDao == null) {
				memDao = new MemberDaoImpl();
			}
			return memDao;
		}
		
		@Override
		public int insertMember(MemberVO mv) {
			return insert("member.insertMember", mv);
		}
		
		@Override
		public int insertIns(InsVO iv) {
			return insert("member.insertIns", iv);
		}

		@Override
		public MemberVO checkMember(MemberVO mv) {
			return (MemberVO) selectOne("member.checkMember", mv);
		}

		@Override
		public int updateMember(MemberVO mv) {
			return update("member.updateMember", mv);
		}

		@Override
		public int deleteMember(String memId) {
			return delete("member.deleteMember", memId);
		}

		@Override
		public List<MemberVO> selectAllMember() {
			return selectList("member.selectAllMember", null);
		}

		@Override
		public List<MemberVO> searchMember(MemberVO mv) {
			
			return selectList("member.searchMember", mv);
		}

		@Override
		public MemberVO getMember(String memId) {
			return selectOne("member.selectMember", memId);
		}

		@Override
		public MemberVO checkId(MemberVO mv) {
			return (MemberVO) selectOne("member.checkId", mv);
		}

	}

