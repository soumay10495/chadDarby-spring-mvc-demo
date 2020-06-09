package com.springmvc.demo.validation;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class CourseCodeConstraintValidator
        implements ConstraintValidator<CourseCode, String> {
    String courseCodePrefix;

    public void initialize(CourseCode constraintAnnotation) {
        courseCodePrefix = constraintAnnotation.value();
    }

    public boolean isValid(String s, ConstraintValidatorContext constraintValidatorContext) {
        if (s == null)
            return true;

        if (s != null && s.startsWith(courseCodePrefix))
            return true;

        return false;
    }
}
