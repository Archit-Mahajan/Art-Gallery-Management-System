document.addEventListener("DOMContentLoaded", function() {
    const artistLinks = document.querySelectorAll(".artist-link");
    const artistInfo = document.getElementById("artist-info");


    artistLinks.forEach(function(link) {
        link.addEventListener("click", function(event) {
            event.preventDefault();
            const artistName = this.getAttribute("data-artist");
            const artistContent = getArtistInfo(artistName);
            artistInfo.innerHTML = artistContent;
            artistInfo.style.display = "block";
        });

        link.querySelector("img").addEventListener("click", function(event) {
            event.stopPropagation(); 
        });
    });


    function getArtistInfo(name) {
        let artistInfo = "";
        switch (name) {
            case "Sunil":
                artistInfo += "<h2>Sunil Gupta</h2>";
                artistInfo += "<img src='/Images/SunilGupta.webp' alt='Sunil Gupta'>";
                artistInfo += "<p>Born in 1953 in New Delhi, Indian–British–Canadian photographer Sunil Gupta has a master’s of arts from the Royal College of Art, London, and a PhD from the University of Westminster, London. Gupta has been involved with independent photography as a critical practice for over five decades, focusing on race, migration and queer issues.</p>";
                artistInfo += "<p>Gupta has several solo shows to his credit, including an important retrospective first presented at the Photographers’ Gallery, London, then travelling to the Ryerson Image Centre, Toronto (2022); as well as Charing Cross Hospital, London and Cambridge Wing Gallery, St. Mary’s Hospital, London, + Studio Voltaire (2022); Vadehra Art Gallery, New Delhi (2022); Hales London (2021); Materia, Rome (2021); the Photographers’ Gallery, London (2020); Brixton Tate Library, London (2020, 2019); Hales Gallery, New York (2019); Stephen Bulger Gallery, Toronto (2018); the Contemporary Arts Museum, Houston (2018); Pelz Gallery, University of London (2017); Cardiff Photo Festival (2017); SepiaEYE, New York (2017, 2014); Whitney Humanities Centre, Yale University (2015); Grosvenor Vadehra, London (2010); and Vadehra Art Gallery, New Delhi (2009), to name a few.</p>";
                artistInfo += "<p>His work is in many private and public collections, including the Tokyo Museum of Photography; the Victoria & Albert Museum, London; the Metropolitan Museum of Art, New York; Museum of London; George Eastman House, Rochester, USA; Tokyo Metropolitan Museum of Photography; Philadelphia Museum of Art; Royal Ontario Museum, Canada; Tate Modern, London; Harvard University, Boston; and the Museum of Modern Art, New York.</p>";
                artistInfo += "<p>He is a professorial fellow at UCA, Farnham, visiting lecturer at Kingston University and visiting tutor at the Royal College of Art, London. He was lead curator for the Houston Fotofest in 2018.</p>";
                artistInfo += "<p>The artist lives and works in London, UK.</p>";
                break;
            case "Ram":
                artistInfo += "<h2>Ram Kumar</h2>";
                artistInfo += "<img src='/Images/ram_kUMAR.jpg' alt='Ram Kumar'>";
                artistInfo += "<p>Born in 1924 in Simla, Ram Kumar was among India’s leading modernists. In the early 1930s, whilst still at school, Ram Kumar harbored greater intentions to be a writer rather than an artist, and it was only around 1945 that he formally started seeking out instruction in the arts. Having studied economics at St. Stephen’s College, New Delhi, in 1946, he went to Paris to study painting under Andre Lhote and Fernand Leger from 1949 to 1952, before which he worked briefly as a journalist. He remains a vital part of first-generation post-colonial Indian artists, a member of the fabled Progressive Artist’s Group, alongside F.N. Souza, S.H. Raza, and M.F. Husain.</p>";
                artistInfo += "<p>Ram Kumar’s work predominantly comprises abstract renditions of landscapes with jagged topographical contours, supplemented with a sense of ambient despair. Responding to different interpretations of landscape as a concept, Kumar uses a variety of textures to map out its architectonics through abstract strokes. Much of his oeuvre is dictated by a preoccupation with nature and being-ness, and the relationships between space, objects, and individuals.</p>";
                artistInfo += "<p>In his lifetime, he was also the recipient of many awards, including the Padma Shri in 1972 and the Prem Chand Puraskar for a collection of short stories. Some of his most recent exhibitions include ‘Split Visions Abstractions in Modern Indian Painting’, Aicon Gallery, New York, 2016, and retrospectives including ‘Masterpieces of Indian Modern Art’, DAG Modern, 2016; ‘After Midnight: Indian Modernism to Contemporary India, 1947-1997’, Queens Museum, Queens, 2015; amongst others.</p>";
                artistInfo += "<p>The artist passed away in 2018 at the age of 93.</p>";
                break;
            case "Arpita":
                artistInfo += "<h2>Arpita Singh</h2>";
                artistInfo += "<img src='/Images/arpita-singh-.jpg' alt='Arpita Singh'>";
                artistInfo += "<p>Born in 1937 in Kolkata, Arpita Singh graduated with a diploma in fine arts from Delhi Polytechnic. She is described as a figurative artist and a modernist, whose work continues to be inspired by traditional Indian art forms and aesthetics like miniaturist painting and different forms of folk art. Concerned with the experiences and movements of women in her country and the world at large, Singh paints a range of emotions and connections that she exchanges with these subjects, providing a topographical view of the ongoing communication she maintains with them.</p>";
                artistInfo += "<p>Singh’s work has been celebrated and featured regularly in shows held in India and internationally, including a retrospective exhibition at the Kiran Nadar Museum of Art, New Delhi, in 2019, where Singh presented a stellar body of works reflecting a lifetime of practice, which was met with stupendous critical acclaim. She has also participated in important institutional shows at the MK Gallery, UK (2023); Kochi-Muziris Biennale (2022); Asia Society Triennale (2020–21); the Gwangju Biennale (2021); the Mori Art Museum, Tokyo (2021); Centre Pompidou, Paris (2021); Lalit Kala Akademi, New Delhi (2014, 2013, 2011); Museo Nacional de Centro Reina Sofia, Madrid (2013); the Peabody Essex Museum, Salem, USA (2013); Lalit Kala Akademi, New Delhi (2014, 2013, 2011); Fukuoka Asian Art Museum, Japan (2012); the National Gallery of Modern Art, Mumbai (2012); Centre of International Modern Art, Kolkata (2011, 2010, 2008); the Museum of Fine Arts, Boston (2009); and Kunstmuseum Bern, Switzerland (2007).</p>";
                artistInfo += "<p>Singh has won several awards throughout her career, including the Parishad Samman from the Sahitya Kala Parishad, New Delhi, in 1991; the Kalidas Samman, Bhopal, in 1991; and the Padma Bhushan in 2011. She was awarded a fellowship at Lalit Kala Akademi in 2014.</p>";
                artistInfo += "<p>The artist lives and works in New Delhi, India.</p>";
                break;
            case "Sakshi":
                artistInfo += "<h2>Sakshi Gupta</h2>";
                artistInfo += "<img src='/All webpages/Artists/image7.jpg' alt='Sakshi Gupta'>";
                artistInfo += "<p>Sakshi Gupta is a home-based 19y/o artist, primarily working with traditional mediums. </p>";
                artistInfo += "<p>Notable works include Portrait of Gojo Saturo, Greek Statue, and Pier Scenery. </p>";
                break;
            case "Zaam":
                artistInfo += "<h2>Zaam Arif</h2>";
                artistInfo += "<img src='/Images/Zaam Arif.webp' alt='Zaam Arif'>";
                artistInfo += "<p>Born in 1999 in Karachi, Zaam Arif is largely a self-taught artist who has trained under the tutelage of his parents, both of whom are painters. Arif’s work is an overture of philosophical and literary influences, over time evolving provocatively into a deep introspection of the human experience, which he largely undertakes through a synergy between his characters and the environment in which they are posited, in his paintings.</p>";
                artistInfo += "<p>Arif has recently held solo exhibitions in the United Kingdom, the United States, and Pakistan. His upcoming shows include a first solo exhibition in India at Vadehra Art Gallery, New Delhi (2024); and a viewing at the Cabin LA, Los Angeles (2024). He has also participated in group exhibitions at Platform by David Zwirner, New York (2023); Black Wall Street Gallery, New York (2022); Full Circle Gallery, Karachi (2021); Anna Molka Gallery, Lahore (2021); and Guerilla Art Shows, New York (2021).</p>";
                artistInfo += "<p>Arif’s work was exclusively featured in The New Yorker magazine in 2021, making him the youngest Pakistani artist to be published in the prestigious magazine. In 2021, his work was selected to be exhibited in the Malamegi Lab Award and was awarded the Malamegi Lab Research Grant in Italy. He completed a residency at La Brea in Los Angeles in 2023.</p>";
                artistInfo += "<p>The artist lives and works in Houston, Texas.</p>";
                break;
            default:
                artistInfo += "<h2>Artist Not Found</h2>";
                artistInfo += "<p>Sorry, information not available for this artist.</p>";
        }
        return artistInfo;
    }
});
