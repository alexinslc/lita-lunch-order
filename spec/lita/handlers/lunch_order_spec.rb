require 'spec_helper'

describe Lita::Handlers::LunchOrder, lita_handler: true do
  before do
    subject.reset!
  end

  describe 'list all orders' do
    it { is_expected.to route_command('lunch-order list').to(:list_orders) }
    it { is_expected.to route_command('lunch-order show').to(:list_orders) }

    it 'tells you if there are no orders' do
      send_command('lunch-order list')
      expect(replies.last).to eq 'No orders added yet.'
    end

    it 'lists all the known orders' do
      send_command('lunch-order add bar')
      send_command('lunch-order add foo')
      send_command('lunch-order list')
      expect(replies.last).to eq "bar\nfoo"
    end

    it 'sorts the orders it knows' do
      send_command('lunch-order add Zoo')
      send_command('lunch-order add Avec')
      send_command('lunch-order add Longs')
      send_command('lunch-order list')
      expect(replies.last).to eq "Avec\nLongs\nZoo"
    end
  end

  describe 'adding an order' do
    it { is_expected.to route_command('lunch-order add ORDER').to(:add_order) }
    it { is_expected.to route_command('lunch-order add ORDER').to(:add_order) }
    it { is_expected.to route_command('lunch-order add ORDER').to(:add_order) }

    it 'will confirm order added' do
      send_command('lunch-order order add blah')
      expect(replies.last).to eq 'blah has been added'
    end

    it 'will not add an empty order' do
      send_command('lunch-order order add  ')
      expect(replies.last).to eq nil
    end

    it 'will not add a duplicate order' do
      send_command('lunch-order order add BurgerCzar')
      send_command('lunch-order order add BurgerCzar')
      expect(replies.last).to eq 'I already know about BurgerCzar'
    end
  end

  describe 'removing an order' do
    it { is_expected.to route_command('lunch-order remove ORDER').to(:remove_order) }
    it { is_expected.to route_command('lunch-order delete ORDER').to(:remove_order) }
    it { is_expected.to route_command('lunch-order remove ORDER').to(:remove_order) }
    it { is_expected.to route_command('lunch-order delete ORDER').to(:remove_order) }
    it { is_expected.to route_command('lunch-order remove ORDER').to(:remove_order) }
    it { is_expected.to route_command('lunch-order delete ORDER').to(:remove_order) }

    it 'will confirm order removed' do
      send_command('lunch-order add blah')
      send_command('lunch-order remove blah')
      expect(replies.last).to eq 'blah has been removed'
    end

    it 'will confirm if order cannot be found' do
      send_command('lunch-order order remove yolo')
      expect(replies.last).to eq 'You will need to be more specific'
    end
  end
end
