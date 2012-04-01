# -*- coding: utf-8 -*-
u = User.new(:login=>"admin", :password=>"qwerty", :password_confirmation=>"qwerty", :email=>"admin@msiu.ru")
u.role = 1
p u.save

puts "Create Disciplines"
d1 = Discipline.create(:full_name=>"Математика",      :short_name=>"Мат")
d2 = Discipline.create(:full_name=>"Информатика",     :short_name=>"Инф")
d3 = Discipline.create(:full_name=>"Физика",          :short_name=>"Физ")
d4 = Discipline.create(:full_name=>"Русский язык",    :short_name=>"Рус. Яз")
d5 = Discipline.create(:full_name=>"Програмирование", :short_name=>"Прогм")
Discipline.create(:full_name=>"История",        :short_name=>"Ист")
Discipline.create(:full_name=>"Обществознание", :short_name=>"Общ")
Discipline.create(:full_name=>"Экология",       :short_name=>"Экл")
Discipline.create(:full_name=>"Химия",          :short_name=>"Хим")

puts "Create Course"
Course.create(:start_date=>"01.09.2000", :finish_date=>"01.06.2001", :discipline_id=>d1.id, :year=>"2000")
Course.create(:start_date=>"10.09.2000", :finish_date=>"01.06.2001", :discipline_id=>d1.id, :year=>"2000")
Course.create(:start_date=>"01.09.2001", :finish_date=>"01.06.2002", :discipline_id=>d1.id, :year=>"2001")
Course.create(:start_date=>"10.09.2001", :finish_date=>"01.06.2002", :discipline_id=>d1.id, :year=>"2001")
Course.create(:start_date=>"01.09.2002", :finish_date=>"01.06.2003", :discipline_id=>d1.id, :year=>"2002")
Course.create(:start_date=>"10.09.2002", :finish_date=>"01.06.2003", :discipline_id=>d1.id, :year=>"2002")
Course.create(:start_date=>"01.09.2003", :finish_date=>"01.06.2004", :discipline_id=>d1.id, :year=>"2003")
Course.create(:start_date=>"10.09.2003", :finish_date=>"01.06.2004", :discipline_id=>d1.id, :year=>"2003")
Course.create(:start_date=>"01.09.2004", :finish_date=>"01.06.2004", :discipline_id=>d1.id, :year=>"2004")
Course.create(:start_date=>"10.09.2004", :finish_date=>"01.06.2004", :discipline_id=>d1.id, :year=>"2004")
Course.create(:start_date=>"01.09.2005", :finish_date=>"01.06.2005", :discipline_id=>d1.id, :year=>"2005")
Course.create(:start_date=>"10.09.2005", :finish_date=>"01.06.2005", :discipline_id=>d1.id, :year=>"2005")
Course.create(:start_date=>"01.09.2006", :finish_date=>"01.06.2007", :discipline_id=>d1.id, :year=>"2006")
Course.create(:start_date=>"10.09.2006", :finish_date=>"01.06.2007", :discipline_id=>d1.id, :year=>"2006")
Course.create(:start_date=>"01.09.2007", :finish_date=>"01.06.2008", :discipline_id=>d1.id, :year=>"2007")
Course.create(:start_date=>"10.09.2007", :finish_date=>"01.06.2008", :discipline_id=>d1.id, :year=>"2007")
Course.create(:start_date=>"01.09.2008", :finish_date=>"01.06.2009", :discipline_id=>d1.id, :year=>"2008")
Course.create(:start_date=>"10.09.2008", :finish_date=>"01.06.2009", :discipline_id=>d1.id, :year=>"2008")
Course.create(:start_date=>"01.09.2009", :finish_date=>"01.06.2010", :discipline_id=>d1.id, :year=>"2009")
Course.create(:start_date=>"10.09.2009", :finish_date=>"01.06.2010", :discipline_id=>d1.id, :year=>"2009")
Course.create(:start_date=>"01.09.2010", :finish_date=>"01.06.2011", :discipline_id=>d1.id, :year=>"2010")
Course.create(:start_date=>"10.09.2010", :finish_date=>"01.06.2011", :discipline_id=>d1.id, :year=>"2010")
Course.create(:start_date=>"01.09.2011", :finish_date=>"01.06.2012", :discipline_id=>d1.id, :year=>"2011")
Course.create(:start_date=>"10.09.2011", :finish_date=>"01.06.2012", :discipline_id=>d1.id, :year=>"2011")
Course.create(:start_date=>"01.09.2012", :finish_date=>"01.06.2013", :discipline_id=>d1.id, :year=>"2012")
c1 = Course.create(:start_date=>"10.09.2012", :finish_date=>"01.06.2013", :discipline_id=>d1.id, :year=>"2012")

Course.create(:start_date=>"01.09.2000", :finish_date=>"01.06.2001", :discipline_id=>d2.id, :year=>"2000")
Course.create(:start_date=>"05.09.2000", :finish_date=>"01.06.2001", :discipline_id=>d2.id, :year=>"2000")
Course.create(:start_date=>"01.09.2001", :finish_date=>"01.06.2002", :discipline_id=>d2.id, :year=>"2001")
Course.create(:start_date=>"05.09.2001", :finish_date=>"01.06.2002", :discipline_id=>d2.id, :year=>"2001")
Course.create(:start_date=>"01.09.2002", :finish_date=>"01.06.2003", :discipline_id=>d2.id, :year=>"2002")
Course.create(:start_date=>"05.09.2002", :finish_date=>"01.06.2003", :discipline_id=>d2.id, :year=>"2002")
Course.create(:start_date=>"01.09.2003", :finish_date=>"01.06.2004", :discipline_id=>d2.id, :year=>"2003")
Course.create(:start_date=>"05.09.2003", :finish_date=>"01.06.2004", :discipline_id=>d2.id, :year=>"2003")
Course.create(:start_date=>"01.09.2004", :finish_date=>"01.06.2004", :discipline_id=>d2.id, :year=>"2004")
Course.create(:start_date=>"05.09.2004", :finish_date=>"01.06.2004", :discipline_id=>d2.id, :year=>"2004")
Course.create(:start_date=>"01.09.2005", :finish_date=>"01.06.2005", :discipline_id=>d2.id, :year=>"2005")
Course.create(:start_date=>"05.09.2005", :finish_date=>"01.06.2005", :discipline_id=>d2.id, :year=>"2005")
Course.create(:start_date=>"01.09.2006", :finish_date=>"01.06.2007", :discipline_id=>d2.id, :year=>"2006")
Course.create(:start_date=>"05.09.2006", :finish_date=>"01.06.2007", :discipline_id=>d2.id, :year=>"2006")
Course.create(:start_date=>"01.09.2007", :finish_date=>"01.06.2008", :discipline_id=>d2.id, :year=>"2007")
Course.create(:start_date=>"05.09.2007", :finish_date=>"01.06.2008", :discipline_id=>d2.id, :year=>"2007")
Course.create(:start_date=>"01.09.2008", :finish_date=>"01.06.2009", :discipline_id=>d2.id, :year=>"2008")
Course.create(:start_date=>"05.09.2008", :finish_date=>"01.06.2009", :discipline_id=>d2.id, :year=>"2008")
Course.create(:start_date=>"01.09.2009", :finish_date=>"01.06.2010", :discipline_id=>d2.id, :year=>"2009")
Course.create(:start_date=>"05.09.2009", :finish_date=>"01.06.2010", :discipline_id=>d2.id, :year=>"2009")
Course.create(:start_date=>"01.09.2010", :finish_date=>"01.06.2011", :discipline_id=>d2.id, :year=>"2010")
Course.create(:start_date=>"05.09.2010", :finish_date=>"01.06.2011", :discipline_id=>d2.id, :year=>"2010")
Course.create(:start_date=>"01.09.2011", :finish_date=>"01.06.2012", :discipline_id=>d2.id, :year=>"2011")
Course.create(:start_date=>"05.09.2011", :finish_date=>"01.06.2012", :discipline_id=>d2.id, :year=>"2011")
Course.create(:start_date=>"01.09.2012", :finish_date=>"01.06.2013", :discipline_id=>d2.id, :year=>"2012")
c2 = Course.create(:start_date=>"05.09.2012", :finish_date=>"01.06.2013", :discipline_id=>d2.id, :year=>"2012")

Course.create(:start_date=>"01.09.2000", :finish_date=>"01.06.2001", :discipline_id=>d3.id, :year=>"2000")
Course.create(:start_date=>"08.09.2000", :finish_date=>"01.06.2001", :discipline_id=>d3.id, :year=>"2000")
Course.create(:start_date=>"01.09.2001", :finish_date=>"01.06.2002", :discipline_id=>d3.id, :year=>"2001")
Course.create(:start_date=>"08.09.2001", :finish_date=>"01.06.2002", :discipline_id=>d3.id, :year=>"2001")
Course.create(:start_date=>"01.09.2002", :finish_date=>"01.06.2003", :discipline_id=>d3.id, :year=>"2002")
Course.create(:start_date=>"08.09.2002", :finish_date=>"01.06.2003", :discipline_id=>d3.id, :year=>"2002")
Course.create(:start_date=>"01.09.2003", :finish_date=>"01.06.2004", :discipline_id=>d3.id, :year=>"2003")
Course.create(:start_date=>"08.09.2003", :finish_date=>"01.06.2004", :discipline_id=>d3.id, :year=>"2003")
Course.create(:start_date=>"01.09.2004", :finish_date=>"01.06.2004", :discipline_id=>d3.id, :year=>"2004")
Course.create(:start_date=>"08.09.2004", :finish_date=>"01.06.2004", :discipline_id=>d3.id, :year=>"2004")
Course.create(:start_date=>"01.09.2005", :finish_date=>"01.06.2005", :discipline_id=>d3.id, :year=>"2005")
Course.create(:start_date=>"08.09.2005", :finish_date=>"01.06.2005", :discipline_id=>d3.id, :year=>"2005")
Course.create(:start_date=>"01.09.2006", :finish_date=>"01.06.2007", :discipline_id=>d3.id, :year=>"2006")
Course.create(:start_date=>"08.09.2006", :finish_date=>"01.06.2007", :discipline_id=>d3.id, :year=>"2006")
Course.create(:start_date=>"01.09.2007", :finish_date=>"01.06.2008", :discipline_id=>d3.id, :year=>"2007")
Course.create(:start_date=>"08.09.2007", :finish_date=>"01.06.2008", :discipline_id=>d3.id, :year=>"2007")
Course.create(:start_date=>"01.09.2008", :finish_date=>"01.06.2009", :discipline_id=>d3.id, :year=>"2008")
Course.create(:start_date=>"08.09.2008", :finish_date=>"01.06.2009", :discipline_id=>d3.id, :year=>"2008")
Course.create(:start_date=>"01.09.2009", :finish_date=>"01.06.2010", :discipline_id=>d3.id, :year=>"2009")
Course.create(:start_date=>"08.09.2009", :finish_date=>"01.06.2010", :discipline_id=>d3.id, :year=>"2009")
Course.create(:start_date=>"01.09.2010", :finish_date=>"01.06.2011", :discipline_id=>d3.id, :year=>"2010")
Course.create(:start_date=>"08.09.2010", :finish_date=>"01.06.2011", :discipline_id=>d3.id, :year=>"2010")
Course.create(:start_date=>"01.09.2011", :finish_date=>"01.06.2012", :discipline_id=>d3.id, :year=>"2011")
Course.create(:start_date=>"08.09.2011", :finish_date=>"01.06.2012", :discipline_id=>d3.id, :year=>"2011")
Course.create(:start_date=>"01.09.2012", :finish_date=>"01.06.2013", :discipline_id=>d3.id, :year=>"2012")
c3 = Course.create(:start_date=>"08.09.2012", :finish_date=>"01.06.2013", :discipline_id=>d3.id, :year=>"2012")

Course.create(:start_date=>"01.09.2000", :finish_date=>"01.06.2001", :discipline_id=>d4.id, :year=>"2000")
Course.create(:start_date=>"06.09.2000", :finish_date=>"01.06.2001", :discipline_id=>d4.id, :year=>"2000")
Course.create(:start_date=>"01.09.2001", :finish_date=>"01.06.2002", :discipline_id=>d4.id, :year=>"2001")
Course.create(:start_date=>"06.09.2001", :finish_date=>"01.06.2002", :discipline_id=>d4.id, :year=>"2001")
Course.create(:start_date=>"01.09.2002", :finish_date=>"01.06.2003", :discipline_id=>d4.id, :year=>"2002")
Course.create(:start_date=>"06.09.2002", :finish_date=>"01.06.2003", :discipline_id=>d4.id, :year=>"2002")
Course.create(:start_date=>"01.09.2003", :finish_date=>"01.06.2004", :discipline_id=>d4.id, :year=>"2003")
Course.create(:start_date=>"06.09.2003", :finish_date=>"01.06.2004", :discipline_id=>d4.id, :year=>"2003")
Course.create(:start_date=>"01.09.2004", :finish_date=>"01.06.2004", :discipline_id=>d4.id, :year=>"2004")
Course.create(:start_date=>"06.09.2004", :finish_date=>"01.06.2004", :discipline_id=>d4.id, :year=>"2004")
Course.create(:start_date=>"01.09.2005", :finish_date=>"01.06.2005", :discipline_id=>d4.id, :year=>"2005")
Course.create(:start_date=>"06.09.2005", :finish_date=>"01.06.2005", :discipline_id=>d4.id, :year=>"2005")
Course.create(:start_date=>"01.09.2006", :finish_date=>"01.06.2007", :discipline_id=>d4.id, :year=>"2006")
Course.create(:start_date=>"06.09.2006", :finish_date=>"01.06.2007", :discipline_id=>d4.id, :year=>"2006")
Course.create(:start_date=>"01.09.2007", :finish_date=>"01.06.2008", :discipline_id=>d4.id, :year=>"2007")
Course.create(:start_date=>"06.09.2007", :finish_date=>"01.06.2008", :discipline_id=>d4.id, :year=>"2007")
Course.create(:start_date=>"01.09.2008", :finish_date=>"01.06.2009", :discipline_id=>d4.id, :year=>"2008")
Course.create(:start_date=>"06.09.2008", :finish_date=>"01.06.2009", :discipline_id=>d4.id, :year=>"2008")
Course.create(:start_date=>"01.09.2009", :finish_date=>"01.06.2010", :discipline_id=>d4.id, :year=>"2009")
Course.create(:start_date=>"06.09.2009", :finish_date=>"01.06.2010", :discipline_id=>d4.id, :year=>"2009")
Course.create(:start_date=>"01.09.2010", :finish_date=>"01.06.2011", :discipline_id=>d4.id, :year=>"2010")
Course.create(:start_date=>"06.09.2010", :finish_date=>"01.06.2011", :discipline_id=>d4.id, :year=>"2010")
Course.create(:start_date=>"01.09.2011", :finish_date=>"01.06.2012", :discipline_id=>d4.id, :year=>"2011")
Course.create(:start_date=>"06.09.2011", :finish_date=>"01.06.2012", :discipline_id=>d4.id, :year=>"2011")
Course.create(:start_date=>"01.09.2012", :finish_date=>"01.06.2013", :discipline_id=>d4.id, :year=>"2012")
Course.create(:start_date=>"06.09.2012", :finish_date=>"01.06.2013", :discipline_id=>d4.id, :year=>"2012")

Course.create(:start_date=>"01.09.2000", :finish_date=>"01.06.2001", :discipline_id=>d5.id, :year=>"2000")
Course.create(:start_date=>"15.09.2000", :finish_date=>"01.06.2001", :discipline_id=>d5.id, :year=>"2000")
Course.create(:start_date=>"01.09.2001", :finish_date=>"01.06.2002", :discipline_id=>d5.id, :year=>"2001")
Course.create(:start_date=>"15.09.2001", :finish_date=>"01.06.2002", :discipline_id=>d5.id, :year=>"2001")
Course.create(:start_date=>"01.09.2002", :finish_date=>"01.06.2003", :discipline_id=>d5.id, :year=>"2002")
Course.create(:start_date=>"15.09.2002", :finish_date=>"01.06.2003", :discipline_id=>d5.id, :year=>"2002")
Course.create(:start_date=>"01.09.2003", :finish_date=>"01.06.2004", :discipline_id=>d5.id, :year=>"2003")
Course.create(:start_date=>"15.09.2003", :finish_date=>"01.06.2004", :discipline_id=>d5.id, :year=>"2003")
Course.create(:start_date=>"01.09.2004", :finish_date=>"01.06.2004", :discipline_id=>d5.id, :year=>"2004")
Course.create(:start_date=>"15.09.2004", :finish_date=>"01.06.2004", :discipline_id=>d5.id, :year=>"2004")
Course.create(:start_date=>"01.09.2005", :finish_date=>"01.06.2005", :discipline_id=>d5.id, :year=>"2005")
Course.create(:start_date=>"15.09.2005", :finish_date=>"01.06.2005", :discipline_id=>d5.id, :year=>"2005")
Course.create(:start_date=>"01.09.2006", :finish_date=>"01.06.2007", :discipline_id=>d5.id, :year=>"2006")
Course.create(:start_date=>"15.09.2006", :finish_date=>"01.06.2007", :discipline_id=>d5.id, :year=>"2006")
Course.create(:start_date=>"01.09.2007", :finish_date=>"01.06.2008", :discipline_id=>d5.id, :year=>"2007")
Course.create(:start_date=>"15.09.2007", :finish_date=>"01.06.2008", :discipline_id=>d5.id, :year=>"2007")
Course.create(:start_date=>"01.09.2008", :finish_date=>"01.06.2009", :discipline_id=>d5.id, :year=>"2008")
Course.create(:start_date=>"15.09.2008", :finish_date=>"01.06.2009", :discipline_id=>d5.id, :year=>"2008")
Course.create(:start_date=>"01.09.2009", :finish_date=>"01.06.2010", :discipline_id=>d5.id, :year=>"2009")
Course.create(:start_date=>"15.09.2009", :finish_date=>"01.06.2010", :discipline_id=>d5.id, :year=>"2009")
Course.create(:start_date=>"01.09.2010", :finish_date=>"01.06.2011", :discipline_id=>d5.id, :year=>"2010")
Course.create(:start_date=>"15.09.2010", :finish_date=>"01.06.2011", :discipline_id=>d5.id, :year=>"2010")
Course.create(:start_date=>"01.09.2011", :finish_date=>"01.06.2012", :discipline_id=>d5.id, :year=>"2011")
Course.create(:start_date=>"15.09.2011", :finish_date=>"01.06.2012", :discipline_id=>d5.id, :year=>"2011")
Course.create(:start_date=>"01.09.2012", :finish_date=>"01.06.2013", :discipline_id=>d5.id, :year=>"2012")
Course.create(:start_date=>"15.09.2012", :finish_date=>"01.06.2013", :discipline_id=>d5.id, :year=>"2012")

puts "Create School"
s1 = School.create(:number=>"100", :second_name=>"Бугаенко", :first_name=>"Игорь", :last_name=>"Викторович", :telephone=>"84990000000", 
                   :official_first_name=>"Игорю", :official_second_name=>"Бугаенко", :official_last_name=>"Викторовичу")

s2 = School.create(:number=>"200", :second_name=>"Егармина", :first_name=>"Екатерина", :last_name=>"Сергеевна", :telephone=>"84990000000", 
                   :official_first_name=>"Екатерине", :official_second_name=>"Егарминой", :official_last_name=>"Сергеевне")

s3 = School.create(:number=>"300", :second_name=>"Сидельникова", :first_name=>"Екатерина", :last_name=>"Борисовна", :telephone=>"84990000000", 
                   :official_first_name=>"Екатерине", :official_second_name=>"Сидельниковой", :official_last_name=>"Борисовне")

School.create(:number=>"400", :second_name=>"Дорофеев", :first_name=>"Сергей", :last_name=>"Игоревич", :telephone=>"84990000000", 
              :official_first_name=>"Сергею", :official_second_name=>"Дорофееву", :official_last_name=>"Игоревичу")

School.create(:number=>"500", :second_name=>"Теплов", :first_name=>"Виталий", :last_name=>"Валерьевич", :telephone=>"84990000000", 
              :official_first_name=>"Виталию", :official_second_name=>"Теплову", :official_last_name=>"Валерьевичу")

School.create(:number=>"600", :second_name=>"Тишин", :first_name=>"Денис", :last_name=>"Алексеевич", :telephone=>"84990000000", 
              :official_first_name=>"Денису", :official_second_name=>"Тишину", :official_last_name=>"Алексеевичу")

School.create(:number=>"700", :second_name=>"Чикин", :first_name=>"Иван", :last_name=>"Николаевич", :telephone=>"84990000000", 
              :official_first_name=>"Ивану", :official_second_name=>"Чикину", :official_last_name=>"Николаевичу")

puts "Create SchoolGroups"
SchoolGroup.create(:number=>"10а", :year=>"2006", :school_id=>s1.id, :stype=>false)
SchoolGroup.create(:number=>"10б", :year=>"2006", :school_id=>s1.id, :stype=>false)
SchoolGroup.create(:number=>"11а", :year=>"2006", :school_id=>s1.id, :stype=>true)
SchoolGroup.create(:number=>"11б", :year=>"2006", :school_id=>s1.id, :stype=>false)
SchoolGroup.create(:number=>"10а", :year=>"2007", :school_id=>s1.id, :stype=>false)
SchoolGroup.create(:number=>"10б", :year=>"2007", :school_id=>s1.id, :stype=>true)
SchoolGroup.create(:number=>"11а", :year=>"2007", :school_id=>s1.id, :stype=>false)
SchoolGroup.create(:number=>"11б", :year=>"2007", :school_id=>s1.id, :stype=>false)
SchoolGroup.create(:number=>"10а", :year=>"2008", :school_id=>s1.id, :stype=>false)
SchoolGroup.create(:number=>"10б", :year=>"2008", :school_id=>s1.id, :stype=>false)
SchoolGroup.create(:number=>"11а", :year=>"2008", :school_id=>s1.id, :stype=>false)
SchoolGroup.create(:number=>"11б", :year=>"2008", :school_id=>s1.id, :stype=>false)
SchoolGroup.create(:number=>"10а", :year=>"2009", :school_id=>s1.id, :stype=>true)
SchoolGroup.create(:number=>"10б", :year=>"2009", :school_id=>s1.id, :stype=>false)
SchoolGroup.create(:number=>"11а", :year=>"2009", :school_id=>s1.id, :stype=>false)
SchoolGroup.create(:number=>"11б", :year=>"2009", :school_id=>s1.id, :stype=>false)
SchoolGroup.create(:number=>"10а", :year=>"2010", :school_id=>s1.id, :stype=>false)
SchoolGroup.create(:number=>"10б", :year=>"2010", :school_id=>s1.id, :stype=>false)
SchoolGroup.create(:number=>"11а", :year=>"2010", :school_id=>s1.id, :stype=>true)
SchoolGroup.create(:number=>"11б", :year=>"2010", :school_id=>s1.id, :stype=>false)
SchoolGroup.create(:number=>"10а", :year=>"2011", :school_id=>s1.id, :stype=>false)
SchoolGroup.create(:number=>"10б", :year=>"2011", :school_id=>s1.id, :stype=>false)
SchoolGroup.create(:number=>"11а", :year=>"2011", :school_id=>s1.id, :stype=>false)
SchoolGroup.create(:number=>"11б", :year=>"2011", :school_id=>s1.id, :stype=>true)
g1 = SchoolGroup.create(:number=>"10а", :year=>"2012", :school_id=>s1.id, :stype=>false)
SchoolGroup.create(:number=>"10б", :year=>"2012", :school_id=>s1.id, :stype=>false)
SchoolGroup.create(:number=>"11а", :year=>"2012", :school_id=>s1.id, :stype=>false)
SchoolGroup.create(:number=>"11б", :year=>"2012", :school_id=>s1.id, :stype=>false)

SchoolGroup.create(:number=>"10а", :year=>"2006", :school_id=>s2.id, :stype=>false)
SchoolGroup.create(:number=>"10б", :year=>"2006", :school_id=>s2.id, :stype=>false)
SchoolGroup.create(:number=>"11а", :year=>"2006", :school_id=>s2.id, :stype=>true)
SchoolGroup.create(:number=>"11б", :year=>"2006", :school_id=>s2.id, :stype=>false)
SchoolGroup.create(:number=>"10а", :year=>"2007", :school_id=>s2.id, :stype=>false)
SchoolGroup.create(:number=>"10б", :year=>"2007", :school_id=>s2.id, :stype=>true)
SchoolGroup.create(:number=>"11а", :year=>"2007", :school_id=>s2.id, :stype=>false)
SchoolGroup.create(:number=>"11б", :year=>"2007", :school_id=>s2.id, :stype=>false)
SchoolGroup.create(:number=>"10а", :year=>"2008", :school_id=>s2.id, :stype=>false)
SchoolGroup.create(:number=>"10б", :year=>"2008", :school_id=>s2.id, :stype=>false)
SchoolGroup.create(:number=>"11а", :year=>"2008", :school_id=>s2.id, :stype=>false)
SchoolGroup.create(:number=>"11б", :year=>"2008", :school_id=>s2.id, :stype=>false)
SchoolGroup.create(:number=>"10а", :year=>"2009", :school_id=>s2.id, :stype=>true)
SchoolGroup.create(:number=>"10б", :year=>"2009", :school_id=>s2.id, :stype=>false)
SchoolGroup.create(:number=>"11а", :year=>"2009", :school_id=>s2.id, :stype=>false)
SchoolGroup.create(:number=>"11б", :year=>"2009", :school_id=>s2.id, :stype=>false)
SchoolGroup.create(:number=>"10а", :year=>"2010", :school_id=>s2.id, :stype=>false)
SchoolGroup.create(:number=>"10б", :year=>"2010", :school_id=>s2.id, :stype=>false)
SchoolGroup.create(:number=>"11а", :year=>"2010", :school_id=>s2.id, :stype=>true)
SchoolGroup.create(:number=>"11б", :year=>"2010", :school_id=>s2.id, :stype=>false)
SchoolGroup.create(:number=>"10а", :year=>"2011", :school_id=>s2.id, :stype=>false)
SchoolGroup.create(:number=>"10б", :year=>"2011", :school_id=>s2.id, :stype=>false)
SchoolGroup.create(:number=>"11а", :year=>"2011", :school_id=>s2.id, :stype=>false)
SchoolGroup.create(:number=>"11б", :year=>"2011", :school_id=>s2.id, :stype=>true)
SchoolGroup.create(:number=>"10а", :year=>"2012", :school_id=>s2.id, :stype=>false)
SchoolGroup.create(:number=>"10б", :year=>"2012", :school_id=>s2.id, :stype=>false)
SchoolGroup.create(:number=>"11а", :year=>"2012", :school_id=>s2.id, :stype=>false)
g2 = SchoolGroup.create(:number=>"11б", :year=>"2012", :school_id=>s2.id, :stype=>false)

SchoolGroup.create(:number=>"10а", :year=>"2006", :school_id=>s3.id, :stype=>false)
SchoolGroup.create(:number=>"10б", :year=>"2006", :school_id=>s3.id, :stype=>false)
SchoolGroup.create(:number=>"11а", :year=>"2006", :school_id=>s3.id, :stype=>true)
SchoolGroup.create(:number=>"11б", :year=>"2006", :school_id=>s3.id, :stype=>false)
SchoolGroup.create(:number=>"10а", :year=>"2007", :school_id=>s3.id, :stype=>false)
SchoolGroup.create(:number=>"10б", :year=>"2007", :school_id=>s3.id, :stype=>true)
SchoolGroup.create(:number=>"11а", :year=>"2007", :school_id=>s3.id, :stype=>false)
SchoolGroup.create(:number=>"11б", :year=>"2007", :school_id=>s3.id, :stype=>false)
SchoolGroup.create(:number=>"10а", :year=>"2008", :school_id=>s3.id, :stype=>false)
SchoolGroup.create(:number=>"10б", :year=>"2008", :school_id=>s3.id, :stype=>false)
SchoolGroup.create(:number=>"11а", :year=>"2008", :school_id=>s3.id, :stype=>false)
SchoolGroup.create(:number=>"11б", :year=>"2008", :school_id=>s3.id, :stype=>false)
SchoolGroup.create(:number=>"10а", :year=>"2009", :school_id=>s3.id, :stype=>true)
SchoolGroup.create(:number=>"10б", :year=>"2009", :school_id=>s3.id, :stype=>false)
SchoolGroup.create(:number=>"11а", :year=>"2009", :school_id=>s3.id, :stype=>false)
SchoolGroup.create(:number=>"11б", :year=>"2009", :school_id=>s3.id, :stype=>false)
SchoolGroup.create(:number=>"10а", :year=>"2010", :school_id=>s3.id, :stype=>false)
SchoolGroup.create(:number=>"10б", :year=>"2010", :school_id=>s3.id, :stype=>false)
SchoolGroup.create(:number=>"11а", :year=>"2010", :school_id=>s3.id, :stype=>true)
SchoolGroup.create(:number=>"11б", :year=>"2010", :school_id=>s3.id, :stype=>false)
SchoolGroup.create(:number=>"10а", :year=>"2011", :school_id=>s3.id, :stype=>false)
SchoolGroup.create(:number=>"10б", :year=>"2011", :school_id=>s3.id, :stype=>false)
SchoolGroup.create(:number=>"11а", :year=>"2011", :school_id=>s3.id, :stype=>false)
SchoolGroup.create(:number=>"11б", :year=>"2011", :school_id=>s3.id, :stype=>true)
SchoolGroup.create(:number=>"10а", :year=>"2012", :school_id=>s3.id, :stype=>false)
SchoolGroup.create(:number=>"10б", :year=>"2012", :school_id=>s3.id, :stype=>false)
SchoolGroup.create(:number=>"11а", :year=>"2012", :school_id=>s3.id, :stype=>false)
g3 = SchoolGroup.create(:number=>"11б", :year=>"2012", :school_id=>s3.id, :stype=>false)

puts "Create Prices"
p1 = Price.create(:value => "4980", :russian_text => "четыре тысячи девятьсот восемьдесят")
p2 = Price.create(:value => "5000", :russian_text => "пять тысяч")
Price.create(:value => "7500", :russian_text => "семь тысяч пятьсот")
Price.create(:value => "7600", :russian_text => "семь тысяч шесот")
Price.create(:value => "10000", :russian_text => "десять тысяч")
Price.create(:value => "11400", :russian_text => "одиннадцать тысяч четыреста")
Price.create(:value => "12500", :russian_text => "двенадцать тысяч пятьсот")
Price.create(:value => "13000", :russian_text => "тринадцать тысяч")
Price.create(:value => "15000", :russian_text => "пятнадцать тысяч")
Price.create(:value => "16500", :russian_text => "шеснадцать тысяч пятьсот")
Price.create(:value => "17500", :russian_text => "семнадцать тысяч пятьсот")
Price.create(:value => "18200", :russian_text => "восемнадцать тысяч двести")

puts "Create Schoolkids"
@sk1 = Schoolkid.new(:first_name=>"Антон", :second_name=>"Ахмылов", :last_name=>"Юрьевич", :birthday=>"23.10.1990", :male=>"1", :addres=>"не указан", 
                     :telephone=>"84990000000", :school_group_id=>g1.id)
p @sk1.save
sk2 = Schoolkid.new(:first_name=>"Максим", :second_name=>"Войнов", :last_name=>"Александрович", :birthday=>"7.05.1990", :male=>"1", :addres=>"не указан", 
                    :telephone=>"84990000000", :school_group_id=>g1.id)
p sk2.save
sk3 = Schoolkid.new(:first_name=>"Сергей", :second_name=>"Дорофеев", :last_name=>"Иванович", :birthday=>"15.08.1990", :male=>"1", :addres=>"не указан", 
                    :telephone=>"84990000000", :school_group_id=>g1.id)
p sk3.save
sk4 = Schoolkid.new(:first_name=>"Андрей", :second_name=>"Дьяченков", :last_name=>"Александрович", :birthday=>"13.12.1990", :male=>"1",:addres=>"не указан",
                    :telephone=>"84990000000", :school_group_id=>g1.id)
p sk4.save
sk5 = Schoolkid.new(:first_name=>"Антон", :second_name=>"Куликов", :last_name=>"Валериевич", :birthday=>"8.04.1989", :male=>"1", :addres=>"не указан", 
                    :telephone=>"84990000000", :school_group_id=>g1.id)
p sk5.save
sk6 = Schoolkid.new(:first_name=>"Иван", :second_name=>"Мазов", :last_name=>"Александрович", :birthday=>"20.8.1990", :male=>"1", :addres=>"не указан", 
                    :telephone=>"84990000000", :school_group_id=>g1.id)
p sk6.save
sk7 = Schoolkid.new(:first_name=>"Татьяна", :second_name=>"Метейко", :last_name=>"Николаевна", :birthday=>"10.02.1990", :male=>"0", :addres=>"не указан", 
                    :telephone=>"84990000000", :school_group_id=>g1.id)
p sk7.save
sk8 = Schoolkid.new(:first_name=>"Максим", :second_name=>"Моцпан", :last_name=>"Сергеевич", :birthday=>"10.02.1990", :male=>"1", :addres=>"не указан", 
                    :telephone=>"84990000000", :school_group_id=>g1.id)
p sk8.save
sk9 = Schoolkid.new(:first_name=>"Николай", :second_name=>"Орленко", :last_name=>"Иванович", :birthday=>"10.02.1990", :male=>"1", :addres=>"не указан", 
                    :telephone=>"84990000000", :school_group_id=>g1.id)
p sk9.save
sk10 = Schoolkid.new(:first_name=>"Никита", :second_name=>"Сараев", :last_name=>"Геннадьевич", :birthday=>"10.02.1990", :male=>"1", :addres=>"не указан", 
                     :telephone=>"84990000000", :school_group_id=>g1.id)
p sk10.save
sk11 = Schoolkid.new(:first_name=>"Антон", :second_name=>"Шацков", :last_name=>"Игоревич", :birthday=>"10.02.1989", :male=>"1", :addres=>"не указан", 
                     :telephone=>"84990000000", :school_group_id=>g1.id)
p sk11.save
sk12 = Schoolkid.new(:first_name=>"Александр", :second_name=>"Шинаков", :last_name=>"Николаевич", :birthday=>"10.02.1990", :male=>"1", :addres=>"не указан", 
                     :telephone=>"84990000000", :school_group_id=>g1.id)
p sk12.save
g = Group.new(:number=>"8362", :course_id=>c1.id, :year=>"2012", :schoolkids=>[@sk1, sk2, sk3, sk4, sk5, sk6, sk7, sk8, sk9, sk10, sk11, sk12])
puts "Create Gruop 8362 --> #{g.save}"


sk1 = Schoolkid.new(:first_name=>"Мария", :second_name=>"Бадайкова", :last_name=>"Алексеевна", :birthday=>"8.06.1989", :male=>"0", :addres=>"не указан", 
                    :telephone=>"84990000000", :school_group_id=>g2.id)
p sk1.save
sk2 = Schoolkid.new(:first_name=>"Анна", :second_name=>"Викторова", :last_name=>"Владимировна", :birthday=>"8.06.1990", :male=>"0", :addres=>"не указан", 
                    :telephone=>"84990000000", :school_group_id=>g2.id)
p sk2.save
sk3 = Schoolkid.new(:first_name=>"Павел", :second_name=>"Горчилин", :last_name=>"Игоревич", :birthday=>"12.05.1990", :male=>"1", :addres=>"не указан", 
                    :telephone=>"84990000000", :school_group_id=>g2.id)
p sk3.save
sk4 = Schoolkid.new(:first_name=>"Станислав", :second_name=>"Гусейнов", :last_name=>"Юрьевич", :birthday=>"8.06.1990", :male=>"1", :addres=>"не указан", 
                    :telephone=>"84990000000", :school_group_id=>g2.id)
p sk4.save
sk5 = Schoolkid.new(:first_name=>"Михаил", :second_name=>"Демин", :last_name=>"Викторович", :birthday=>"25.07.1990", :male=>"1", :addres=>"не указан", 
                    :telephone=>"84990000000", :school_group_id=>g2.id)
p sk5.save
sk6 = Schoolkid.new(:first_name=>"Михаил", :second_name=>"Золин", :last_name=>"Валерьевич", :birthday=>"6.08.1989", :male=>"1", :addres=>"не указан", 
                    :telephone=>"84990000000", :school_group_id=>g2.id)
p sk6.save
sk7 = Schoolkid.new(:first_name=>"Алексей", :second_name=>"Ипатов", :last_name=>"Андреевич", :birthday=>"17.03.1990", :male=>"1", :addres=>"не указан", 
                    :telephone=>"84990000000", :school_group_id=>g2.id)
p sk7.save
sk8 = Schoolkid.new(:first_name=>"Петр", :second_name=>"Караваев", :last_name=>"Дмитриевич", :birthday=>"10.01.1990", :male=>"1", :addres=>"не указан", 
                    :telephone=>"84990000000", :school_group_id=>g2.id)
p sk8.save
sk9 = Schoolkid.new(:first_name=>"Татьяна", :second_name=>"Кау", :last_name=>"Георгиевна", :birthday=>"18.07.1989", :male=>"0", :addres=>"не указан", 
                    :telephone=>"84990000000", :school_group_id=>g2.id)
p sk9.save
sk10 = Schoolkid.new(:first_name=>"Алина", :second_name=>"Кожина", :last_name=>"Сергеевна", :birthday=>"8.02.1990", :male=>"0", :addres=>"не указан", 
                     :telephone=>"84990000000", :school_group_id=>g2.id)
p sk10.save
sk11 = Schoolkid.new(:first_name=>"Сергей", :second_name=>"Пономарев", :last_name=>"Павлович", :birthday=>"22.11.1990", :male=>"1", :addres=>"не указан", 
                     :telephone=>"84990000000", :school_group_id=>g2.id)
p sk11.save
sk12 = Schoolkid.new(:first_name=>"Юлия", :second_name=>"Рыбакова", :last_name=>"Александровна", :birthday=>"14.1.1990", :male=>"0", :addres=>"не указан", 
                     :telephone=>"84990000000", :school_group_id=>g2.id)
p sk12.save
sk13 = Schoolkid.new(:first_name=>"Алексей", :second_name=>"Скоторенко", :last_name=>"Сергеевич", :birthday=>"9.12.1990", :male=>"1", :addres=>"не указан",
                     :telephone=>"84990000000", :school_group_id=>g2.id)
p sk13.save
sk14 = Schoolkid.new(:first_name=>"Борис", :second_name=>"Смолянинов", :last_name=>"Николаевич", :birthday=>"16.04.1990", :male=>"1", :addres=>"не указан",
                     :telephone=>"84990000000", :school_group_id=>g2.id)
p sk14.save
g = Group.new(:number=>"7562", :course_id=>c2.id, :year=>"2012", :schoolkids=>[sk1, sk2, sk3, sk4, sk5, sk6, sk7, sk8, sk9, sk10, sk11, sk12, sk13, sk14])
puts "Create Gruop 7562 --> #{g.save}"

sk1 = Schoolkid.new(:first_name=>"Асланбек", :second_name=>"Абазов", :last_name=>"Эдуардович", :birthday=>"6.08.1990", :male=>"1", :addres=>"не указан",
                    :telephone=>"84990000000", :school_group_id=>g3.id)
p sk1.save
sk2 = Schoolkid.new(:first_name=>"Яна", :second_name=>"Баева", :last_name=>"Робертовна", :birthday=>"28.10.1990", :male=>"0", :addres=>"не указан",
                    :telephone=>"84990000000", :school_group_id=>g3.id)
p sk2.save
sk3 = Schoolkid.new(:first_name=>"Михаил", :second_name=>"Балякин", :last_name=>"Сергеевич", :birthday=>"18.04.1990", :male=>"1", :addres=>"не указан",
                    :telephone=>"84990000000", :school_group_id=>g3.id)
p sk3.save
sk4 = Schoolkid.new(:first_name=>"Ирина", :second_name=>"Вернер", :last_name=>"Алексеевна", :birthday=>"22.09.1990", :male=>"0", :addres=>"не указан",
                    :telephone=>"84990000000", :school_group_id=>g3.id)
p sk4.save
sk5 = Schoolkid.new(:first_name=>"Ирина", :second_name=>"Галдина", :last_name=>"Николаевна", :birthday=>"17.01.1990", :male=>"0", :addres=>"не указан",
                    :telephone=>"84990000000", :school_group_id=>g3.id)
p sk5.save
sk6 = Schoolkid.new(:first_name=>"Александр", :second_name=>"Киселев", :last_name=>"Александрович", :birthday=>"7.01.1990", :male=>"1", :addres=>"не указан",
                    :telephone=>"84990000000", :school_group_id=>g3.id)
p sk6.save
sk7 = Schoolkid.new(:first_name=>"Михаил", :second_name=>"Костенчук", :last_name=>"Ильич", :birthday=>"17.9.1989", :male=>"1", :addres=>"не указан",
                    :telephone=>"84990000000", :school_group_id=>g3.id)
p sk7.save
sk8 = Schoolkid.new(:first_name=>"Артем", :second_name=>"Лакишик", :last_name=>"Владимирович", :birthday=>"2.05.1990", :male=>"1", :addres=>"не указан",
                    :telephone=>"84990000000", :school_group_id=>g3.id)
p sk8.save 
sk9 = Schoolkid.new(:first_name=>"Светлана", :second_name=>"Львова", :last_name=>"Алексеевна", :birthday=>"9.07.1990", :male=>"0", :addres=>"не указан",
                    :telephone=>"84990000000", :school_group_id=>g3.id)
p sk9.save
sk10 = Schoolkid.new(:first_name=>"Анна", :second_name=>"Молчановаа", :last_name=>"Михайловна", :birthday=>"23.12.1990", :male=>"0", :addres=>"не указан",
                     :telephone=>"84990000000", :school_group_id=>g3.id)
p sk10.save
sk11 = Schoolkid.new(:first_name=>"Марат", :second_name=>"Нафиков", :last_name=>"Артурович", :birthday=>"15.03.1990", :male=>"1", :addres=>"не указан",
                     :telephone=>"84990000000", :school_group_id=>g3.id)
p sk11.save
sk12 = Schoolkid.new(:first_name=>"Сергей", :second_name=>"Панасюк", :last_name=>"Алексеевич", :birthday=>"19.07.1990", :male=>"1", :addres=>"не указан",
                     :telephone=>"84990000000", :school_group_id=>g3.id)
p sk12.save
sk13 = Schoolkid.new(:first_name=>"Роман", :second_name=>"Перелет", :last_name=>"Владимирович", :birthday=>"7.02.1990", :male=>"1", :addres=>"не указан",
                     :telephone=>"84990000000", :school_group_id=>g3.id)
p sk13.save
sk14 = Schoolkid.new(:first_name=>"Антон", :second_name=>"Сергеев", :last_name=>"Андреевич", :birthday=>"9.6.1990", :male=>"1", :addres=>"не указан",
                     :telephone=>"84990000000", :school_group_id=>g3.id)
p sk14.save
sk15 = Schoolkid.new(:first_name=>"Александра", :second_name=>"Уколова", :last_name=>"Владимировна", :birthday=>"15.7.1990", :male=>"0", :addres=>"не указан",
                     :telephone=>"84990000000", :school_group_id=>g3.id)
sk16 = Schoolkid.new(:first_name=>"Андрей", :second_name=>"Чевелев", :last_name=>"Сергеевич", :birthday=>"18.4.1990", :male=>"1", :addres=>"не указан",
                     :telephone=>"84990000000", :school_group_id=>g3.id)
p sk16.save 
sk17 = Schoolkid.new(:first_name=>"Алексей", :second_name=>"Юдин", :last_name=>"Александрович", :birthday=>"22.9.1990", :male=>"1", :addres=>"не указан",
                     :telephone=>"84990000000", :school_group_id=>g3.id)
p sk17.save

g = Group.new(:number=>"8361", :course_id=>c3.id, :year=>"2012", :schoolkids=>[sk1, sk2, sk3, sk4, sk5, sk6, sk7, sk8, sk9, sk10, sk11, sk12, sk13, sk14, 
                                                                               sk15, sk15, sk16, sk17])
puts "Create Gruop 8361 --> #{g.save}"

puts "Create Contract"
cont = Contract.new(:number=>"11/22", :first_sum=>1, :second_sum=>2, :schoolkid_id=>@sk1.id, :education_type=>"1", :ctype=>"1", 
                    :first_name=>"Иван", :second_name=>"Иванов", :last_name=>"Иванович", :passport_date=>"5.7.1990", :passport_number=>"12345", 
                    :passport_series=>"9999", :passport_place=>"Место выдачи", :city=>"Город", :address=>"не указан", :telephone=>"849991234567", 
                    :period=>"1", :disciplines=>[d1, d2, d3])
puts cont.save


cont = Contract.new(:number=>"22/33", :first_sum=>3, :second_sum=>4, :schoolkid_id=>@sk1.id, :education_type=>"1", :ctype=>"0", 
                    :first_name=>"Иван", :second_name=>"Иванов", :last_name=>"Иванович", :passport_date=>"5.7.1990", :passport_number=>"12345", 
                    :passport_series=>"9999", :passport_place=>"Место выдачи", :city=>"Город", :address=>"не указан", :telephone=>"849991234567", 
                    :period=>"1", :disciplines=>[d1, d2, d3])
puts cont.save
