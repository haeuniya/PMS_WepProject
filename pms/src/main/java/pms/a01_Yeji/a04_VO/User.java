package pms.a01_Yeji.a04_VO;

import java.util.Objects;

public class User {
	
	private String userUuid;		// 고유번호
	private String userName;		// 이름
	private String userPassword;	// 비밀번호
	private String userPic;			// 사진
	public User() {
		// TODO Auto-generated constructor stub
	}
	
	public User(String userUuid, String userName, String userPassword, String userPic) {
		this.userUuid = userUuid;
		this.userName = userName;
		this.userPassword = userPassword;
		this.userPic = userPic;
	}
	

	public String getUserUuid() {
		return userUuid;
	}

	public void setUserUuid(String userUuid) {
		this.userUuid = userUuid;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserPassword() {
		return userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	public String getUserPic() {
		return userPic;
	}

	public void setUserPic(String userPic) {
		this.userPic = userPic;
	}

	@Override
	public String toString() {
		return "User [userUuid=" + userUuid + ", userName=" + userName + ", userPassword=" + userPassword + ", userPic="
				+ userPic + "]";
	}

	@Override
	public int hashCode() {
		return Objects.hash(userName, userPassword, userPic, userUuid);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		User other = (User) obj;
		return Objects.equals(userName, other.userName) && Objects.equals(userPassword, other.userPassword)
				&& Objects.equals(userPic, other.userPic) && Objects.equals(userUuid, other.userUuid);
	}
	
	
	
}