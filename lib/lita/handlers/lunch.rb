module Lita
  module Handlers
    class Lunch < Handler
      route /lunch(?:\s+me)?/, :lunch, command: true, help: { "lita lunch" => "Returns a lunch venue" }

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
        "Bengal Lounge"
      ]

      def lunch(response)
        response.reply("This week, it'll be #{FINE_ESTABLISHMENTS.sample}")
      end
    end

    Lita.register_handler(Lunch)
  end
end
