package jp.co.axiz.sss.service.impl;

import org.springframework.stereotype.Service;
import jp.co.axiz.sss.service.UserService;

@Service
public class UserServiceImpl implements UserService {

    @Override
    public boolean validateUser(String id, String password) {
        // Dummy validation logic, replace with actual logic
        return "admin".equals(id) && "password".equals(password);
    }
}
