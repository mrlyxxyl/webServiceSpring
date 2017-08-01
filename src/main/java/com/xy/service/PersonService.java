package com.xy.service;

import com.xy.bean.Person;
import com.xy.bean.RespInfo;

import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebService;

/**
 * User: LiWenC
 * Date: 17-8-1
 */
@WebService(targetNamespace = "http://www.xy.com/webservice/person")
public interface PersonService {

    @WebMethod
    public RespInfo save(@WebParam(name = "PERSON", targetNamespace = "http://www.xy.com/webservice/person") Person person);
}
