package com.aeontanvir.mvc.service;

import com.aeontanvir.mvc.model.Cart;
import com.aeontanvir.mvc.model.CartItem;

public interface CartItemService {

    void addCartItem(CartItem cartItem);

    void removeCartItem(CartItem cartItem);

    void removeAllCartItems(Cart cart);

    CartItem getCartItemByProductId(int productId);

}
