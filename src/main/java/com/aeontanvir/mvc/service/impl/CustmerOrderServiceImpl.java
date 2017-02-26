package com.aeontanvir.mvc.service.impl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aeontanvir.mvc.dao.CustomerOrderDao;
import com.aeontanvir.mvc.model.Cart;
import com.aeontanvir.mvc.model.CartItem;
import com.aeontanvir.mvc.model.CustomerOrder;
import com.aeontanvir.mvc.service.CartService;
import com.aeontanvir.mvc.service.CustomerOrderService;

import java.util.List;

@Service
public class CustmerOrderServiceImpl implements CustomerOrderService{

    @Autowired
    private CustomerOrderDao customerOrderDao;

    @Autowired
    private CartService cartService;

    public void addCustomerOrder(CustomerOrder customerOrder){
        customerOrderDao.addCustomerOrder(customerOrder);
    }

    public double getCustomerOrderGrandTotal(int cartId){
        double grandTotal = 0;
        Cart cart = cartService.getCartById(cartId);
        List<CartItem> cartItems = cart.getCartItems();

        for (CartItem item : cartItems){
            grandTotal += item.getTotalPrice();
        }

        return grandTotal;
    }

} // The End of Class;