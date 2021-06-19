package kr.or.hotsource.dto;

public class MapLocation {
	int flashId;
	String uuid;
	String floor;
	String section;
	Integer temperature;
	Integer humidity;
	String timeDiff;
	
	public int getFlashId() {
		return flashId;
	}
	public void setFlashId(int flashId) {
		this.flashId = flashId;
	}
	public String getUuid() {
		return uuid;
	}
	public void setUuid(String uuid) {
		this.uuid = uuid;
	}
	public String getFloor() {
		return floor;
	}
	public void setFloor(String floor) {
		this.floor = floor;
	}
	public String getSection() {
		return section;
	}
	public void setSection(String section) {
		this.section = section;
	}
	public Integer getTemperature() {
		return temperature;
	}
	public void setTemperature(Integer temperature) {
		this.temperature = temperature;
	}
	public Integer getHumidity() {
		return humidity;
	}
	public void setHumidity(Integer humidity) {
		this.humidity = humidity;
	}
	
	public String getTimeDiff() {
		return timeDiff;
	}
	public void setTimeDiff(String timeDiff) {
		this.timeDiff = timeDiff;
	}
	@Override
	public String toString() {
		return "MapLocation [flashId=" + flashId + ", uuid=" + uuid + ", floor=" + floor + ", section=" + section
				+ ", temperature=" + temperature + ", humidity=" + humidity + ", timeDiff=" + timeDiff + "]";
	}
}
