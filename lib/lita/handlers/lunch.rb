module Lita
  module Handlers
    class Lunch < Handler
      route /lunch(?:\s+me)?/, :lunch, command: true, help: { "lita lunch" => "Returns a lunch venue" }
      route /lunch all/, :all, command: true, help: { "lita all" => "Returns all possible venues" }

      FINE_ESTABLISHMENTS = [
        "Café Piccolo",
        "Zizzi’s",
        "The Mahaan",
        "Borelli’s",
        "Pizza Express",
        "Prezzo",
        "Bill's",
        "The Slug and Lettuce",
        "The Traditional Plaice",
        "Domino's takeaway",
        "Nando's takeaway",
        "Bengal Lounge",
        "The Jolly Sailor"
      ]

      def lunch(response)
        response.reply("This week, it'll be #{FINE_ESTABLISHMENTS.sample}")
      end

      def all(response)
        FINE_ESTABLISHMENTS.each do |e|
          response.reply(e)
        end
      end
    end

    Lita.register_handler(Lunch)
  end
end
