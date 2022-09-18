package pms.a01_Yeji.a04_VO;

import java.util.Objects;

public class ChatRoom {
	private String roomId;		// 방 번호
	private String userUuid;	// 유저
	public ChatRoom() {
		// TODO Auto-generated constructor stub
	}
	public ChatRoom(String roomId, String userUuid) {
		this.roomId = roomId;
		this.userUuid = userUuid;
	}
	public String getRoomId() {
		return roomId;
	}
	public void setRoomId(String roomId) {
		this.roomId = roomId;
	}
	public String getUserUuid() {
		return userUuid;
	}
	public void setUserUuid(String userUuid) {
		this.userUuid = userUuid;
	}
	@Override
	public String toString() {
		return "ChatRoom [roomId=" + roomId + ", userUuid=" + userUuid + "]";
	}
	@Override
	public int hashCode() {
		return Objects.hash(roomId, userUuid);
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		ChatRoom other = (ChatRoom) obj;
		return Objects.equals(roomId, other.roomId) && Objects.equals(userUuid, other.userUuid);
	}
    
    
}
