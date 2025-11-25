import Foundation

struct QuizData {

    static func questions(for topic: QuizTopic) -> [QuizQuestion] {
        switch topic {
        case .animals:  return animals
        case .colors:   return colors
        case .shapes:   return shapes
        case .numbers:  return numbers
        case .letters:  return letters
        case .food:     return food
        case .weather:  return weather
        case .vehicles: return vehicles
        }
    }

    // MARK: - Animals (20)

    private static let animals: [QuizQuestion] = [
        QuizQuestion(
            question: "Which animal says \"meow\"?",
            answers: ["Dog", "Cat", "Cow", "Duck"],
            correctIndex: 1,
            imageName: "animal_cat"
        ),
        QuizQuestion(
            question: "Which animal has a long trunk?",
            answers: ["Elephant", "Lion", "Rabbit", "Frog"],
            correctIndex: 0,
            imageName: "animal_elephant"
        ),
        QuizQuestion(
            question: "Which animal can fly?",
            answers: ["Fish", "Bird", "Snake", "Turtle"],
            correctIndex: 1,
            imageName: "animal_bird"
        ),
        QuizQuestion(
            question: "Which animal lives in the ocean?",
            answers: ["Horse", "Shark", "Tiger", "Pig"],
            correctIndex: 1,
            imageName: "animal_shark"
        ),
        QuizQuestion(
            question: "Which animal hops and has long ears?",
            answers: ["Rabbit", "Bear", "Giraffe", "Cow"],
            correctIndex: 0,
            imageName: "animal_rabbit"
        ),
        QuizQuestion(
            question: "Which animal is the king of the jungle?",
            answers: ["Lion", "Sheep", "Chicken", "Goat"],
            correctIndex: 0,
            imageName: "animal_lion"
        ),
        QuizQuestion(
            question: "Which animal says \"woof\"?",
            answers: ["Dog", "Duck", "Cow", "Cat"],
            correctIndex: 0,
            imageName: "animal_dog"
        ),
        QuizQuestion(
            question: "Which animal has black and white stripes?",
            answers: ["Zebra", "Monkey", "Penguin", "Snake"],
            correctIndex: 0,
            imageName: "animal_zebra"
        ),
        QuizQuestion(
            question: "Which animal is very tall with a long neck?",
            answers: ["Giraffe", "Mouse", "Lion", "Pig"],
            correctIndex: 0,
            imageName: "animal_giraffe"
        ),
        QuizQuestion(
            question: "Which animal lives on a farm and gives milk?",
            answers: ["Cow", "Lion", "Tiger", "Bear"],
            correctIndex: 0,
            imageName: "animal_cow"
        ),
        QuizQuestion(
            question: "Which animal can swim and has fins?",
            answers: ["Fish", "Dog", "Cat", "Rabbit"],
            correctIndex: 0,
            imageName: "animal_fish"
        ),
        QuizQuestion(
            question: "Which animal can hang by its tail?",
            answers: ["Monkey", "Horse", "Pig", "Sheep"],
            correctIndex: 0,
            imageName: "animal_monkey"
        ),
        QuizQuestion(
            question: "Which animal says \"quack\"?",
            answers: ["Duck", "Cow", "Dog", "Cat"],
            correctIndex: 0,
            imageName: "animal_duck"
        ),
        QuizQuestion(
            question: "Which animal is covered in spikes?",
            answers: ["Hedgehog", "Rabbit", "Horse", "Cat"],
            correctIndex: 0,
            imageName: "animal_hedgehog"
        ),
        QuizQuestion(
            question: "Which animal is very slow and has a shell?",
            answers: ["Turtle", "Bird", "Snake", "Cow"],
            correctIndex: 0,
            imageName: "animal_turtle"
        ),
        QuizQuestion(
            question: "Which animal lives in cold places and wears a black and white coat?",
            answers: ["Penguin", "Cat", "Dog", "Zebra"],
            correctIndex: 0,
            imageName: "animal_penguin"
        ),
        QuizQuestion(
            question: "Which animal is tiny and likes cheese?",
            answers: ["Mouse", "Horse", "Lion", "Pig"],
            correctIndex: 0,
            imageName: "animal_mouse"
        ),
        QuizQuestion(
            question: "Which animal says \"moo\"?",
            answers: ["Cow", "Duck", "Cat", "Dog"],
            correctIndex: 0,
            imageName: "animal_cow"
        ),
        QuizQuestion(
            question: "Which animal has a big horn on its nose?",
            answers: ["Rhino", "Elephant", "Horse", "Sheep"],
            correctIndex: 0,
            imageName: "animal_rhino"
        ),
        QuizQuestion(
            question: "Which animal likes honey and hibernates?",
            answers: ["Bear", "Fish", "Frog", "Chicken"],
            correctIndex: 0,
            imageName: "animal_bear"
        )
    ]

    // MARK: - Colors (20)

    private static let colors: [QuizQuestion] = [
        QuizQuestion(
            question: "What color is the sky on a sunny day?",
            answers: ["Blue", "Green", "Red", "Purple"],
            correctIndex: 0,
            imageName: "color_sky"
        ),
        QuizQuestion(
            question: "What color are bananas?",
            answers: ["Yellow", "Blue", "Pink", "Black"],
            correctIndex: 0,
            imageName: "color_banana"
        ),
        QuizQuestion(
            question: "What color is grass?",
            answers: ["Green", "Orange", "Purple", "Gray"],
            correctIndex: 0,
            imageName: "color_grass"
        ),
        QuizQuestion(
            question: "What color is an apple usually?",
            answers: ["Red", "Blue", "Brown", "Black"],
            correctIndex: 0,
            imageName: "color_apple"
        ),
        QuizQuestion(
            question: "Which color is made by mixing red and white?",
            answers: ["Pink", "Green", "Yellow", "Blue"],
            correctIndex: 0,
            imageName: "color_pink"
        ),
        QuizQuestion(
            question: "What color is a pumpkin?",
            answers: ["Orange", "Purple", "Gray", "Blue"],
            correctIndex: 0,
            imageName: "color_pumpkin"
        ),
        QuizQuestion(
            question: "Which color is the opposite of white?",
            answers: ["Black", "Red", "Green", "Pink"],
            correctIndex: 0,
            imageName: "color_black"
        ),
        QuizQuestion(
            question: "What color are most strawberries?",
            answers: ["Red", "Yellow", "Blue", "Green"],
            correctIndex: 0,
            imageName: "color_strawberry"
        ),
        QuizQuestion(
            question: "What color is a lemon?",
            answers: ["Yellow", "Purple", "Pink", "Brown"],
            correctIndex: 0,
            imageName: "color_lemon"
        ),
        QuizQuestion(
            question: "Which color is a mix of blue and yellow?",
            answers: ["Green", "Red", "Pink", "Orange"],
            correctIndex: 0,
            imageName: "color_green"
        ),
        QuizQuestion(
            question: "What color is a cloud on a sunny day?",
            answers: ["White", "Black", "Brown", "Red"],
            correctIndex: 0,
            imageName: "color_cloud"
        ),
        QuizQuestion(
            question: "What color is a stop sign?",
            answers: ["Red", "Green", "Blue", "Yellow"],
            correctIndex: 0,
            imageName: "color_stop"
        ),
        QuizQuestion(
            question: "What color are most blueberries?",
            answers: ["Blue", "Orange", "Yellow", "Purple"],
            correctIndex: 0,
            imageName: "color_blueberry"
        ),
        QuizQuestion(
            question: "Which color is made by mixing red and yellow?",
            answers: ["Orange", "Green", "Blue", "Pink"],
            correctIndex: 0,
            imageName: "color_orange"
        ),
        QuizQuestion(
            question: "What color are most trees’ leaves?",
            answers: ["Green", "Blue", "Black", "Red"],
            correctIndex: 0,
            imageName: "color_leaves"
        ),
        QuizQuestion(
            question: "What color is the sun usually drawn as?",
            answers: ["Yellow", "Purple", "Gray", "Black"],
            correctIndex: 0,
            imageName: "color_sun"
        ),
        QuizQuestion(
            question: "Which color is often used for hearts?",
            answers: ["Red", "Green", "Brown", "Blue"],
            correctIndex: 0,
            imageName: "color_heart"
        ),
        QuizQuestion(
            question: "What color is chocolate?",
            answers: ["Brown", "Pink", "Yellow", "Blue"],
            correctIndex: 0,
            imageName: "color_chocolate"
        ),
        QuizQuestion(
            question: "Which color is in a rainbow?",
            answers: ["All of these", "Only red", "Only blue", "Only green"],
            correctIndex: 0,
            imageName: "color_rainbow"
        ),
        QuizQuestion(
            question: "What color are most frogs?",
            answers: ["Green", "Pink", "Black", "Gray"],
            correctIndex: 0,
            imageName: "color_frog"
        )
    ]

    // MARK: - Shapes (20)

    private static let shapes: [QuizQuestion] = [
        QuizQuestion(
            question: "Which shape has three sides?",
            answers: ["Triangle", "Square", "Circle", "Rectangle"],
            correctIndex: 0,
            imageName: "shape_triangle"
        ),
        QuizQuestion(
            question: "Which shape has no corners?",
            answers: ["Circle", "Square", "Triangle", "Star"],
            correctIndex: 0,
            imageName: "shape_circle"
        ),
        QuizQuestion(
            question: "Which shape has four equal sides?",
            answers: ["Square", "Triangle", "Circle", "Oval"],
            correctIndex: 0,
            imageName: "shape_square"
        ),
        QuizQuestion(
            question: "Which shape looks like a ball?",
            answers: ["Circle", "Rectangle", "Triangle", "Star"],
            correctIndex: 0,
            imageName: "shape_circle"
        ),
        QuizQuestion(
            question: "Which shape looks like an egg?",
            answers: ["Oval", "Square", "Triangle", "Star"],
            correctIndex: 0,
            imageName: "shape_oval"
        ),
        QuizQuestion(
            question: "Which shape has five points?",
            answers: ["Star", "Circle", "Square", "Rectangle"],
            correctIndex: 0,
            imageName: "shape_star"
        ),
        QuizQuestion(
            question: "Which shape is like a long square?",
            answers: ["Rectangle", "Circle", "Triangle", "Oval"],
            correctIndex: 0,
            imageName: "shape_rectangle"
        ),
        QuizQuestion(
            question: "Which shape is used for a stop sign?",
            answers: ["Octagon", "Triangle", "Circle", "Square"],
            correctIndex: 0,
            imageName: "shape_octagon"
        ),
        QuizQuestion(
            question: "Which shape has only one curved side?",
            answers: ["Circle", "Star", "Triangle", "Square"],
            correctIndex: 0,
            imageName: "shape_circle"
        ),
        QuizQuestion(
            question: "Which shape can roll easily?",
            answers: ["Circle", "Square", "Triangle", "Rectangle"],
            correctIndex: 0,
            imageName: "shape_circle"
        ),
        QuizQuestion(
            question: "Which shape has four corners and four sides?",
            answers: ["Square", "Circle", "Triangle", "Oval"],
            correctIndex: 0,
            imageName: "shape_square"
        ),
        QuizQuestion(
            question: "Which shape is like the moon in the sky?",
            answers: ["Crescent", "Square", "Triangle", "Star"],
            correctIndex: 0,
            imageName: "shape_crescent"
        ),
        QuizQuestion(
            question: "Which shape looks like a piece of pizza?",
            answers: ["Triangle", "Circle", "Square", "Oval"],
            correctIndex: 0,
            imageName: "shape_triangle"
        ),
        QuizQuestion(
            question: "Which shape is used for a window often?",
            answers: ["Rectangle", "Triangle", "Circle", "Star"],
            correctIndex: 0,
            imageName: "shape_rectangle"
        ),
        QuizQuestion(
            question: "Which shape has six sides?",
            answers: ["Hexagon", "Pentagon", "Triangle", "Circle"],
            correctIndex: 0,
            imageName: "shape_hexagon"
        ),
        QuizQuestion(
            question: "Which shape has five sides?",
            answers: ["Pentagon", "Square", "Triangle", "Circle"],
            correctIndex: 0,
            imageName: "shape_pentagon"
        ),
        QuizQuestion(
            question: "Which shape looks like a heart?",
            answers: ["Heart", "Circle", "Triangle", "Square"],
            correctIndex: 0,
            imageName: "shape_heart"
        ),
        QuizQuestion(
            question: "Which shape looks like a star in the sky?",
            answers: ["Star", "Circle", "Square", "Oval"],
            correctIndex: 0,
            imageName: "shape_star"
        ),
        QuizQuestion(
            question: "Which shape is used for a coin?",
            answers: ["Circle", "Triangle", "Rectangle", "Square"],
            correctIndex: 0,
            imageName: "shape_circle"
        ),
        QuizQuestion(
            question: "Which shape looks like a box?",
            answers: ["Square", "Circle", "Star", "Triangle"],
            correctIndex: 0,
            imageName: "shape_square"
        )
    ]

    // MARK: - Numbers (20)

    private static let numbers: [QuizQuestion] = [
        QuizQuestion(
            question: "What number comes after 1?",
            answers: ["2", "3", "4", "5"],
            correctIndex: 0,
            imageName: nil
        ),
        QuizQuestion(
            question: "How many sides does a triangle have?",
            answers: ["3", "2", "4", "5"],
            correctIndex: 0,
            imageName: nil
        ),
        QuizQuestion(
            question: "What is 2 + 2?",
            answers: ["4", "3", "5", "6"],
            correctIndex: 0,
            imageName: nil
        ),
        QuizQuestion(
            question: "How many legs does a dog have?",
            answers: ["4", "2", "3", "5"],
            correctIndex: 0,
            imageName: nil
        ),
        QuizQuestion(
            question: "What number comes before 5?",
            answers: ["4", "3", "2", "6"],
            correctIndex: 0,
            imageName: nil
        ),
        QuizQuestion(
            question: "How many fingers are on one hand?",
            answers: ["5", "3", "4", "6"],
            correctIndex: 0,
            imageName: nil
        ),
        QuizQuestion(
            question: "What is 1 + 3?",
            answers: ["4", "2", "3", "5"],
            correctIndex: 0,
            imageName: nil
        ),
        QuizQuestion(
            question: "How many wheels does a bicycle have?",
            answers: ["2", "3", "4", "5"],
            correctIndex: 0,
            imageName: nil
        ),
        QuizQuestion(
            question: "What is 5 - 1?",
            answers: ["4", "3", "2", "5"],
            correctIndex: 0,
            imageName: nil
        ),
        QuizQuestion(
            question: "How many eyes do most people have?",
            answers: ["2", "1", "3", "4"],
            correctIndex: 0,
            imageName: nil
        ),
        QuizQuestion(
            question: "What number comes after 9?",
            answers: ["10", "8", "7", "6"],
            correctIndex: 0,
            imageName: nil
        ),
        QuizQuestion(
            question: "What is 3 + 1?",
            answers: ["4", "3", "5", "2"],
            correctIndex: 0,
            imageName: nil
        ),
        QuizQuestion(
            question: "How many days are in a weekend?",
            answers: ["2", "3", "4", "5"],
            correctIndex: 0,
            imageName: nil
        ),
        QuizQuestion(
            question: "What is 2 + 3?",
            answers: ["5", "4", "6", "3"],
            correctIndex: 0,
            imageName: nil
        ),
        QuizQuestion(
            question: "How many sides does a square have?",
            answers: ["4", "3", "5", "6"],
            correctIndex: 0,
            imageName: nil
        ),
        QuizQuestion(
            question: "What number comes before 3?",
            answers: ["2", "1", "4", "5"],
            correctIndex: 0,
            imageName: nil
        ),
        QuizQuestion(
            question: "What is 4 - 1?",
            answers: ["3", "2", "4", "5"],
            correctIndex: 0,
            imageName: nil
        ),
        QuizQuestion(
            question: "How many ears do most cats have?",
            answers: ["2", "1", "3", "4"],
            correctIndex: 0,
            imageName: nil
        ),
        QuizQuestion(
            question: "What is 1 + 1?",
            answers: ["2", "3", "4", "1"],
            correctIndex: 0,
            imageName: nil
        ),
        QuizQuestion(
            question: "How many legs does a chair usually have?",
            answers: ["4", "2", "3", "5"],
            correctIndex: 0,
            imageName: nil
        )
    ]

    // MARK: - Letters (20)

    private static let letters: [QuizQuestion] = [
        QuizQuestion(
            question: "What is the first letter of the alphabet?",
            answers: ["A", "B", "C", "D"],
            correctIndex: 0,
            imageName: nil
        ),
        QuizQuestion(
            question: "Which letter comes after A?",
            answers: ["B", "C", "D", "E"],
            correctIndex: 0,
            imageName: nil
        ),
        QuizQuestion(
            question: "Which letter comes before D?",
            answers: ["C", "B", "A", "E"],
            correctIndex: 0,
            imageName: nil
        ),
        QuizQuestion(
            question: "Which letter starts the word \"cat\"?",
            answers: ["C", "A", "T", "B"],
            correctIndex: 0,
            imageName: nil
        ),
        QuizQuestion(
            question: "Which letter starts the word \"dog\"?",
            answers: ["D", "G", "O", "T"],
            correctIndex: 0,
            imageName: nil
        ),
        QuizQuestion(
            question: "Which letter comes after C?",
            answers: ["D", "E", "F", "B"],
            correctIndex: 0,
            imageName: nil
        ),
        QuizQuestion(
            question: "Which letter is used for \"apple\"?",
            answers: ["A", "B", "C", "D"],
            correctIndex: 0,
            imageName: nil
        ),
        QuizQuestion(
            question: "Which letter comes after Z?",
            answers: ["None", "A", "Y", "X"],
            correctIndex: 0,
            imageName: nil
        ),
        QuizQuestion(
            question: "Which letter starts the word \"ball\"?",
            answers: ["B", "A", "L", "C"],
            correctIndex: 0,
            imageName: nil
        ),
        QuizQuestion(
            question: "Which letter starts the word \"egg\"?",
            answers: ["E", "G", "D", "F"],
            correctIndex: 0,
            imageName: nil
        ),
        QuizQuestion(
            question: "Which letter looks like a circle?",
            answers: ["O", "I", "L", "X"],
            correctIndex: 0,
            imageName: nil
        ),
        QuizQuestion(
            question: "Which letter starts the word \"fish\"?",
            answers: ["F", "H", "S", "I"],
            correctIndex: 0,
            imageName: nil
        ),
        QuizQuestion(
            question: "Which letter comes before B?",
            answers: ["A", "C", "D", "E"],
            correctIndex: 0,
            imageName: nil
        ),
        QuizQuestion(
            question: "Which letter starts the word \"goat\"?",
            answers: ["G", "O", "A", "T"],
            correctIndex: 0,
            imageName: nil
        ),
        QuizQuestion(
            question: "Which letter is in the middle of the word \"sun\"?",
            answers: ["U", "S", "N", "A"],
            correctIndex: 0,
            imageName: nil
        ),
        QuizQuestion(
            question: "Which letter starts the word \"hat\"?",
            answers: ["H", "A", "T", "B"],
            correctIndex: 0,
            imageName: nil
        ),
        QuizQuestion(
            question: "Which letter comes after J?",
            answers: ["K", "L", "M", "N"],
            correctIndex: 0,
            imageName: nil
        ),
        QuizQuestion(
            question: "Which letter comes before Y?",
            answers: ["X", "Z", "W", "V"],
            correctIndex: 0,
            imageName: nil
        ),
        QuizQuestion(
            question: "Which letter starts the word \"zoo\"?",
            answers: ["Z", "O", "Q", "X"],
            correctIndex: 0,
            imageName: nil
        ),
        QuizQuestion(
            question: "Which letter starts the word \"ice\"?",
            answers: ["I", "E", "C", "S"],
            correctIndex: 0,
            imageName: nil
        )
    ]

    // MARK: - Food (20)

    private static let food: [QuizQuestion] = [
        QuizQuestion(
            question: "Which food is a fruit?",
            answers: ["Apple", "Bread", "Cheese", "Egg"],
            correctIndex: 0,
            imageName: "food_apple"
        ),
        QuizQuestion(
            question: "Which food is round and cheesy?",
            answers: ["Pizza", "Carrot", "Banana", "Rice"],
            correctIndex: 0,
            imageName: "food_pizza"
        ),
        QuizQuestion(
            question: "Which food is long and orange?",
            answers: ["Carrot", "Apple", "Grape", "Cheese"],
            correctIndex: 0,
            imageName: "food_carrot"
        ),
        QuizQuestion(
            question: "Which food is cold and sweet?",
            answers: ["Ice cream", "Soup", "Bread", "Cheese"],
            correctIndex: 0,
            imageName: "food_icecream"
        ),
        QuizQuestion(
            question: "Which food do we drink?",
            answers: ["Milk", "Apple", "Cheese", "Rice"],
            correctIndex: 0,
            imageName: "food_milk"
        ),
        QuizQuestion(
            question: "Which food grows on trees and can be red or green?",
            answers: ["Apple", "Bread", "Cheese", "Egg"],
            correctIndex: 0,
            imageName: "food_apple"
        ),
        QuizQuestion(
            question: "Which food is usually eaten for breakfast?",
            answers: ["Cereal", "Pizza", "Ice cream", "Candy"],
            correctIndex: 0,
            imageName: "food_cereal"
        ),
        QuizQuestion(
            question: "Which food is made from milk and is yellow or white?",
            answers: ["Cheese", "Carrot", "Rice", "Bread"],
            correctIndex: 0,
            imageName: "food_cheese"
        ),
        QuizQuestion(
            question: "Which food is sweet and comes in many colors?",
            answers: ["Candy", "Rice", "Bread", "Egg"],
            correctIndex: 0,
            imageName: "food_candy"
        ),
        QuizQuestion(
            question: "Which food is long and yellow and you peel it?",
            answers: ["Banana", "Carrot", "Apple", "Bread"],
            correctIndex: 0,
            imageName: "food_banana"
        ),
        QuizQuestion(
            question: "Which food do we often eat in a sandwich?",
            answers: ["Bread", "Carrot", "Rice", "Candy"],
            correctIndex: 0,
            imageName: "food_bread"
        ),
        QuizQuestion(
            question: "Which food is red and used in ketchup?",
            answers: ["Tomato", "Banana", "Apple", "Carrot"],
            correctIndex: 0,
            imageName: "food_tomato"
        ),
        QuizQuestion(
            question: "Which food is green and looks like a little tree?",
            answers: ["Broccoli", "Apple", "Cheese", "Candy"],
            correctIndex: 0,
            imageName: "food_broccoli"
        ),
        QuizQuestion(
            question: "Which food is often eaten with sauce and is long and thin?",
            answers: ["Pasta", "Bread", "Cheese", "Egg"],
            correctIndex: 0,
            imageName: "food_pasta"
        ),
        QuizQuestion(
            question: "Which food is hot and in a bowl?",
            answers: ["Soup", "Ice cream", "Candy", "Cereal"],
            correctIndex: 0,
            imageName: "food_soup"
        ),
        QuizQuestion(
            question: "Which food is made from cocoa and is sweet and brown?",
            answers: ["Chocolate", "Bread", "Cheese", "Rice"],
            correctIndex: 0,
            imageName: "food_chocolate"
        ),
        QuizQuestion(
            question: "Which food comes from chickens and is in shells?",
            answers: ["Eggs", "Bread", "Candy", "Rice"],
            correctIndex: 0,
            imageName: "food_eggs"
        ),
        QuizQuestion(
            question: "Which food is sticky and sweet and made by bees?",
            answers: ["Honey", "Milk", "Water", "Cheese"],
            correctIndex: 0,
            imageName: "food_honey"
        ),
        QuizQuestion(
            question: "Which food is green and we often put it in salad?",
            answers: ["Lettuce", "Bread", "Candy", "Egg"],
            correctIndex: 0,
            imageName: "food_lettuce"
        ),
        QuizQuestion(
            question: "Which food do we often eat with cheese and sauce on top?",
            answers: ["Pizza", "Carrot", "Apple", "Candy"],
            correctIndex: 0,
            imageName: "food_pizza"
        )
    ]

    // MARK: - Weather (20)

    private static let weather: [QuizQuestion] = [
        QuizQuestion(
            question: "What falls from the sky when it rains?",
            answers: ["Raindrops", "Snowflakes", "Leaves", "Stars"],
            correctIndex: 0,
            imageName: "weather_rain"
        ),
        QuizQuestion(
            question: "What shines in the sky on a sunny day?",
            answers: ["Sun", "Moon", "Cloud", "Star"],
            correctIndex: 0,
            imageName: "weather_sun"
        ),
        QuizQuestion(
            question: "What falls from the sky when it snows?",
            answers: ["Snowflakes", "Raindrops", "Leaves", "Sand"],
            correctIndex: 0,
            imageName: "weather_snow"
        ),
        QuizQuestion(
            question: "What do we use when it is raining?",
            answers: ["Umbrella", "Sunglasses", "Hat", "Scarf"],
            correctIndex: 0,
            imageName: "weather_umbrella"
        ),
        QuizQuestion(
            question: "What do we see in the sky after rain with many colors?",
            answers: ["Rainbow", "Cloud", "Star", "Moon"],
            correctIndex: 0,
            imageName: "weather_rainbow"
        ),
        QuizQuestion(
            question: "What do we wear when it is very cold?",
            answers: ["Coat", "Shorts", "Swimsuit", "Sandals"],
            correctIndex: 0,
            imageName: "weather_coat"
        ),
        QuizQuestion(
            question: "What do we wear when it is very hot and sunny?",
            answers: ["Sunglasses", "Scarf", "Gloves", "Boots"],
            correctIndex: 0,
            imageName: "weather_sunglasses"
        ),
        QuizQuestion(
            question: "What moves the leaves on a windy day?",
            answers: ["Wind", "Rain", "Snow", "Thunder"],
            correctIndex: 0,
            imageName: "weather_wind"
        ),
        QuizQuestion(
            question: "What sound do we hear during a storm?",
            answers: ["Thunder", "Meow", "Clap", "Bell"],
            correctIndex: 0,
            imageName: "weather_thunder"
        ),
        QuizQuestion(
            question: "What lights up the sky during a storm?",
            answers: ["Lightning", "Rainbow", "Sun", "Moon"],
            correctIndex: 0,
            imageName: "weather_lightning"
        ),
        QuizQuestion(
            question: "What do we see in the sky at night?",
            answers: ["Moon and stars", "Sun", "Rainbow", "Clouds only"],
            correctIndex: 0,
            imageName: "weather_night"
        ),
        QuizQuestion(
            question: "What covers the sky when it is cloudy?",
            answers: ["Clouds", "Sun", "Rainbows", "Birds"],
            correctIndex: 0,
            imageName: "weather_cloudy"
        ),
        QuizQuestion(
            question: "What keeps us dry on a rainy day on our feet?",
            answers: ["Rain boots", "Sandals", "Slippers", "Socks"],
            correctIndex: 0,
            imageName: "weather_boots"
        ),
        QuizQuestion(
            question: "What is the weather like when we build a snowman?",
            answers: ["Snowy", "Sunny", "Rainy", "Windy"],
            correctIndex: 0,
            imageName: "weather_snowman"
        ),
        QuizQuestion(
            question: "What weather is best for going swimming outside?",
            answers: ["Sunny and warm", "Snowy", "Rainy", "Very windy"],
            correctIndex: 0,
            imageName: "weather_swim"
        ),
        QuizQuestion(
            question: "What falls in tiny pieces of ice from the sky?",
            answers: ["Hail", "Rain", "Snow", "Leaves"],
            correctIndex: 0,
            imageName: "weather_hail"
        ),
        QuizQuestion(
            question: "When the air is very wet and hard to see, we call it?",
            answers: ["Foggy", "Snowy", "Windy", "Sunny"],
            correctIndex: 0,
            imageName: "weather_fog"
        ),
        QuizQuestion(
            question: "What do we see in the sky at night that looks round and bright?",
            answers: ["Moon", "Sun", "Cloud", "Rainbow"],
            correctIndex: 0,
            imageName: "weather_moon"
        ),
        QuizQuestion(
            question: "When there is no rain and lots of sun, the weather is?",
            answers: ["Sunny", "Snowy", "Rainy", "Foggy"],
            correctIndex: 0,
            imageName: "weather_sun"
        ),
        QuizQuestion(
            question: "What do we see in the sky that looks fluffy and white?",
            answers: ["Clouds", "Stars", "Rocks", "Trees"],
            correctIndex: 0,
            imageName: "weather_clouds"
        )
    ]

    // MARK: - Vehicles (20)

    private static let vehicles: [QuizQuestion] = [
        QuizQuestion(
            question: "Which vehicle flies in the sky?",
            answers: ["Airplane", "Car", "Boat", "Train"],
            correctIndex: 0,
            imageName: "vehicle_airplane"
        ),
        QuizQuestion(
            question: "Which vehicle sails on water?",
            answers: ["Boat", "Car", "Bus", "Bike"],
            correctIndex: 0,
            imageName: "vehicle_boat"
        ),
        QuizQuestion(
            question: "Which vehicle has two wheels and you pedal it?",
            answers: ["Bicycle", "Car", "Train", "Bus"],
            correctIndex: 0,
            imageName: "vehicle_bike"
        ),
        QuizQuestion(
            question: "Which vehicle carries many people on tracks?",
            answers: ["Train", "Car", "Boat", "Bike"],
            correctIndex: 0,
            imageName: "vehicle_train"
        ),
        QuizQuestion(
            question: "Which vehicle do firefighters use?",
            answers: ["Fire truck", "Bicycle", "Boat", "Plane"],
            correctIndex: 0,
            imageName: "vehicle_firetruck"
        ),
        QuizQuestion(
            question: "Which vehicle takes children to school?",
            answers: ["School bus", "Boat", "Helicopter", "Bike"],
            correctIndex: 0,
            imageName: "vehicle_bus"
        ),
        QuizQuestion(
            question: "Which vehicle uses wings and an engine to fly?",
            answers: ["Airplane", "Car", "Boat", "Train"],
            correctIndex: 0,
            imageName: "vehicle_airplane"
        ),
        QuizQuestion(
            question: "Which vehicle is used to carry heavy dirt and rocks?",
            answers: ["Dump truck", "Bike", "Car", "Boat"],
            correctIndex: 0,
            imageName: "vehicle_dumptruck"
        ),
        QuizQuestion(
            question: "Which vehicle is small and has four wheels for families?",
            answers: ["Car", "Boat", "Train", "Helicopter"],
            correctIndex: 0,
            imageName: "vehicle_car"
        ),
        QuizQuestion(
            question: "Which vehicle has pedals and no engine?",
            answers: ["Bicycle", "Motorcycle", "Car", "Bus"],
            correctIndex: 0,
            imageName: "vehicle_bike"
        ),
        QuizQuestion(
            question: "Which vehicle can go under the water?",
            answers: ["Submarine", "Car", "Plane", "Bike"],
            correctIndex: 0,
            imageName: "vehicle_submarine"
        ),
        QuizQuestion(
            question: "Which vehicle has a siren and helps people who are hurt?",
            answers: ["Ambulance", "Bus", "Boat", "Bicycle"],
            correctIndex: 0,
            imageName: "vehicle_ambulance"
        ),
        QuizQuestion(
            question: "Which vehicle has a ladder and water hose?",
            answers: ["Fire truck", "Train", "Car", "Boat"],
            correctIndex: 0,
            imageName: "vehicle_firetruck"
        ),
        QuizQuestion(
            question: "Which vehicle delivers our mail and packages?",
            answers: ["Mail truck", "Boat", "Bike", "Train"],
            correctIndex: 0,
            imageName: "vehicle_mailtruck"
        ),
        QuizQuestion(
            question: "Which vehicle flies straight up and down with spinning blades?",
            answers: ["Helicopter", "Airplane", "Car", "Boat"],
            correctIndex: 0,
            imageName: "vehicle_helicopter"
        ),
        QuizQuestion(
            question: "Which vehicle moves on rails and makes a \"choo choo\" sound?",
            answers: ["Train", "Bus", "Car", "Bike"],
            correctIndex: 0,
            imageName: "vehicle_train"
        ),
        QuizQuestion(
            question: "Which vehicle can carry many people in the city on roads?",
            answers: ["Bus", "Boat", "Bike", "Submarine"],
            correctIndex: 0,
            imageName: "vehicle_bus"
        ),
        QuizQuestion(
            question: "Which vehicle is used to dig holes in the ground?",
            answers: ["Excavator", "Car", "Bike", "Boat"],
            correctIndex: 0,
            imageName: "vehicle_excavator"
        ),
        QuizQuestion(
            question: "Which vehicle is used in space to visit the moon?",
            answers: ["Rocket", "Car", "Boat", "Train"],
            correctIndex: 0,
            imageName: "vehicle_rocket"
        ),
        QuizQuestion(
            question: "Which vehicle pulls other cars that are broken?",
            answers: ["Tow truck", "Bicycle", "Bus", "Submarine"],
            correctIndex: 0,
            imageName: "vehicle_towtruck"
        )
    ]
}
