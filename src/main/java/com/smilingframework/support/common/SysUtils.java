package com.smilingframework.support.common;
import com.smilingframework.core.runtime.utils.MD5Utils;
import com.smilingframework.core.runtime.utils.RandomUtils;


public class SysUtils {

	
	/**
	 * 生成前台用户密码
	 * @param password
	 * @return
	 */
	public static String getPassword(String password){
		return MD5Utils.MD5(password + "yunkouqiang-web");
	}
	
	/**
	 * 生成后台用户密码
	 * @param password
	 * @return
	 */
	public static String getAdminPassword(String password){
		return MD5Utils.MD5(password + "yunkouqiang-admin");
	}
	
	/**
	 * 生成TOKEN
	 * @param uuid
	 * @return
	 */
	public static String getToken(final String uuid){
		synchronized (uuid) {
			return RandomUtils.random(36);
		}
	}
	
}
