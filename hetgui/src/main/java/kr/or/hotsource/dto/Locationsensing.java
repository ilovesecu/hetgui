package kr.or.hotsource.dto;

//위치의 센싱정보 
public class Locationsensing {
	private Integer id; // sensing id 센싱 아이디
	private String beaconUuid; // beacon uuid 비콘 UUID
	private Integer flashId; // flash id 손전등 아이디
	private Integer temperature; // temperature 온도
	private Integer humidity; // humidity 습도
	private String sensingTime; // time 센싱 시간

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getBeaconUuid() {
		return beaconUuid;
	}

	public void setBeaconUuid(String beaconUuid) {
		this.beaconUuid = beaconUuid;
	}

	public Integer getFlashId() {
		return flashId;
	}

	public void setFlashId(Integer flashId) {
		this.flashId = flashId;
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

	public String getSensingTime() {
		return sensingTime;
	}

	public void setSensingTime(String sensingTime) {
		this.sensingTime = sensingTime;
	}

	@Override
	public String toString() {
		return "Locationsensing [id=" + id + ", beaconUuid=" + beaconUuid + ", flashId=" + flashId + ", temperature="
				+ temperature + ", humidity=" + humidity + ", sensingTime=" + sensingTime + "]";
	}

}
