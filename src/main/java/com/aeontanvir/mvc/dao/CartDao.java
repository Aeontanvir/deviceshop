package com.aeontanvir.mvc.dao;

import java.io.IOException;

import com.aeontanvir.mvc.model.Cart;

public interface CartDao {

    Cart getCartById(int cartId);

    Cart validate(int cartId) throws IOException;

    void update(Cart cart);

}
