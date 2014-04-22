package com.crsp.dto;

public class BaseDTO {
	private boolean isErr;
	private String errMsg;
	public boolean isErr() {
		return isErr;
	}
	public void setErr(boolean isErr) {
		this.isErr = isErr;
	}
	public String getErrMsg() {
		return errMsg;
	}
	public void setErrMsg(String errMsg) {
		this.errMsg = errMsg;
	}
}
