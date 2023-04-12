class BoutiqueInventory
  def initialize(items)
    @items = items
  end

  def item_names
    @items.map { |item_hash| item_hash[:name] }.sort
  end

  def cheap
    @items.select { |item_hash| item_hash[:price] < 30 }
  end

  def out_of_stock
    @items.select { |item_hash| item_hash[:quantity_by_size].empty? }
  end

  def stock_for_item(name)
    @items.find { |item_hash| item_hash[:name] == name }[:quantity_by_size]
  end

  def total_stock
    total_stock = 0
    @items.each do |item_hash|
      total_stock += item_hash[:quantity_by_size].sum { |_, num| num }
    end
    total_stock
  end

  private
  attr_reader :items
end
