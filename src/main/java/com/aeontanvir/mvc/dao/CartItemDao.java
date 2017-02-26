package com.aeontanvir.mvc.dao;

import com.aeontanvir.mvc.model.Cart;
import com.aeontanvir.mvc.model.CartItem;

public interface CartItemDao {

    void addCartItem(CartItem cartItem);

    void removeCartItem(CartItem cartItem);

    void removeAllCartItems(Cart cart);

    CartItem getCartItemByProductId(int productId);
}
