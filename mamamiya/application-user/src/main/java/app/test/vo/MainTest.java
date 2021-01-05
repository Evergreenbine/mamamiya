package app.test.vo;

import io.jsonwebtoken.Claims;
import io.jsonwebtoken.Jws;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

public class MainTest {
    static byte[] key = new byte[]{1,2,3};
    public static void main(String[] args) {
        String username = "fudada";
        String password = "123";

        Map<String,Object> map = new HashMap<>(2);
        map.put(username,password);
        String jwt = Jwts.builder().setIssuer("http://trustyapp.com/")
                .setSubject("users/1300819380")
                .setClaims(map)
                .setExpiration(new Date(System.currentTimeMillis()+60*10000))
                .signWith(SignatureAlgorithm.HS256,key)
                .compact();

        System.out.println(jwt);



    }
}
