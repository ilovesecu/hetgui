package kr.or.hotsource.dto;

//CAT.M1 에서 요청이 왔을 때 파라미터를 받는 클래스
public class Location {
	String time; //요청시간
	String uuid; //현재 사용자의 위치를 알기위한 비콘 UUID
	Integer flashId; //사용자가 가지고 있는 손전등 ID
	String clientIp;
	
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getUuid() {
		return uuid;
	}
	public void setUuid(String uuid) {
		this.uuid = uuid;
	}
	public Integer getFlashId() {
		return flashId;
	}
	public void setFlashId(Integer flashId) {
		this.flashId = flashId;
	}
	public String getClientIp() {
		return clientIp;
	}
	public void setClientIp(String clientIp) {
		this.clientIp = clientIp;
	}
	@Override
	public String toString() {
		return "Location [time=" + time + ", uuid=" + uuid + ", flashId=" + flashId + ", clientIp=" + clientIp + "]";
	}
}
