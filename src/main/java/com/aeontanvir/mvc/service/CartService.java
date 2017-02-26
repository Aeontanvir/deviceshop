package com.aeontanvir.mvc.service;

import com.aeontanvir.mvc.model.Cart;

public interface CartService {
    Cart getCartById(int cartId);

    void update(Cart cart);
}
