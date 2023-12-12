package ncu.im3069.demo.app;

import org.json.*;

public class Manager{
    
    private int manager_id;
    private String name;
    private String email;
    private String password;
    private ManagerHelper nmh = ManagerHelper.getHelper();

    public Manager(int manager_id, String email, String password){

        setId(manager_id);
        setEmail(email);
        setPassword(password);
        
    }//constructor
    
    public Manager(int manager_id, String name, String email, String password){

        setId(manager_id);
        setName(name);
        setEmail(email);
        setPassword(password);
        
    }//constructor
    
    public Manager(String email, String password){

        setEmail(email);
        setPassword(password);
        
    }//constructor

    public Manager(String name, String email, String password){

        setName(name);
        setEmail(email);
        setPassword(password);
        
    }//constructor

    public void setId(int id){ manager_id = id; }
    public int getId() { return manager_id; }

    public void setName(String name){ this.name = name; }
    public String getName() { return name; }

    public void setEmail(String email){ this.email = email; }
    public String getEmail() { return email; }

    public void setPassword(String password){ this.password = password; }
    public String getPassword() { return password; }

    public JSONObject getData() {
    	JSONObject jso=new JSONObject();
        jso.put("members_id", getId());
        jso.put("name", getName());
        jso.put("email", getEmail());
        jso.put("password", getPassword());
        
        return jso;    	

    }//end JSONObject getData
    
    public JSONObject update(){
        /** 新建一個JSONObject用以儲存更新後之資料 */
        JSONObject data = new JSONObject();
        /** 取得更新資料時間（即現在之時間）之分鐘數 */
        //Calendar calendar = Calendar.getInstance();
        //this.login_times = calendar.get(Calendar.MINUTE);
        /** 計算帳戶所屬之組別 */
        //calcAccName();
        
        /** 檢查該名會員是否已經在資料庫 */
        if(this.manager_id != 0) {
            /** 若有則將目前更新後之資料更新至資料庫中 */
            //mh.updateLoginTimes(this);
            /** 透過MemberHelper物件，更新目前之會員資料置資料庫中 */
            data = nmh.update(this);
        }
        
        return data;

    }//end JSONObject update

}//end Manager
