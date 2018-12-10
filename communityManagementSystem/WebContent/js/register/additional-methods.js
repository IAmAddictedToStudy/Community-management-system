$.validator.addMethod("validateMember", function(value, element) {

	var v_regex = /^[0-9]{12}$/;

	value = "" + value;

	if (value) {

		if (!v_regex.test(value)) {

			return false;

		} else {

			return true;

		}

	} else {

		return null;

	}

}, "学号为12数字");
$.validator.addMethod("validatePassword", function(value, element) {

	var v_regex = /^[a-zA-Z0-9_]{6,20}$/;

	value = "" + value;

	if (value) {

		if (!v_regex.test(value)) {

			return false;

		} else {

			return true;

		}

	} else {

		return null;

	}

}, "字母数字以及下划线");

$.validator.addMethod("validateName", function(value, element) {

	  var v_regex=/^[\u4E00-\u9FA5]+(?:·[\u4E00-\u9FA5]+)*$/;

	  value=""+value;

	  if(value){

	    if(!v_regex.test(value)){

	      return false;

	    }else{

	      return true;

	    }

	  }else{

	    return null;

	  }

	}, "请正确填写您的姓名");

$.validator.addMethod("validateClassAndGrade", function(value, element) {

	  var v_regex=/^[\u4E00-\u9FA5 a-zA-Z0-9]+(?:·[\u4E00-\u9FA5]+)*$/;

	  value=""+value;

	  if(value){

	    if(!v_regex.test(value)){

	      return false;

	    }else{

	      return true;

	    }

	  }else{

	    return null;

	  }

	}, "请正确填写你的班级");

$.validator.addMethod("validateDorm", function(value, element) {

	  var v_regex=/^[\u4E00-\u9FA5 a-zA-Z0-9-]+(?:·[\u4E00-\u9FA5]+)*$/;

	  value=""+value;

	  if(value){

	    if(!v_regex.test(value)){

	      return false;

	    }else{

	      return true;

	    }

	  }else{

	    return null;

	  }

	}, "请正确填写你的宿舍");

$.validator.addMethod("validatePhone", function(value, element) {

	var v_regex = /^0?(13[0-9]|15[012356789]|18[012346789]|14[57]|17[678]|170[059]|14[57]|166|19[89])[0-9]{8}$/;

	value = "" + value;

	if (value) {

		if (!v_regex.test(value)) {

			return false;

		} else {

			return true;

		}

	} else {

		return null;

	}

}, "请正确填写你的手机号码");
$.validator.addMethod("validateQQ", function(value, element) {

	var v_regex = /^[0-9]{5,12}$/;

	value = "" + value;

	if (value) {

		if (!v_regex.test(value)) {

			return false;

		} else {

			return true;

		}

	} else {

		return null;

	}

}, "请正确填写你的QQ号码");

$.validator.addMethod("email", function(value, element) {

	var v_regex = /^[A-Za-z\d]+([-_.][A-Za-z\d]+)*@([A-Za-z\d]+[-.])+[A-Za-z\d]{2,5}$/;

	value = "" + value;

	if (value) {

		if (!v_regex.test(value)) {

			return false;

		} else {

			return true;

		}

	} else {

		return null;

	}

}, "请正确填写你的邮箱");