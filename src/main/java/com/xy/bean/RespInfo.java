package com.xy.bean;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

/**
 * User: LiWenC
 * Date: 17-8-1
 */
@XmlRootElement(name = "RESP_INFO")
@XmlAccessorType(XmlAccessType.FIELD)
public class RespInfo {

    @XmlElement(name = "CODE")
    private int code;

    @XmlElement(name = "MESSAGE")
    private String message;

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
}
