/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.hiv;

import java.io.Serializable; 
import java.util.ArrayList;
import java.util.*;

/**
 *
 * @author Sajjad
 * Date: November 5, 2015
 * A User bean class that stores user specific variables.
 */
public class User implements Serializable
{
    private String name   = null; 
    private String years  = null;
    private String months = null;
    private String gender = null;
    private String race    = null;
    
    public User()
    {

    }
    
    public User(String uname, String years, String months, String gender, String race)
    {
	this.name   = uname;
	this.years  = years;
        this.months = months;
        this.gender = gender;
        this.race   = race;
    }
    
    
    public String getUserInfoString()
    {
        String tempS = "\nName: " + this.name + "\n" + 
                       "Age in Years and Months: " + this.years + " " + this.months + "\n" +
                       "Gender: " + this.gender + "\n" + 
                       "Race: " + this.race;
        return tempS;
    }
    
}
