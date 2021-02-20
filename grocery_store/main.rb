@price = 0; 

@items = [{ name: "Apple", cost: 10},{name: "Orange", cost: 20},{name: "Banana", cost: 5}]

@cart = []

def menu
    puts "         ############ MAIN MENU ############         "
    puts "1. Show Grocery List"
    puts "2. Display Cart"
    puts "3. Show Total"
    puts "4. Remove Last Item from the cart"
    puts "5. Select an item to remove from cart"
    puts "6. Exit the store"
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
    elsif menu_choice === 3
        puts "Total Price: #{@price}"
        menu
    elsif menu_choice === 4
      call_pop
      show_list
    elsif menu_choice === 6
        puts "    ****************************** Leaving Store ******************************    "
        exit
    else
      puts "not valid choice, try again"
      menu
    end
end

def items_show
    puts "         ############ FOOD MENU ############         "
    puts "1. Add 1 Apple to your cart"
    puts "2. Add 1 Orange to your cart"
    puts "3. Add 1 Banana to your cart"
    puts "4. Add items to the main list"
    puts "5. Go back to Main Menu"
    item_menu_choice
end

def item_menu_choice
    basket = {}
    item_choice = gets.chomp.to_i
    if item_choice === 1
      puts "    ****************************** 1 Apple added to Cart ******************************    "
      @price += @items[item_choice-1][:cost]
      basket[:name] = @items[item_choice-1][:name]
      basket[:cost] = @items[item_choice-1][:cost]
      @cart << basket
      items_show
    elsif item_choice === 2
      puts "    ****************************** 1 Orange added to Cart ******************************    "
      @price += @items[item_choice-1][:cost]
      basket[:name] = @items[item_choice-1][:name]
      basket[:cost] = @items[item_choice-1][:cost]
      @cart << basket
      items_show
    elsif item_choice === 3
        puts "    ****************************** 1 Banana added to Cart ******************************    "
        @price += @items[item_choice-1][:cost]
        basket[:name] = @items[item_choice-1][:name]
        basket[:cost] = @items[item_choice-1][:cost]
        @cart << basket
        items_show

      elsif item_choice === 4
        puts "    ** Adding items to the main list **    "
        add_to_items
        menu

    elsif item_choice === 5
      puts "    ** Going back to the Main Menu **    "
      menu
    else
        puts "not valid choice, try again"
        item_menu_choice
    end

end



def show_list
  puts "Showing List below:"
    @items.each do |item, index|
        puts " #{item[:name]} -- $ #{item[:cost]}"
    end
end



def show_cart
  puts "    ****************************** Showing Cart ******************************    "
    @cart.each do |item|
      puts " #{item}"
    end
    menu
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
  puts " Select what items you want to add: "
  show_list

end




@budget = 0
print " What is your budget? : "
@budget  = gets.to_i
puts " $ #{@budget}" 

menu
