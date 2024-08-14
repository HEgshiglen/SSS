package jp.co.axiz.sss.dao;

public interface UserDao {
    boolean checkUserCredentials(String id, String password);
}
