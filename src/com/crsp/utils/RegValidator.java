package com.crsp.utils;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.crsp.entity.User;

@Component
public class RegValidator implements Validator {

	@Override
	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		return User.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object object, Errors errors) {
		User user = (User) object;

		// 用户名验证
		ValidationUtils.rejectIfEmpty(errors, "user_id",
				"user.user_id.required", "账号不能为空");
		int length = user.getUser_id().length();
		if (length > 0) {
			Pattern p = Pattern.compile("^[a-zA-Z0-9]+$");
			Matcher m = p.matcher(user.getUser_id());
			if (!m.matches())
				errors.rejectValue("user_id", "user.user_id.invalid",
						"账号由数字和字母组成");
			else {
				if (length < 6) {
					errors.rejectValue("user_id", "user.user_id.too_short",
							"账号太短，不能少于{6}个字符");
				} else if (length > 20) {
					errors.rejectValue("user_id", "user.user_id.too_long",
							"账号太长，不能长于{20}个字符");
				}
			}
		}

		// 密码验证
		ValidationUtils.rejectIfEmpty(errors, "user_pwd",
				"user.user_pwd.required", "密码不能为空");
		length = user.getUser_pwd().length();
		if (length > 0) {
			if (length < 6) {
				errors.rejectValue("user_pwd", "user.user_pwd.too_short",
						"密码太短，不能少于{6}个字符");
			} else if (length > 20) {
				errors.rejectValue("user_pwd", "user.user_pwd.too_long",
						"密码太长，不能长于{20}个字符");
			}
		}

		// 用户名验证
		ValidationUtils.rejectIfEmpty(errors, "user_name",
				"user.user_name.required", "用户名不能为空");
		length = user.getUser_name().length();
		if (length > 0) {
			if (length < 3) {
				errors.rejectValue("user_name", "user.user_name.too_short",
						"用户名太短，不能少于{3}个字符");
			} else if (length > 50) {
				errors.rejectValue("user_name", "user.user_name.too_long",
						"用户名太长，不能长于{50}个字符");
			}
		}

		// 邮箱验证
		ValidationUtils.rejectIfEmpty(errors, "email", "user.email.required",
				"邮箱不能为空");
		length = user.getEmail().length();
		if (length > 0) {
			Pattern p = Pattern
					.compile("^([a-z0-9A-Z]+[-|\\.]?)+[a-z0-9A-Z]@([a-z0-9A-Z]+(-[a-z0-9A-Z]+)?\\.)+[a-zA-Z]{2,}$");
			Matcher m = p.matcher(user.getEmail());
			if (!m.matches())
				errors.rejectValue("email", "user.email.invalid",
						"邮箱格式不正确");
		}

	}

}
