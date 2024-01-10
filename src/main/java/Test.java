import com.example.ltw_game.dao.ProductDAO;
import com.example.ltw_game.model.Product;

import java.util.List;

public class Test {
    public static void main(String[] args) {
        ProductDAO productDAO = new ProductDAO();
        List<Product> list = productDAO.getAllProduct();
        for (Product p : list) {
            System.out.println(p);

        }
    }
}