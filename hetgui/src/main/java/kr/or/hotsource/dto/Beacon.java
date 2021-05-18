package kr.or.hotsource.dto;

public class Beacon {
	// UUID 비콘의 UUID
	private String uuid;

	// City 비콘 설치 도시
	private String city;

	// State 비콘 설치 지역
	private String state;

	// Building 비콘 설치 건물
	private String building;

	// Floor F또는 B로 시작하는 층수
	private String floor;

	public String getUuid() {
		return uuid;
	}

	public void setUuid(String uuid) {
		this.uuid = uuid;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getBuilding() {
		return building;
	}

	public void setBuilding(String building) {
		this.building = building;
	}

	public String getFloor() {
		return floor;
	}

	public void setFloor(String floor) {
		this.floor = floor;
	}
	
	@Override
	public String toString() {
		return "Beacon [uuid=" + uuid + ", city=" + city + ", state=" + state + ", building=" + building + ", floor="
				+ floor + "]";
	}

	// Beacon 모델 복사
	public void CopyData(Beacon param) {
		this.uuid = param.getUuid();
		this.city = param.getCity();
		this.state = param.getState();
		this.building = param.getBuilding();
		this.floor = param.getFloor();
	}
}