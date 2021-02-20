@price = 0; 
@budget = 0

@items = [{ key: 1, name: "Apple", cost: 10},{ key: 2, name: "Orange", cost: 20},{ key: 3, name: "Banana", cost: 5}]

@cart = []

def menu
    puts "         ############ MAIN MENU ############         "
    puts "1. Show Grocery List"
    puts "2. Display Cart"
    puts "3. Show Total"
    puts "4. Remove Last Item from the cart"
    puts "5. Select an item to remove from cart"
    puts "6. Check the amount of funds remaining"
    puts "7. Exit the store"
    puts "    ** Select one of the above options **    "
    main_menu_choice
end

def main_menu_choice
    menu_choice = gets.chomp.to_i
    if menu_choice === 1
      show_list
      items_show
    elsif menu_choice === 2
      show_cart
      menu
    elsif menu_choice === 3
        puts "Total Price: $#{@price}"
        menu
    elsif menu_choice === 4
      call_pop
      show_list
      menu
    elsif menu_choice === 5
      show_cart
      select_delete_from_cart
      show_cart
      menu
    elsif menu_choice === 6
      puts "Total amount of Funds remaining: $#{@budget}"
      menu
    elsif menu_choice === 7
        puts "    ****************************** Leaving Store ******************************    "
        exit
    else
      puts "  !!!!! INVALID CHOICE, PLEASE TRY AGAIN  !!!!!"
      menu
    end
end

def items_show
    puts "         ############ FOOD MENU ############         "
    puts "Enter the number of the item do you want to add to your cart?  OR"
    puts "Enter 'A' to Add items to the grocery store list  OR"
    puts "Enter 'X' to Go back to Main Menu"
    item_menu_choice
end

def item_menu_choice
    basket = {}
    item_choice = gets.chomp
    if item_choice <= (@items.length).to_s
      puts "    ****************************** 1 Item added to Cart ******************************    "
      @price += @items[(item_choice).to_i-1][:cost]
      basket[:name] = @items[(item_choice).to_i-1][:name]
      basket[:cost] = @items[(item_choice).to_i-1][:cost]
      basket[:key] = @cart.length + 1
      @cart << basket
      items_show
      elsif item_choice == 'A' || item_choice == 'a'
        puts "    ** Adding items to the main list **    "
        add_to_items
        show_list
        items_show

    elsif item_choice == 'X' || item_choice == 'x'
      puts "    ** Going back to the Main Menu **    "
      menu
    else
        puts "  !!!!! INVALID CHOICE, PLEASE TRY AGAIN  !!!!!"
        item_menu_choice
    end

end

def show_list
  puts "Showing List below:"
    @items.each do |item, index|
        puts " #{item[:key]}. #{item[:name]} -- $ #{item[:cost]}" 
    end
end

def show_cart
  puts "    ****************************** Showing Cart ******************************    "
    @cart.each do |item, index|
      puts " #{item[:key]}. #{item[:name]} -- $ #{item[:cost]}"
    end
    
end

def call_pop
    temp_cost = 0
    puts "**Removing Last Item**"
    temp_cost = @cart[@cart.length-1][:cost]
    @cart.pop()
    @price -= temp_cost
    show_cart
    menu
end

def add_to_items
  new_item = {}
  puts " Enter name of the item you want to add: "
  new_item[:name] = gets.chomp
  puts " Enter the price of the item you just added: "
  new_item[:cost] = gets.to_i
  new_item[:key] = @items.length+1
  @items << new_item

end

def select_delete_from_cart
  row_number = 0  
  temp_cost = 0
  print " Enter row number to delete:  "
  row_number = gets.to_i
  temp_cost = @cart[row_number-1][:cost]
  @price -= temp_cost
  @cart.delete_at(row_number-1)
end


print " What is your budget? : "
@budget  = gets.chomp.to_i

menu
