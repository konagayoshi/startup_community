# coding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
users = [
  {
    email: "student@enpit.com",
    password: "12345678",
    password_confirmation: "12345678",
    attr: 1
  },
  {
    email: "company@enpit.com",
    password: "12345678",
    password_confirmation: "12345678",
    attr: 2
  },
  {
    email: "university@enpit.com",
    password: "12345678",
    password_confirmation: "12345678",
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
  {
   email: "hikarushinomiya2080085@gmail.com",
   password: "shinomiya",
   password_confirmation: "shinomiya",
   attr: 3
  }
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
    email: "student@enpit.com",
    user_id: 1
  },
  {
    name: "Hoang Trung Kien",
    university: "University of Engineering and Technologies",
    major: "Computer Science",
    interestedfield: "Computer science & Internet of things",
    history: "2012 Participate National Methematic Olympiad",
    achievement: "2012 4th award",
    hope: "I want to work oversea in the future",
    email: "kien.isp15@hotmail.com",
    user_id: 4
  },
  {
    name: "Nguyen Phuc Loi",
    university: "University of Engineering and Technologies",
    major: "Computer Science",
    interestedfield: "Computer science and Machine Learning",
    history: "2012 Vietnam National Olympiad Informatics",
    achievement: "2012 incentive award",
    hope: "Work oversea in the future",
    email: "nguyenphucloi193@gmail.com",
    user_id: 5
  }  
]
Student.create!(students)

universities = [
  {
 name: "University of Miyazaki",
 location: "1-1, Gakuen Kibanadai-nishi, Miyazaki-shi, 889-2192",
 introduction: "Our institutional goal states that UOM will commit itself to the preparation of young individuals able to respond to the ever-changing demands of the 21st century by both inheriting and developing science and culture as the fruit of human wisdom, by exploring the profound truths of science, by preserving the natural environment that is the origin of all life, and by creating interdisciplinary programs in life science that will serve the welfare and prosperity of all humanity.",
 contact: "TEL : +81-985-58-7104, 
FAX : +81-985-58-7782,
e-mail : kokusai@of.miyazaki-u.ac.jp,
International Student Section  e-mail : ryugaku@of.miyazaki-u.ac.jp ",
 cooperation: "",
 rank: 3,
 reputation: 3,
 checked: 0,
 email: "university@enpit.com",
 user_id: 3,
 url: "http://www.miyazaki-u.ac.jp/",
 logo: File.open("#{Rails.root}/images/miyazaki.png").read
  },
  {
    name: "University of Engineering and Technologies",
    location: "144 Xuan Thuy Street, Cau Giay District, Ha Noi",
    introduction: "Our institutional goal states that UET will commit itself to the preparation of young individuals able to respond to the ever-changing demands of the 21st century by both inheriting and developing science and culture as the fruit of human wisdom, by exploring the profound truths of science, by preserving the natural environment that is the origin of all life, and by creating interdisciplinary programs in life science that will serve the welfare and prosperity of all humanity.",
    contact: "Tel: 84.4.37547.461,
 Fax: 84.4.37547.460,
 Email: uet@vnu.edu.vn,
International Student Section e-mail : ryugaku@vnu.ed.vn",
    cooperation: "",
    rank: 3,
    reputation: 3,
    checked: 0,
    email: "hikarushinomiya2080085@gmail.com",
    user_id: 6,
    url: "http://e.uet.vnu.edu.vn",
    logo: File.open("#{Rails.root}/images/uet.png").read
  },  
]
University.create!(universities)

companies = [
 {
  name: "AIIT Company",
  president: "Hikaru Shinomiya",
  email: "company@enpit.com",
  user_id: 2,
  industry: "Information Technology",
  corporate_principle: "Vitalize Japan by Information Technology",
  number_of_employees: 3,
  location: "Tokyo",
  date_of_establishment: '2016-2-25',
  url: "http://aiit.ac.jp/",
  logo: File.open("#{Rails.root}/images/aiit.png").read
 }
]
Company.create!(companies)

jobdemands = [
  {
    title: "Mechanical Design Engineer",
    overview: "Curtiss-Wright Corporation
Farmingdale, NY",
    responsibility: "Review contractor's standards, specifications and other documentation to determine mechanical engineering requirements.

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
    launguage: "English",
    other: "",
    company_id: 1
  },
  {
    title: "Enterprise Application Development Lead Engineer",
    overview: "Assured Information Security, Inc.  
 Rome, NY ",
    responsibility: "Leads in the development of web software projects, guiding 1 to 2 development engineers in delivering customer requirements for the SecureView Management Server

Communicates continually with the team, explains progress on the development effort to the program lead

Translates designs and style guides provided by the customer into functional user interfaces, ensuring cross browser compatibility and performance",
    competency: "",
    education: "Bachelor's degree in computer science, computer engineering or equivalent experience",
    workexperience: "Typically requires 5+ years of related experience
Must be able to obtain a DoD Security Clearance
Strong written and verbal communication skills
Willingness to travel to customer sites to assist with installs",
    launguage: "English",
    other: "AIS is an equal opportunity employer and considers qualified applicants for employment without regard to race, color, creed, religion, national origin, sex, sexual orientation, gender identity and expression, age, disability, eligible veteran status, or any other protected factor. ",
    company_id: 1
  },  
  {
    title: "Electrical Design Engineer",
    overview: "Engineering Service Professionals  
 Poughkeepsie, NY",
    responsibility: "This candidate will be designing electrical/electronic components for PCBs and machinery. They will be using OrCAD and AutoCAD.
Develop conceptual electrical/electronic designs and/or complete & refine conceptual designs into detailed designs.
Create full documentation packages consisting of detailed schematic(s), wiring diagrams, wire run charts, cable drawings, flow charts, PCB layout package and bill of materials & scheduling as required.
Participate as requested in advisory/quality control capacity during assembly and debug",
    competency: "",
    education: "",
    workexperience: "Experience in development of printed circuit board designs and layouts.
Knowledge of analog and digital circuitry; common communications protocols; and ability to troubleshoot to component level.
Familiarity with typical industry standards requirements: National Electrical Code, NFPA79, CE, SEMI-S2/S8, etc.",
    launguage: "English",
    other: "",
    company_id: 1
  },  
]
Jobdemand.create!(jobdemands)
