module Lita
  module Handlers
    class Lunch < Handler
      route /lunch(?:\s+me)?/, :lunch, command: true, help: { "lita lunch" => "Returns a lunch venue" }

      FINE_ESTABLISHMENTS = [
        "Café Piccolo",
        "Zizzi’s",
        "Farnham Tandoori",
        "The Mahaan",
        "Borelli’s",
        "Pizza Express",
        "Prezzo",
        "The Wheatsheaf",
        "Bill's",
        "The Slug and Lettuce",
        "The Traditional Plaice",
        "Domino's takeaway",
        "Nando's takeaway"
      ]

      def lunch(response)
        response.reply( "This week, it'll be #{FINE_ESTABLISHMENTS.sample}")
      end
    end

    Lita.register_handler(Lunch)
  end
end
