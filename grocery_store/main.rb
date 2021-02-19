Price = 0; 

Items = [{ name: "Apples", cost: 10},{name: "Oranges", cost: 20},{name: "Bananas", cost: 5}]


def menu
    puts "******** MAIN MENU ***********"
    puts "1. Show Grocery List"
    puts "2. Display Cart"
    puts "3. Show Total"
    puts "4. Remove Last Item Cast"
    puts "5. Exit the store"
    main_menu_choice
end

def main_menu_choice
    menu_choice = gets.chomp.to_i
    if menu_choice === 1
      puts "Showing List below:"
      show_list
    elsif menu_choice === 2
      puts "Showing Cart: "
      show_cart
    elsif menu_choice === 3
        puts "Total Price: #{Price}"
        menu
    elsif menu_choice === 4
      puts "**Removing Last Item**"
      call_pop
      show_list
    elsif menu_choice === 5
        puts "**** Exiting the Store ****"
        exit
    else
      puts "not valid choice, try again"
      menu
    end
end

def items_show
    puts "******** FOOD MENU ***********"
    puts "1. Add Apples"
    puts "2. Add Oranges"
    puts "3. Add Bananas"
    puts "4. Go back to Main Menu"
    item_menu_choice
end

def item_menu_choice
    item_choice = gets.chomp.to_i
    if item_choice === 1
      puts "*** 1 Apple added to Cart ***"
      Price + = Items[item_choice-1][:cost]
      items_show
    elsif item_choice === 2
      puts "*** 1 Orange added to Cart ***"
      Price + = Items[item_choice-1][:cost]
      items_show
    elsif item_choice === 3
        puts "*** 1 Banana added to Cart ***"
        Price + = Items[item_choice-1][:cost]
        items_show
    elsif item_choice === 4
      puts "** Going back to Main Menu **"
      menu
    else
        puts "not valid choice, try again"
        item_menu_choice
    end

end



def show_list
    Items.each do |item|
        p item
    end
    items_show
end



def show_cart
    puts "show cart -test"
    menu
end



def call_pop
    puts "remove -test"
    menu
end


menu
