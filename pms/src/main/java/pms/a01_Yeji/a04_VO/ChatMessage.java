package pms.a01_Yeji.a04_VO;

import java.util.Date;
import java.util.Objects;

public class ChatMessage {
	private String roomId;			// 방 번호
	private String messageContent;	// 메세지 내용
	private Date messageRegDate;	// 메세지 보낸 시간
	private String userUuid;		// 보낸이
	private int unReadCount;		// 메세지 확인 여부
	public ChatMessage() {
		// TODO Auto-generated constructor stub
	}
	public ChatMessage(String roomId, String messageContent, Date messageRegDate, String userUuid, int unReadCount) {
		this.roomId = roomId;
		this.messageContent = messageContent;
		this.messageRegDate = messageRegDate;
		this.userUuid = userUuid;
		this.unReadCount = unReadCount;
	}
	public String getRoomId() {
		return roomId;
	}
	public void setRoomId(String roomId) {
		this.roomId = roomId;
	}
	public String getMessageContent() {
		return messageContent;
	}
	public void setMessageContent(String messageContent) {
		this.messageContent = messageContent;
	}
	public Date getMessageRegDate() {
		return messageRegDate;
	}
	public void setMessageRegDate(Date messageRegDate) {
		this.messageRegDate = messageRegDate;
	}
	public String getUserUuid() {
		return userUuid;
	}
	public void setUserUuid(String userUuid) {
		this.userUuid = userUuid;
	}
	public int getUnReadCount() {
		return unReadCount;
	}
	public void setUnReadCount(int unReadCount) {
		this.unReadCount = unReadCount;
	}
	@Override
	public String toString() {
		return "ChatMessage [roomId=" + roomId + ", messageContent=" + messageContent + ", userUuid=" + userUuid
				+ ", unReadCount=" + unReadCount + "]";
	}
	@Override
	public int hashCode() {
		return Objects.hash(messageContent, roomId, unReadCount, userUuid);
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		ChatMessage other = (ChatMessage) obj;
		return Objects.equals(messageContent, other.messageContent) && Objects.equals(roomId, other.roomId)
				&& unReadCount == other.unReadCount && Objects.equals(userUuid, other.userUuid);
	}
   
}
