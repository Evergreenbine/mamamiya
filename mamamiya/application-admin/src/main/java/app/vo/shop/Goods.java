package app.vo.shop;

public class Goods extends Brand {
        /* 商品id*/
        private Integer gid;
        /* 商品名字*/
        private String gname;
        /* 商品价格*/
//        private double price;
        /* 商品图片*/
        private String img;
        /* 商品库存*/
        private Integer store;
        /* 上架时间*/
        private String createtime;
        /* 推荐语*/
        private String recommend;
        /* 评分*/
        private Integer rate;

        /* 分类 */
        private String cata;
        /* 阶段 1段 2段*/
        private String stage;
        /* 年龄段*/
        private String age;
        /* 商品分类*/
        private Integer gcid;

        public Goods() {
        }

        public Goods(int bid, String bname) {
                super(bid, bname);
        }


        public Integer getGcid() {
                return gcid;
        }

        public void setGcid(Integer gcid) {
                this.gcid = gcid;
        }

        public Integer getGid() {
                return gid;
        }

        public void setGid(Integer gid) {
                this.gid = gid;
        }

        public String getGname() {
                return gname;
        }

        public void setGname(String gname) {
                this.gname = gname;
        }



        public String getImg() {
                return img;
        }

        public void setImg(String img) {
                this.img = img;
        }

        public Integer getStore() {
                return store;
        }

        public void setStore(Integer store) {
                this.store = store;
        }

        public String getCreatetime() {
                return createtime;
        }

        public void setCreatetime(String createtime) {
                this.createtime = createtime;
        }

        public String getRecommend() {
                return recommend;
        }

        public void setRecommend(String recommend) {
                this.recommend = recommend;
        }

        public Integer getRate() {
                return rate;
        }

        public void setRate(Integer rate) {
                this.rate = rate;
        }

        public String getCata() {
                return cata;
        }

        public void setCata(String cata) {
                this.cata = cata;
        }

        public String getStage() {
                return stage;
        }

        public void setStage(String stage) {
                this.stage = stage;
        }

        public String getAge() {
                return age;
        }

        public void setAge(String age) {
                this.age = age;
        }
}
