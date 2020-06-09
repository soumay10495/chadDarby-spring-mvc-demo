package com.springmvc.demo;

import java.util.Map;

public class Student {
    private String firstName;
    private String lastName;
    private String country;
    private Map<String, String> countryOptions;
    private String language;
    private String operatingSystems[];

    public Student() {
        /*countryOptions = new LinkedHashMap<String, String>();
        countryOptions.put("IN","India");
        countryOptions.put("CA","Canada");
        countryOptions.put("GE","Germany");
        countryOptions.put("US","USA");*/
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public Map<String, String> getCountryOptions() {
        return countryOptions;
    }

    public String getLanguage() {
        return language;
    }

    public void setLanguage(String language) {
        this.language = language;
    }

    public String[] getOperatingSystems() {
        return operatingSystems;
    }

    public void setOperatingSystems(String operatingSystems[]) {
        this.operatingSystems = operatingSystems;
    }
}
