package service;

import model.Product;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductServiceImpl implements ProductService {
    private static Map<Integer,Product> products;

    static {
        products = new HashMap<>();
        products.put(1,new Product(1,"Iphone 11",100,"New","Apple"));
        products.put(2,new Product(2,"Iphone 11 pro max",200,"New","Apple"));
        products.put(3,new Product(3,"Iphone 12",300,"New","Apple"));
        products.put(4,new Product(4,"Iphone 12 pro max",400,"New","Apple"));
        products.put(5,new Product(5,"Iphone 13 pro max",1000,"New","Apple"));
    }
    @Override
    public List<Product> findAll() {
        return new ArrayList<>(products.values());
    }

    @Override
    public void save(Product product) {
        products.put(product.getId(),product);
    }

    @Override
    public Product findById(int id) {
        return products.get(id);
    }

    @Override
    public void update(int id, Product product) {
        products.put(id,product);
    }

    @Override
    public void remove(int id) {
        products.remove(id);
    }
}
