public class A1 {
    
    public A1()
    {
        system.debug('constructor A1');
    }
    
    public A1(string name)
    {
        system.debug('parameterized constructor with parameter name:'+name);
    }
    
    public static void staticdisplay()
    {
        system.debug('static method display');
    }
    
    public void notstaticdisplay()
    {
        system.debug('non-static method display - through object creation');
    }
    
    public integer age;
    public string location;
    
    public void getdetails()
    {
        system.debug('accessmodifier -- age: '+age+'location: '+location);
    }

    private integer age1;
    private string location1;
    
    public void getage1(integer age11)
    {
        age1=age11;
    }
    public void getlocation1(string location11)
    {
        location1=location11;
    }
  
    public void getdetails1()
    {
        system.debug('accessmodifier -- age: '+age1+'location: '+location1);
    }
    
    

}