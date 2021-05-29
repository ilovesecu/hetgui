package kr.or.hotsource.dto;

public class Log {

	// Log id 로그 아이디
	private Integer id;
	// IP Addr 아이피 주소
	private String ip;
	// Method 무엇을 요청했는지
	private String method;
	// Time 수집 시간
	private String time;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getIp() {
		return ip;
	}

	public void setIp(String ip) {
		this.ip = ip;
	}

	public String getMethod() {
		return method;
	}

	public void setMethod(String method) {
		this.method = method;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}
	
	@Override
	public String toString() {
		return "Log [id=" + id + ", ip=" + ip + ", method=" + method + ", time=" + time + "]";
	}

	// Log 모델 복사
	public void CopyData(Log param) {
		this.id = param.getId();
		this.ip = param.getIp();
		this.method = param.getMethod();
		this.time = param.getTime();
	}
}
