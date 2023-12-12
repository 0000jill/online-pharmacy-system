package ncu.im3069.demo.app;

import org.json.*;

public class Member{

    private int member_id;
    private String name;
    private String email;
    private String password;
    private int point;

    private MemberHelper mh = MemberHelper.getHelper();


    //會需要多工 overload
    //要再看會有幾個member存取頁面
    public Member(String name, String email, String password){

        setName(name);
        setEmail(email);
        setPassword(password);

    }//end contructor Member
    
    public Member(String email, String password) {
    	
        setEmail(email);
        setPassword(password);
    }//end contructor Member
    
    public Member(String name, String email, String password, int point){

        setName(name);
        setEmail(email);
        setPassword(password);
        setPoint(point);
        //update();

    }//end contructor Member

    public Member(int member_id, String name, String email, String password){

        setId(member_id);
        setName(name);
        setEmail(email);
        setPassword(password);
        //update();

    }//end contructor Member

    public Member(int member_id, String name, String email, String password, int point){

        setId(member_id);
        setName(name);
        setEmail(email);
        setPassword(password);
        setPoint(point);
        //update();

    }//end contructor Member

    public void setId(int id){ this.member_id = id; }
    public int getId() { return member_id; }

    public void setName(String name){ this.name = name; }
    public String getName() { return name; }

    public void setEmail(String email){ this.email = email; }
    public String getEmail() { return email; }

    public void setPassword(String password){ this.password = password; }
    public String getPassword() { return password; }

    public void setPoint(int point){ this.point = point; }
    public int getPoint() { return point; }


    public JSONObject update(){
        /** 新建一個JSONObject用以儲存更新後之資料 */
        JSONObject data = new JSONObject();
        /** 取得更新資料時間（即現在之時間）之分鐘數 */
        //Calendar calendar = Calendar.getInstance();
        //this.login_times = calendar.get(Calendar.MINUTE);
        /** 計算帳戶所屬之組別 */
        //calcAccName();
        
        /** 檢查該名會員是否已經在資料庫 */
        if(this.member_id != 0) {
            /** 若有則將目前更新後之資料更新至資料庫中 */
            //mh.updateLoginTimes(this);
            /** 透過MemberHelper物件，更新目前之會員資料置資料庫中 */
            data = mh.update(this);
        }
        
        return data;

    }//end JSONObject update

    public JSONObject getData(){
        /** 透過JSONObject將該名會員所需之資料全部進行封裝*/ 
        JSONObject jso = new JSONObject();
        jso.put("member_id", getId());
        jso.put("name", getName());
        jso.put("email", getEmail());
        jso.put("password", getPassword());
        jso.put("point", getPoint());
        
        return jso;

    }//end JSONObject getData

}//end Member