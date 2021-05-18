package kr.or.hotsource.dto;

public class Flash {

	// Flash id 손전등 아이디
	private Integer id;
	// Detachment 거치대와의 분리 플래그
	private String detachment;
	// UUID 비콘의 UUID
	private String uuid;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getDetachment() {
		return detachment;
	}

	public void setDetachment(String detachment) {
		this.detachment = detachment;
	}

	public String getUuid() {
		return uuid;
	}

	public void setUuid(String uuid) {
		this.uuid = uuid;
	}

	@Override
	public String toString() {
		return "Flash [id=" + id + ", detachment=" + detachment + ", uuid=" + uuid + "]";
	}

	// Flash 모델 복사
	public void CopyData(Flash param) {
		this.id = param.getId();
		this.detachment = param.getDetachment();
		this.uuid = param.getUuid();
	}
}
