package com.mamamiya.infrastructure.mogodb;

import org.springframework.boot.autoconfigure.mongo.MongoProperties;
import org.springframework.context.annotation.Configuration;

@Configuration
public class MongoConfig {
    private MongoProperties properties = new MongoProperties();
}
