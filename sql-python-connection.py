import mysql.connector
mydb=mysql.connector.connect(
    host='localhost',
    user='root',
    password='',
    database='LibraryManagement'
)

print("---------------Adding Functions---------")
def addbook():
    bname=input("Enter book name:")
    bcode=input("Enter book code")
    total=input("Total Books:")
    sub=input("Enter Subject")
    data=(bname,bcode,total,sub)
    sql='insert into addbook (bname,bcode,total,sub) values (%s,%s,%s,%s)'
    c=mydb.cursor()
    c.execute(sql,data)
    mydb.commit()
    print("------------")
    print("Data entered successfully")
    main()


def issueb():
    name = input("Enter name:")
    rno  = input("Enter rno:")
    code = input("Enter book code:")
    date = input("Enter date:")
    sql  = "insert into issue (name,regno,bcode,idate) values(%s,%s,%s,%s)"
    data =(name,rno,code,date)
    c = mydb.cursor()
    c.execute(sql,data)
    mydb.commit()
    print("...............")
    print("Book issued to :",name)
    main()




def submitb():
    name = input("Enter name:")
    regno  = input("Enter rno:")
    code = input("Enter book code:")
    sdate = input("Enter date:")
    sql = "insert into submit (name,regno,bcode,sdate) values(%s,%s,%s,%s)"
    data = (name,regno,code,sdate)
    c = mydb.cursor()
    c.execute(sql,data)
    mydb.commit()
    print("...............")
    print("Book submitted from :",name)


def dbook():
    ac = input("Enter book code:")
    sql = "delete from addbook where BCODE = %s"
    data = (ac,)
    c = mydb.cursor()
    c.execute(sql,data)
    mydb.commit()
    main()


def dispbook():
    sql = "select * from addbook"
   
    c = mydb.cursor()
    c.execute("select * from addbook")
    myresult = c.fetchall()
    print()
    for i in myresult:
        print(i)
        # print("Book name:",i[0])
        # print("Book code:",i[1])
        # print("Total:",i[2])
        # print("................")
    main()


def main():
    print("""............LIBRARY MANAGEMENT.............
    1.Add book
    2.Issue book
    3.Submit book
    4.Delete book
    5.Display book
    """)
    choice = input("Enter task no:")
    print("............................")
    if(choice == '1'):
        addbook()
    elif(choice == '2'):
        issueb()
    elif(choice == '3'):
        submitb()
    elif(choice == '4'):
        dbook()
    elif(choice == '5'):
        dispbook()
    else:
        print("wrong choice")
        main()

def password():
    import random
    ps = random.randint(000000,100000)

    user = input("Enter Username: ")
    print("Your password is:",ps)

    verify = input("Enter password:")

    if verify == str(ps):
        main()
    else:
        verify != str(ps)
        print("wrong password")
        password()

password()