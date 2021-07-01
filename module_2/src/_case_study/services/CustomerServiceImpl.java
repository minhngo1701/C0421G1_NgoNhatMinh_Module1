package _case_study.services;

import _case_study.models.Customer;

import java.util.LinkedList;
import java.util.List;
import java.util.Scanner;

public class CustomerServiceImpl implements CustomerService {
    private static LinkedList<Customer> linkedList = new LinkedList<>();
    private static Customer customer = new Customer();
    public Scanner sc = new Scanner(System.in);
    @Override
    public void add() {
        System.out.println("Enter id customer: ");
        customer.setId(Integer.parseInt(sc.nextLine()));
        System.out.println("Enter name customer: ");
        customer.setName(sc.nextLine());
        System.out.println("Enter date of birth customer: ");
        customer.setDateOfbirth(sc.nextLine());
        System.out.println("Enter gender customer: ");
        customer.setGender(sc.nextLine());
        System.out.println("Enter identity number customer: ");
        customer.setIdentityNumber(sc.nextLine());
        System.out.println("Enter phone number customer: ");
        customer.setPhoneNumber(sc.nextLine());
        System.out.println("Enter email customer: ");
        customer.setEmail(sc.nextLine());
        System.out.println("Enter type of customer : ");
        customer.setTypeCustomer(sc.nextLine());
        System.out.println("Enter address: ");
        customer.setAddress(sc.nextLine());
        linkedList.add(customer);
    }

    @Override
    public void delete() {

    }

    @Override
    public void edit() {
        System.out.println("Enter id need to edit: ");
        int idEdit = Integer.parseInt(sc.nextLine());
        if (linkedList.isEmpty()) {
            System.out.println("Nothing to edit");
        } else {
            for (Customer customer : linkedList) {
                if (idEdit == customer.getId()) {
                    System.out.println("Enter new name customer: ");
                    customer.setName(sc.nextLine());
                    System.out.println("Enter new date of birth customer: ");
                    customer.setDateOfbirth(sc.nextLine());
                    System.out.println("Enter new gender customer: ");
                    customer.setGender(sc.nextLine());
                    System.out.println("Enter new identity number customer: ");
                    customer.setIdentityNumber(sc.nextLine());
                    System.out.println("Enter new phone number customer: ");
                    customer.setPhoneNumber(sc.nextLine());
                    System.out.println("Enter new email customer: ");
                    customer.setEmail(sc.nextLine());
                    System.out.println("Enter new type of customer: ");
                    customer.setTypeCustomer(sc.nextLine());
                    System.out.println("Enter new address: ");
                    customer.setAddress(sc.nextLine());

                } else {
                    System.out.println("Can't find id of customer");
                }
            }
        }
    }

    @Override
    public void display() {
        if (linkedList.size() == 0) {
            System.out.println("List is empty");
        } else {
            for (Customer customer : linkedList) {
                System.out.println(customer);
            }
        }
    }
}