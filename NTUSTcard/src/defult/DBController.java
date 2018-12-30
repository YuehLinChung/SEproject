package defult;

import java.sql.*;
import java.util.ArrayList;

public class DBController {
	private Connection con;
	private Statement st;
	private ResultSet rs;

	public DBController() {
		try {
			// Class ���R�A forName() ��k��{�ʺA�[�����O
			Class.forName("com.mysql.jdbc.Driver");
			// 3306|MySQL�}�񦹺ݤf
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ntustsql?serverTimezone=UTC", "root", "1234");
			st = con.createStatement();

		} catch (Exception ex) {
			System.out.println("Error: " + ex);
		}
	}

	public ArrayList<UserInfoBean> getUserData() {
		ArrayList<UserInfoBean> result = new ArrayList<UserInfoBean>();
		try {
			String query = "select * from user";
			rs = st.executeQuery(query);
			System.out.println("Records for Database");
			while (rs.next()) {
				UserInfoBean data = new UserInfoBean();
				data.id = rs.getString("id");
				data.password = rs.getString("password");
				data.name = rs.getString("name");
				data.mail = rs.getString("mail");
				data.institute = rs.getString("institute");
				data.depart = rs.getString("depart");
				data.birthday = rs.getString("birthday");
				result.add(data);
			}
			return result;
		} catch (Exception ex) {
			System.out.println(ex);
		}
		return result;
	}
		public ArrayList<PostDataBean> getPostData() {
			ArrayList<PostDataBean> result = new ArrayList<PostDataBean>();
			try {
				String query = "select * from post";
				rs = st.executeQuery(query);
				System.out.println("Records for Database");
				while (rs.next()) {
					PostDataBean data = new PostDataBean();
					data.id = rs.getInt("id");
					data.author = rs.getString("author");
					data.board = rs.getString("board");
					data.priority = rs.getInt("priority");
					data.content = rs.getString("content");
					data.postTime = rs.getString("postTime");
					data.heart = rs.getInt("heart");					
					data.comments = rs.getInt("comments");
					for(int i=0; i < data.comments;i++)
					{
						data.postComment(rs.getString("comment" +Integer.toString(i)));
					}
					result.add(data);
				}
			} catch (Exception ex) {
				System.out.println(ex);
			}	
			return result;
		}
}	