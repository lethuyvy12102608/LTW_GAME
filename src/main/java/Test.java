import com.example.ltw_game.dao.UserDAO;

public class Test {
    public static void main(String[] args) {
        UserDAO userDAO = new UserDAO();
        System.out.println(userDAO.getUserRoleByUsername("tranthib"));

    }
}
