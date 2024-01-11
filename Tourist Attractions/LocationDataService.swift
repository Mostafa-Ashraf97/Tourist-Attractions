//
//  LocationDataService.swift
//  Tourist Attractions
//
//  Created by A on 07/01/2024.
//

import Foundation
import MapKit

class LocationsDataService {
    
    static let locations: [Location] = [
        Location(
            name: "Colosseum",
            cityName: "Rome",
            coordinates: CLLocationCoordinate2D(latitude: 41.8902, longitude: 12.4922),
            description: "The Colosseum is an oval amphitheatre in the centre of the city of Rome, Italy, just east of the Roman Forum. It is the largest ancient amphitheatre ever built, and is still the largest standing amphitheatre in the world today, despite its age.",
            imageNames: [
                "rome-colosseum-1",
                "rome-colosseum-2",
                "rome-colosseum-3",
            ],
            link: "https://en.wikipedia.org/wiki/Colosseum"),
        Location(
            name: "Pantheon",
            cityName: "Rome",
            coordinates: CLLocationCoordinate2D(latitude: 41.8986, longitude: 12.4769),
            description: "The Pantheon is a former Roman temple and since the year 609 a Catholic church, in Rome, Italy, on the site of an earlier temple commissioned by Marcus Agrippa during the reign of Augustus.",
            imageNames: [
                "rome-pantheon-1",
                "rome-pantheon-2",
                "rome-pantheon-3",
            ],
            link: "https://en.wikipedia.org/wiki/Pantheon,_Rome"),
        Location(
            name: "Trevi Fountain",
            cityName: "Rome",
            coordinates: CLLocationCoordinate2D(latitude: 41.9009, longitude: 12.4833),
            description: "The Trevi Fountain is a fountain in the Trevi district in Rome, Italy, designed by Italian architect Nicola Salvi and completed by Giuseppe Pannini and several others. Standing 26.3 metres high and 49.15 metres wide, it is the largest Baroque fountain in the city and one of the most famous fountains in the world.",
            imageNames: [
                "rome-trevifountain-1",
                "rome-trevifountain-2",
                "rome-trevifountain-3",
            ],
            link: "https://en.wikipedia.org/wiki/Trevi_Fountain"),
        Location(
            name: "Eiffel Tower",
            cityName: "Paris",
            coordinates: CLLocationCoordinate2D(latitude: 48.8584, longitude: 2.2945),
            description: "The Eiffel Tower is a wrought-iron lattice tower on the Champ de Mars in Paris, France. It is named after the engineer Gustave Eiffel, whose company designed and built the tower. Locally nicknamed 'La dame de fer', it was constructed from 1887 to 1889 as the centerpiece of the 1889 World's Fair and was initially criticized by some of France's leading artists and intellectuals for its design, but it has become a global cultural icon of France and one of the most recognizable structures in the world.",
            imageNames: [
                "paris-eiffeltower-1",
                "paris-eiffeltower-2",
            ],
            link: "https://en.wikipedia.org/wiki/Eiffel_Tower"),
        Location(
            name: "Louvre Museum",
            cityName: "Paris",
            coordinates: CLLocationCoordinate2D(latitude: 48.8606, longitude: 2.3376),
            description: "The Louvre, or the Louvre Museum, is the world's most-visited museum and a historic monument in Paris, France. It is the home of some of the best-known works of art, including the Mona Lisa and the Venus de Milo. A central landmark of the city, it is located on the Right Bank of the Seine in the city's 1st arrondissement.",
            imageNames: [
                "paris-louvre-1",
                "paris-louvre-2",
                "paris-louvre-3",
            ],
            link: "https://en.wikipedia.org/wiki/Louvre"),
        Location(name: "Pyramids of Giza", cityName: "Giza", coordinates: CLLocationCoordinate2D(latitude: 29.9792, longitude: 31.1342), description: "The Egyptian pyramids are ancient masonry structures located in Egypt. Sources cite at least 118 identified as Egyptian pyramids. Approximately 80 pyramids were built within the Kingdom of Kush, now located in the modern country of Sudan. Of those located in modern Egypt, most were built as tombs for the country's pharaohs and their consorts during the Old and Middle Kingdom periods.", imageNames: ["pyramids-1", "pyramids-2"], link: "https://en.wikipedia.org/wiki/Egyptian_pyramids"),
        Location(name: "Karnak Temple", cityName: "Luxor", coordinates: CLLocationCoordinate2D(latitude: 25.7188, longitude: 32.6573), description: "The Karnak Temple is a massive temple complex to which dozens of pharaohs added their own constructions. The area was in constant development and use between the Middle Kingdom (2080–1640 B.C.) and the early Christian period. The immense size of the complex, as well as its various architectural, artistic, and linguistic details make it an invaluable historical site and resource for understanding the evolution of ancient Egypt, and thus its conservation is critical.", imageNames: ["karnak-1", "karnak-2"], link: "https://en.wikipedia.org/wiki/Karnak"),
        Location(name: "Burj Khalifa", cityName: "Dubai", coordinates: CLLocationCoordinate2D(latitude: 25.1972, longitude: 55.2744), description: "The Burj Khalifa[a] (known as the Burj Dubai prior to its inauguration) is a skyscraper in Dubai, United Arab Emirates. It is the world's tallest structure. With a total height of 829.8 m (2,722 ft, or just over half a mile) and a roof height (excluding antenna, but including a 242.6 m spire)[2] of 828 m (2,717 ft), the Burj Khalifa has been the tallest structure and building in the world since its topping out in 2009, supplanting Taipei 101, the previous holder of that status.", imageNames: ["khalifa-1", "khalifa-2"], link: "https://en.wikipedia.org/wiki/Burj_Khalifa"),
        Location(name: "Great Wall of China", cityName: "Beijing", coordinates: CLLocationCoordinate2D(latitude: 40.4319, longitude: 116.5704), description: "The Great Wall of China (traditional Chinese: 萬里長城; simplified Chinese: 万里长城; pinyin: Wànlǐ Chángchéng, literally ten thousand li long wall) is a series of fortifications that were built across the historical northern borders of ancient Chinese states and Imperial China as protection against various nomadic groups from the Eurasian Steppe. Several walls were built from as early as the 7th century BC,[4] with selective stretches later joined by Qin Shi Huang (220–206 BC), the first emperor of China. Little of the Qin wall remains.[5] Later on, many successive dynasties built and maintained multiple stretches of border walls. The best-known sections of the wall were built by the Ming dynasty (1368–1644). ", imageNames: ["greatwall-1", "greatwall-2"], link: "https://en.wikipedia.org/wiki/Great_Wall_of_China"),
        Location(name: "Statue of Liberty", cityName: "New York", coordinates: CLLocationCoordinate2D(latitude: 40.6892, longitude: 74.0445), description: "The statue is a figure of Libertas, the Roman goddess of liberty. She holds a torch above her head with her right hand, and in her left hand carries a tabula ansata inscribed JULY IV MDCCLXXVI (July 4, 1776, in Roman numerals), the date of the U.S. Declaration of Independence. A broken chain and shackle lie at her feet as she walks forward, commemorating the national abolition of slavery following the American Civil War.[8] After its dedication the statue became an icon of freedom and of the United States, being subsequently seen as a symbol of welcome to immigrants arriving by sea.", imageNames: ["liberty-1", "liberty-2"], link: "https://en.wikipedia.org/wiki/Statue_of_Liberty"),
        Location(name: "Taj Mahal", cityName: "Agra", coordinates: CLLocationCoordinate2D(latitude: 27.1751, longitude: 78.0421), description: "The Taj Mahal is an ivory-white marble mausoleum on the right bank of the river Yamuna in Agra, Uttar Pradesh, India. It was commissioned in 1631 by the fifth Mughal emperor, Shah Jahan to house the tomb of his beloved wife, Mumtaz Mahal; it also houses the tomb of Shah Jahan himself.", imageNames: ["mahal-1", "mahal-2"], link: "https://en.wikipedia.org/wiki/Taj_Mahal")
    ]
    
}
