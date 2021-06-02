package kr.or.hotsource.dto;

public class Flash {
	// Flash id 손전등 아이디
    private Integer id;
    // Detachment 거치대와의 분리 플래그
    private String detachment;
    // UUID 비콘의 UUID
    private String uuid;
    // Model명 손전등 모델명
    private String model;
    // Firmware 손전등 펌웨어 버전
    private String firmware;
    // SendTime 손전등 최종 신호시간
    private String sendTime;
    
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

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public String getFirmware() {
        return firmware;
    }

    public void setFirmware(String firmware) {
        this.firmware = firmware;
    }

    public String getSendTime() {
        return sendTime;
    }

    public void setSendTime(String sendTime) {
        this.sendTime = sendTime;
    }
    
    @Override
	public String toString() {
		return "Flash [id=" + id + ", detachment=" + detachment + ", uuid=" + uuid + ", model=" + model + ", firmware="
				+ firmware + ", sendTime=" + sendTime + "]";
	}

	// Flash 모델 복사
    public void CopyData(Flash param)
    {
        this.id = param.getId();
        this.detachment = param.getDetachment();
        this.uuid = param.getUuid();
        this.model = param.getModel();
        this.firmware = param.getFirmware();
        this.sendTime = param.getSendTime();
    }
}
