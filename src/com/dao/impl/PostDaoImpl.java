package com.dao.impl;

import java.util.List;

import com.dao.PostDao;
import com.entity.Post;

public class PostDaoImpl implements PostDao{

	@Override
	//��ȡ�������ӵ�ǰҳ���������ݣ�����BaseDao�е�query����ִ�в�ѯ����
	public List<Post> getRecentPostList(int startIndex, int pageSize) throws Exception {
		String sql = "select * from tb_post ORDER BY potime desc limit ?,?;";
		List<Post> list = BaseDao.query(sql, Post.class,startIndex,pageSize);
		return list;
	}
	@Override
	//��ȡ�������ӣ�����BaseDao�е�query����ִ�в�ѯ����
	public List<Post> getAllPostList() throws Exception {
		String sql = "select * from tb_post ;";
		List<Post> list = BaseDao.query(sql, Post.class);
		return list;
	}

	@Override
	//��ȡ�������ӵ�ǰҳ���������ݣ�����BaseDao�е�query����ִ�в�ѯ����
	public List<Post> getHotPostList(int startIndex, int pageSize) throws Exception {
		String sql = "select * from tb_post ORDER BY poclicknum desc limit ?,?;";
		List<Post> list = BaseDao.query(sql, Post.class,startIndex,pageSize);
		return list;
	}
	@Override
	//�����������ͻ�ȡ��Ӧ������,����BaseDao�е�query����ִ�в�ѯ����
	public List<Post> getPostName(int i) throws Exception {
		String sql = "SELECT * from tb_post where pocid=? ORDER BY  potime  desc LIMIT 0,4;";
		List<Post> str =BaseDao.query(sql,Post.class,i);
		return str;
	}
	@Override
	//�������ӷ�����ͨ��ҳ���ȡ���������⣬�������ݣ��û�id������������Ϊ�������в���  ,����BaseDao�е�update����ִ�в������
	public int insertPost(String potitle, String pocontent, int i, int pocid) throws Exception{
		String sql ="INSERT INTO tb_post(potitle,pocontent,uid,pocid) VALUE (?,?,?,?)";
		int result=BaseDao.update(sql,potitle,pocontent,i,pocid);
		return result;
	}
	@Override
	//��������id�ҵ����ӵ���ϸ��Ϣ
	public Post getFavoritePostByUid(Integer poid) throws Exception{
		String sql = "select * from tb_post where poid=?";
		List<Post> post=BaseDao.query(sql, Post.class, poid);
		return post.get(0);
	}
	@Override
	//����uid��ȡ��������
	public List<Post> getPostByUid(int uid) throws Exception {
		String sql = "select * from tb_post where uid=?";
		List<Post> list=BaseDao.query(sql, Post.class, uid);
		return list;
	}
	@Override
	//����poid��ȡ��������
	public Post getPostByPoid(int poid) throws Exception {
		String sql = "select * from tb_post where poid=?";
		List<Post> list=BaseDao.query(sql, Post.class, poid);
		return list.get(0);
	}
	@Override
	//�������1
	public int getAddPoclicknum(int poid) throws Exception {
		String sql = " UPDATE tb_post SET poclicknum=poclicknum+1 WHERE poid=?";
		int i =BaseDao.update(sql,poid);
		return i;
	}
	@Override
	public int delPostByPoid(int poid) throws Exception {
		String sql = "delete from tb_post where poid = ?";
		return BaseDao.update(sql, poid);
	}
	@Override
	public List<Post> searchPostListByKeyword(String searchKeyword) throws Exception {
		System.out.println(searchKeyword);
		String sql = "select poid,potitle, pocontent , uid, potime ,a.pocid , pocname ,poclicknum from tb_post a left join tb_postcate b on a.pocid = b.pocid where potitle like ? or pocontent like ? ";
		return BaseDao.query(sql, Post.class, searchKeyword , searchKeyword);
	}
	
}
