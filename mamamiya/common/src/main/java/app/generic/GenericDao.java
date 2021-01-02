package app.generic;

public interface GenericDao  {

    <T> T Select(String statement);
}
