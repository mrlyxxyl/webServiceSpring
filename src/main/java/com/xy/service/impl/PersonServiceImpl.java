package com.xy.service.impl;

import com.xy.bean.Person;
import com.xy.bean.RespInfo;
import com.xy.service.PersonService;
import org.springframework.stereotype.Service;

import javax.jws.WebService;

/**
 * User: LiWenC
 * Date: 17-8-1
 */
@Service
@WebService(endpointInterface = "com.xy.service.PersonService")
public class PersonServiceImpl implements PersonService {
    @Override
    public RespInfo save(Person person) {
        System.out.println(person);
        RespInfo respInfo = new RespInfo();
        respInfo.setCode(1000);
        respInfo.setMessage("success");
        return respInfo;
    }
}
