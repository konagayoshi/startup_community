# coding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
users = [
  {
    email: "konagayoshi@hotmail.com",
    password: "konagayoshi",
    password_confirmation: "konagayoshi",
    attr: 1
  },
  {
    email: "konagayoshi@gmail.com",
    password: "konagayoshi",
    password_confirmation: "konagayoshi",
    attr: 2
  },
  {
    email: "enpit.global@gmail.com",
    password: "konagayoshi",
    password_confirmation: "konagayoshi",
    attr: 3
  },
  {
    email: "kien.isp15@gmail.com",
    password: "kien.isp15",
    password_confirmation: "kien.isp15",
    attr: 1
  },
  {
    email: "nguyenphucloi193@gmail.com",
    password: "nguyenphucloi193",
    password_confirmation: "nguyenphucloi193",
    attr: 1
  },  
]
User.create!(users)

students = [
  {
    name: "Susumu Konagayoshi",
    university: "University of Miyazaki",
    major: "Electron and Electronic",
    interestedfield: "Computer science & Internet of things",
    history: "2015/11 Participate Techcrunch hackathon",
    achievement: "2014/10 Completed Yokohama shonan marathon race",
    hope: "I want to work oversea in the future",
    email: "konagayoshi@hotmail.com"
  },
  {
    name: "Hoang Trung Kien",
    university: "University of Engineering and Technologies",
    major: "Computer Science",
    interestedfield: "Computer science & Internet of things",
    history: "2012 Participate National Methematic Olympiad",
    achievement: "2012 4th award",
    hope: "I want to work oversea in the future",
    email: "kien.isp15@hotmail.com"
  },
  {
    name: "Nguyen Phuc Loi",
    university: "University of Engineering and Technologies",
    major: "Computer Science",
    interestedfield: "Computer science and Machine Learning",
    history: "2012 Vietnam National Olympiad Informatics",
    achievement: "2012 incentive award",
    hope: "Work oversea in the future",
    email: "nguyenphucloi193@gmail.com"
  }  
]
Student.create!(students)

universities = [
  {
 id: 1,
 name: "University of Miyazaki",
 location: "1-1, Gakuen Kibanadai-nishi, Miyazaki-shi, 889-2192",
 introduction: "Our institutional goal states that UOM will commit itself to the preparation of young individuals able to respond to the ever-changing demands of the 21st century by both inheriting and developing science and culture as the fruit of human wisdom, by exploring the profound truths of science, by preserving the natural environment that is the origin of all life, and by creating interdisciplinary programs in life science that will serve the welfare and prosperity of all humanity.",
 contact: "TEL : +81-985-58-7104
FAX : +81-985-58-7782
e-mail : kokusai@of.miyazaki-u.ac.jp
International Student Section  e-mail : ryugaku@of.miyazaki-u.ac.jp",
 cooperation: "",
 rank: 3,
 reputation: 3,
 checked: 0
  },
  {
    id: 2,
    name: "University of Engineering and Technologies",
    location: "144 Xuan Thuy Street, Cau Giay District, Ha Noi",
    introduction: "Our institutional goal states that UET will commit itself to the preparation of young individuals able to respond to the ever-changing demands of the 21st century by both inheriting and developing science and culture as the fruit of human wisdom, by exploring the profound truths of science, by preserving the natural environment that is the origin of all life, and by creating interdisciplinary programs in life science that will serve the welfare and prosperity of all humanity.",
    contact: "Tel: 84.4.37547.461, Fax: 84.4.37547.460, Email: uet@vnu.edu.vn
International Student Section e-mail : ryugaku@of.miyazaki-u.ac.jp",
    cooperation: "",
    rank: 3,
    reputation: 3,
    checked: 0
  },  
]
University.create!(universities)

jobdemands = [
  {
    id: 1, 
    title: "Mechanical Design Engineer",
    overview: "Curtiss-Wright Corporation
Farmingdale, NY",
    reponsibility: "Review contractor's standards, specifications and other documentation to determine mechanical engineering requirements.

Design or review simple mechanical, hydraulic, pneumatic, ventilation and/or instrumentation systems using analytical and investigative methods and techniques to ensure systems meet required specifications.

Gather and correlate basic data and performs routine engineering research and development assignments involving calculations and relatively simple tests in order to develop new applications or upgrade existing hardware.",
    competency: "",
    education: "Bachelor’s Degree in Mechanical Engineering",
    workexperience: "5 years’ experience in design or manufacturing Engineering
5 years’ experience using SolidWorks
Experience in the Aerospace industry preferred
Solid understanding of mechanical systems and design principles.
Analytic and problem solving ability
Experience suing CAD",
    lauguage: "English",
    other: ""
  },
  {
    id: 2, 
    title: "Enterprise Application Development Lead Engineer",
    overview: "Assured Information Security, Inc.  
 Rome, NY ",
    reponsibility: "Leads in the development of web software projects, guiding 1 to 2 development engineers in delivering customer requirements for the SecureView Management Server

Communicates continually with the team, explains progress on the development effort to the program lead

Translates designs and style guides provided by the customer into functional user interfaces, ensuring cross browser compatibility and performance",
    competency: "",
    education: "Bachelor's degree in computer science, computer engineering or equivalent experience",
    workexperience: "Typically requires 5+ years of related experience
Must be able to obtain a DoD Security Clearance
Strong written and verbal communication skills
Willingness to travel to customer sites to assist with installs",
    lauguage: "English",
    other: "AIS is an equal opportunity employer and considers qualified applicants for employment without regard to race, color, creed, religion, national origin, sex, sexual orientation, gender identity and expression, age, disability, eligible veteran status, or any other protected factor. "
  },  
  {
    id: 3, 
    title: "Electrical Design Engineer",
    overview: "Engineering Service Professionals  
 Poughkeepsie, NY",
    reponsibility: "This candidate will be designing electrical/electronic components for PCBs and machinery. They will be using OrCAD and AutoCAD.
Develop conceptual electrical/electronic designs and/or complete & refine conceptual designs into detailed designs.
Create full documentation packages consisting of detailed schematic(s), wiring diagrams, wire run charts, cable drawings, flow charts, PCB layout package and bill of materials & scheduling as required.
Participate as requested in advisory/quality control capacity during assembly and debug",
    competency: "",
    education: "",
    workexperience: "Experience in development of printed circuit board designs and layouts.
Knowledge of analog and digital circuitry; common communications protocols; and ability to troubleshoot to component level.
Familiarity with typical industry standards requirements: National Electrical Code, NFPA79, CE, SEMI-S2/S8, etc.",
    lauguage: "English",
    other: ""
  },  
]
Jobdemand.create!(jobdemands)
