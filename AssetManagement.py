from tkinter import *

def Enter():
    pass

def SignUp():
    pass

def Register():
    root1.destroy()
    global root2
    root2 = Tk()
    root2.title("Register Page")
    root2.geometry("1000x800")
    global s3,s4,s5,s6,s7
    s3 = StringVar()
    s4 = StringVar()
    s5 = StringVar()
    s6 = StringVar()
    s7 = StringVar()
    v1 = IntVar()
    label1 = Label(root2,text="Enter UserID     ",font=("Times New Roman",15))
    label1.place(x=300,y=150,height=25,width=135)
    text1 = Entry(root2,textvariable=s3)
    text1.place(x=450,y=150,height=25,width=250)
    label2 = Label(root2,text="Enter password   ",font=("Times New Roman",15))
    label2.place(x=300,y=200,height=25,width=135)
    text2 = Entry(root2,textvariable=s4,show="*")
    text2.place(x=450,y=200,height=25,width=250)
    label3 = Label(root2,text="Repeat password",font=("Times New Roman",15))
    label3.place(x=300,y=250,height=25,width=135)
    text3 = Entry(root2,textvariable=s5,show="*")
    text3.place(x=450,y=250,height=25,width=250)
    label4 = Label(root2,text="Enter EmailID    ",font=("Times New Roman",15))
    label4.place(x=300,y=300,height=25,width=150)
    text4 = Entry(root2,textvariable=s6)
    text4.place(x=450,y=300,height=25,width=250)
    label5 = Label(root2,text="Enter Phone no   ",font=("Times New Roman",15))
    label5.place(x=300,y=350,height=25,width=150)
    text5 = Entry(root2,textvariable=s7)
    text5.place(x=450,y=350,height=25,width=250)
    label6 = Label(root2,text="Your details:    ",font=("Times New Roman",15))
    label6.place(x=300,y=400,height=25,width=135)
    r1 = Radiobutton(root2,text="Student           ",variable=v1,value=1,font=("Times New Roman",15))
    r1.place(x=450,y=400,height=25,width=150)
    r2 = Radiobutton(root2,text="Teacher    ",variable=v1,value=2,font=("Times New Roman",15))
    r2.place(x=450,y=430,height=25,width=150)
    r3 = Radiobutton(root2,text="Lab Assitant      ",variable=v1,value=3,font=("Times New Roman",15))
    r3.place(x=450,y=460,height=25,width=150)
    r4 = Radiobutton(root2,text="HOD   ",variable=v1,value=4,font=("Times New Roman",15))
    r4.place(x=450,y=490,height=25,width=150)
    r5 = Radiobutton(root2,text="Officer   ",variable=v1,value=5,font=("Times New Roman",15))
    r5.place(x=450,y=520,height=25,width=150)
    button1 = Button(root2,text="Register",command=SignUp)
    button1.place(x=470,y=575,height=50,width=100)
    
def Login():
    global root1
    root1 = Tk()
    root1.title("Login Page")
    root1.geometry("1000x800")
    global s1,s2;
    s1 = StringVar()
    s2 = StringVar()
    label1 = Label(root1,text="Enter UserID    ",font=("Times New Roman",15))
    label1.place(x=300,y=350,height=25,width=125)
    text1 = Entry(root1,textvariable=s1)
    text1.place(x=450,y=350,height=25,width=250)
    label2 = Label(root1,text="Enter password",font=("Times New Roman",15))
    label2.place(x=300,y=400,height=25,width=125)
    text2 = Entry(root1,textvariable=s2,show="*")
    text2.place(x=450,y=400,height=25,width=250)
    button1 = Button(root1,text="Login",command=Enter)
    button1.place(x=375,y=475,height=30,width=100)
    button2 = Button(root1,text="Sign Up",command=Register)
    button2.place(x=530,y=475,height=30,width=100)
    root1.mainloop()

Login()
