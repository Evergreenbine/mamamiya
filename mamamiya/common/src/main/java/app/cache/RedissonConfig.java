package app.cache;


import org.springframework.boot.autoconfigure.condition.ConditionalOnProperty;
import org.springframework.context.annotation.Configuration;

@Configuration
@ConditionalOnProperty(name = "redis.redisson.enabled", havingValue = "true")
public class RedissonConfig {
}
