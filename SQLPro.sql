/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  Admin
 * Created: 13 Aug, 2020
 */

create database hospital;
use hospital;
create table login(username varchar(15),password varchar(15);
create table adminreg(username varchar(50),password varchar(35));
create table patient(
           fname varchar(50),
           lname varchar(35),
           gender varchar(20),
           city varchar(20),
           email varchar(20),
           age varchar(10), 
           address varchar(50), 
           date varchar(50),
           mobile varchar(50) primary key,    
                    );
