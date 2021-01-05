package app.utils;

import io.jsonwebtoken.Claims;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;

import java.util.Date;
import java.util.Map;

public class JwtUtil {
    private static final String TOKEN_PREFIX = "Bearer";
    private static final String CLAIM_KEY_CREATEDTIME = "CreateTime";

    private static final Long TOKEN_EXPIRATION = 1800000L;

    /* Claims are a JWT's 'body' and contain the information that the JWT creator wishes to present to the JWT recipient(s)
    *  claims 就是jwt 的 body 部分
    * */
    public static String generateToken(Map<String,Object> claims,long expirationSecond,String signKey){
        long createTime = System.currentTimeMillis();
        Date date = new Date(createTime + expirationSecond * 1000);
        claims.put(CLAIM_KEY_CREATEDTIME,createTime);
        String compact = Jwts.builder().setClaims(claims).setExpiration(date).signWith(SignatureAlgorithm.ES256, signKey).compact();
        return compact;
    }

    public static String generateToken(Map<String,Object> claims,String signkeys){
        return generateToken(claims,TOKEN_EXPIRATION,signkeys);
    }

    public static Claims parseToken(String token,String singkeys){
        if (token == null || !token.startsWith(TOKEN_PREFIX)) {
            return null;
        }

        String tokenkey = token.substring(TOKEN_PREFIX.length());
        Claims claims = null;
        try {
            claims = Jwts.parser().setSigningKey(singkeys).parseClaimsJws(tokenkey).getBody();
        }catch (Exception e){

        }
        return claims;
    }

}
