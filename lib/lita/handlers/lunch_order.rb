module Lita
  module Handlers
    class LunchOrder < Handler
      REDIS_KEY = 'lunch-order'

      # Configure Routes

      # Add an Order (lita lunch-order add ORDER)
      route(/^lunch-order (?:orders?\s+)?add\s+(.+)$/i, :add_order, command: true, help: { 'lunch-order add ORDER' => 'Add a lunch order' })
      # Remove an Order (lita lunch-order remove ORDER)
      route(/^lunch-order (?:orders?\s+)?(?:remove|delete)\s+(.+)$/i, :remove_order, command: true, help: { 'lunch-order remove ORDER' => 'Remove a lunch order' })
      # List all Orders (lita lunch-order list)
      route(/^lunch-order (list|show)/i, :list_orders, command: true, help: { 'lunch-order list' => 'List all the known lunch orders' })
      # Expire orders (remove all orders)
      route(/^lunch-order (expire|reset)/i, :expire_orders, command: true, help: { 'lunch-order expire' => 'Expire lunch orders (remove all)' })
      # Tell everyone to begin entering orders
      route(/let (me|us) know what (you|you all) (want|would like) for lunch/i, :take_orders, command: false)

      def take_orders(response)
        # Code to notify people to enter orders!
        response.reply ":fork_and_knife: Now taking orders! To submit an order, please use `lunch-order add ORDER`. Thank You."
      end

      def list_orders(response)
        values = redis.smembers(REDIS_KEY)
        response.reply values.size > 0 ? values.sort.join("\n") : t('.empty')
      end

      def add_order(response)
        #response.user + ", " +
        order = response.matches[0][0].strip
        return if order.empty?
        result = redis.sadd(REDIS_KEY, order)
        response.reply result ? t('.added', order: order) : t('.duplicate', order: order)
      end

      def remove_order(response)
        #response.user +
        order = response.matches[0][0].strip
        return if order.empty?
        result = redis.srem(REDIS_KEY, order)
        response.reply result ? t('.removed', order: order) : t('.unfound')
      end

      def change_order(response)
        order = response.matches[0][0].strip
        return if order.empty?
        # make sure to allow this.
      end

      def expire_orders(response)
        redis.del(REDIS_KEY)
        response.reply "All orders have been removed!"
      end

      def reset!
        redis.del(REDIS_KEY)
      end

      Lita.register_handler(self)
    end
  end
end
