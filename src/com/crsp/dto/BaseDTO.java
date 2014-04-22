package com.crsp.dto;

public class BaseDTO {
	private boolean isErr;
	private int errNum;
	public boolean isErr() {
		return isErr;
	}
	public void setErr(boolean isErr) {
		this.isErr = isErr;
	}
	public int getErrNum() {
		return errNum;
	}
	public void setErrNum(int errNum) {
		this.errNum = errNum;
	}
}
