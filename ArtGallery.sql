create database project;
use project;

CREATE TABLE Gallery(
	gallery_id INT PRIMARY KEY,
    name VARCHAR(50),
    address VARCHAR(100));
    
CREATE TABLE Artists(
	artist_id INT PRIMARY KEY,
    artist_name VARCHAR(50),
    description VARCHAR(100),
    birthdate DATE);
    
CREATE TABLE Artworks(
	art_id INT PRIMARY KEY,
    title VARCHAR(50),
    artist_name VARCHAR(100),
    artist_id INT,
    year INT,
    description VARCHAR(100),
    gallery_id INT,
    FOREIGN KEY(artist_id) REFERENCES Artists(artist_id),
    FOREIGN KEY(gallery_id) REFERENCES Gallery(gallery_id));
    
CREATE TABLE Collections (
    collection_id INT PRIMARY KEY,
    collection_name VARCHAR(255),
    collection_theme VARCHAR(255)
);

CREATE TABLE Sellers (
    purchases VARCHAR(255),
    art_id INT,
    FOREIGN KEY (art_id) REFERENCES Artworks(art_id)
);

CREATE TABLE Buyers (
    sold VARCHAR(255),
    art_id INT,
    FOREIGN KEY (art_id) REFERENCES Artworks(art_id)
);

CREATE TABLE Patrons (
    artist_name VARCHAR(255),
    amount DECIMAL(10, 2)
);

CREATE TABLE Staff (
    emp_id INT PRIMARY KEY,
    name VARCHAR(255),
    department VARCHAR(255),
    salary DECIMAL(10, 2),
    gallery_id INT,
    FOREIGN KEY (gallery_id) REFERENCES Gallery(gallery_id)
);

CREATE TABLE Exhibitions (
    exhibition_id INT PRIMARY KEY,
    date DATE,
    exhibition_name VARCHAR(255),
    exhibition_theme VARCHAR(255),
    location VARCHAR(255),
    gallery_id INT,
    FOREIGN KEY (gallery_id) REFERENCES Gallery(gallery_id)
);

CREATE TABLE Collaborations (
    gallery_id INT,
    gallery_name VARCHAR(255),
    project VARCHAR(255),
    FOREIGN KEY (gallery_id) REFERENCES Gallery(gallery_id)
);

CREATE TABLE Visitors (
    date DATE,
    name VARCHAR(255),
    gallery_id INT
);

CREATE TABLE Branches (
    city VARCHAR(255),
    country VARCHAR(255),
    gallery_id INT,
    FOREIGN KEY (gallery_id) REFERENCES Gallery(gallery_id)
);

CREATE TABLE Affiliations (
    college_id INT PRIMARY KEY,
    college_name VARCHAR(255),
    point_of_contact VARCHAR(255),
    gallery_id INT,
    FOREIGN KEY (gallery_id) REFERENCES Gallery(gallery_id)
);

CREATE TABLE Curators (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    specialization VARCHAR(255),
    art_id INT,
    FOREIGN KEY (art_id) REFERENCES Artworks(art_id)
);

CREATE TABLE PRM (
    social_media_hashtags VARCHAR(255),
    sponsorship_details TEXT,
    gallery_id INT,
    FOREIGN KEY (gallery_id) REFERENCES Gallery(gallery_id)
);

INSERT INTO Gallery (gallery_id, name, address) VALUES
(1, 'Art Gallery One', '123 Main St, City A'),
(2, 'Modern Art Museum', '456 Elm St, City B'),
(3, 'Contemporary Art Center', '789 Oak St, City C'),
(4, 'City Art Space', '101 Pine St, City D'),
(5, 'Metropolitan Gallery', '202 Maple St, City E'),
(6, 'Urban Art Hub', '303 Cedar St, City F'),
(7, 'Creative Art Studio', '404 Walnut St, City G'),
(8, 'Gallery X', '505 Spruce St, City H'),
(9, 'Artistic Vision Gallery', '606 Birch St, City I'),
(10, 'Expressive Arts Center', '707 Cherry St, City J');

INSERT INTO Artists (artist_id, artist_name, description, birthdate) VALUES
(1, 'John Doe', 'Abstract painter', '1990-05-15'),
(2, 'Jane Smith', 'Sculptor specializing in bronze', '1985-08-20'),
(3, 'Michael Johnson', 'Photorealistic portrait artist', '1978-03-10'),
(4, 'Emily Brown', 'Mixed media artist', '1995-11-25'),
(5, 'David Lee', 'Installation artist', '1982-07-08'),
(6, 'Sarah Taylor', 'Contemporary painter', '1989-09-30'),
(7, 'Robert Wilson', 'Digital artist', '1992-12-18'),
(8, 'Emma Garcia', 'Ceramics artist', '1980-04-05'),
(9, 'Daniel Clark', 'Street artist', '1987-06-22'),
(10, 'Olivia Martinez', 'Land art creator', '1993-02-14');

INSERT INTO Artworks (art_id, title, artist_name, artist_id, year, description, gallery_id) VALUES
(1, 'Untitled', 'John Doe', 1, 2020, 'Abstract painting on canvas', 1),
(2, 'Sculpture I', 'Jane Smith', 2, 2018, 'Bronze sculpture of a woman', 2),
(3, 'Portrait of a Lady', 'Michael Johnson', 3, 2019, 'Photorealistic portrait in oil', 3),
(4, 'Mixed Media II', 'Emily Brown', 4, 2021, 'Mixed media collage', 4),
(5, 'Installation III', 'David Lee', 5, 2017, 'Interactive installation using mirrors', 5),
(6, 'Abstract Landscape', 'Sarah Taylor', 6, 2016, 'Contemporary landscape painting', 6),
(7, 'Digital Artwork I', 'Robert Wilson', 7, 2022, 'Digital artwork exploring AI', 7),
(8, 'Ceramic Vase', 'Emma Garcia', 8, 2015, 'Handcrafted ceramic vase', 8),
(9, 'Street Mural', 'Daniel Clark', 9, 2014, 'Graffiti mural depicting city life', 9),
(10, 'Land Art Installation', 'Olivia Martinez', 10, 2013, 'Outdoor land art installation', 10);

INSERT INTO Collections (collection_id, collection_name, collection_theme) VALUES
(1, 'Abstract Expressions', 'Exploring the realm of abstract art'),
(2, 'Sculptures of Nature', 'Nature-inspired sculptures in various mediums'),
(3, 'Portraits of Identity', 'Exploring individual identity through portraiture'),
(4, 'Mixed Media Marvels', 'Innovative mixed media artworks'),
(5, 'Immersive Installations', 'Interactive and immersive art experiences'),
(6, 'Contemporary Landscapes', 'Interpretations of landscapes in contemporary art'),
(7, 'Digital Horizons', 'Pushing the boundaries of digital art'),
(8, 'Ceramics Collection', 'Celebrating the artistry of ceramics'),
(9, 'Urban Expressions', 'Exploring urban culture through street art'),
(10, 'Earth Art', 'Artworks inspired by and created within nature');

INSERT INTO Sellers (purchases, art_id) VALUES
('Private Collector', 1),
('Art Enthusiast', 3),
('Museum', 5),
('Corporate Collection', 7),
('Art Collector', 9),
('Gallery', 2),
('Private Collector', 4),
('Art Enthusiast', 6),
('Museum', 8),
('Corporate Collection', 10);

INSERT INTO Buyers (sold, art_id) VALUES
('Private Collector', 1),
('Art Enthusiast', 3),
('Museum', 5),
('Corporate Collection', 7),
('Art Collector', 9),
('Gallery', 2),
('Private Collector', 4),
('Art Enthusiast', 6),
('Museum', 8),
('Corporate Collection', 10);

INSERT INTO Patrons (artist_name, amount) VALUES
('John Doe', 5000.00),
('Jane Smith', 7500.00),
('Michael Johnson', 3000.00),
('Emily Brown', 4000.00),
('David Lee', 6000.00),
('Sarah Taylor', 3500.00),
('Robert Wilson', 4500.00),
('Emma Garcia', 3800.00),
('Daniel Clark', 4200.00),
('Olivia Martinez', 5500.00);

INSERT INTO Staff (emp_id, name, department, salary, gallery_id) VALUES
(1, 'John Smith', 'Administration', 45000.00, 1),
(2, 'Emma Johnson', 'Curatorial', 50000.00, 2),
(3, 'Michael Williams', 'Marketing', 48000.00, 3),
(4, 'Sarah Brown', 'Education', 47000.00, 4),
(5, 'David Taylor', 'Maintenance', 46000.00, 5),
(6, 'Jessica Lee', 'Security', 44000.00, 6),
(7, 'Daniel Clark', 'Hospitality', 46000.00, 7),
(8, 'Olivia Martinez', 'Events', 47000.00, 8),
(9, 'James Wilson', 'Finance', 49000.00, 9),
(10, 'Emily Garcia', 'IT', 51000.00, 10);

INSERT INTO Exhibitions (exhibition_id, date, exhibition_name, exhibition_theme, location, gallery_id) VALUES
(1, '2024-05-01', 'Abstract Visions', 'Exploring abstract art forms', 'Main Exhibition Hall', 1),
(2, '2024-06-15', 'Sculptural Wonders', 'Showcasing diverse sculptures', 'Grand Gallery', 2),
(3, '2024-07-20', 'Portraits Unveiled', 'Highlighting the art of portraiture', 'Portrait Gallery', 3),
(4, '2024-08-10', 'Mixed Media Magic', 'Celebrating innovation in mixed media', 'Contemporary Wing', 4),
(5, '2024-09-05', 'Immersive Experiences', 'Engaging visitors in interactive installations', 'Interactive Zone', 5),
(6, '2024-10-15', 'Contemporary Landscapes', 'Interpreting landscapes in contemporary art', 'Landscape Pavilion', 6),
(7, '2024-11-20', 'Digital Frontiers', 'Exploring the intersection of art and technology', 'Digital Gallery', 7),
(8, '2024-12-10', 'Ceramics Showcase', 'Showcasing the beauty of ceramics', 'Ceramics Hall', 8),
(9, '2025-01-15', 'Urban Expressions', 'Reflecting urban culture through street art', 'Street Art Alley', 9),
(10, '2025-02-20', 'Earth Art Symposium', 'Celebrating art created within and inspired by nature', 'Nature Reserve', 10);

INSERT INTO Collaborations (gallery_id, gallery_name, project) VALUES
(1, 'Art Gallery One', 'Community Art Project'),
(2, 'Modern Art Museum', 'Community Art Project'),
(3, 'Contemporary Art Center', 'Artist Residency Program'),
(4, 'City Art Space', 'Public Art Installation Initiative'),
(5, 'Metropolitan Gallery', 'Artist Residency Program'),
(6, 'Urban Art Hub', 'Street Art Festival'),
(7, 'Creative Art Studio', 'Digital Art Workshop Series'),
(8, 'Gallery X', 'Public Art Installation Initiative'),
(9, 'Artistic Vision Gallery', 'Street Art Festival'),
(10, 'Expressive Arts Center', 'Public Art Installation Initiative');

INSERT INTO Visitors (date, name, gallery_id) VALUES
('2024-05-02', 'John Smith', 1),
('2024-06-16', 'Emma Johnson', 2),
('2024-07-21', 'Michael Williams', 1),
('2024-08-11', 'Sarah Brown', 4),
('2024-09-06', 'David Taylor', 5),
('2024-10-16', 'Jessica Lee', 1),
('2024-11-21', 'Daniel Clark', 1),
('2024-12-11', 'Olivia Martinez', 1),
('2025-01-16', 'James Wilson', 1),
('2025-02-21', 'Emily Garcia', 6);

INSERT INTO Branches (city, country, gallery_id) VALUES
('Mumbai', 'India', 1),
('Bangalore', 'India', 2),
('Chennai', 'India', 3),
('Kolkata', 'India', 4),
('Mumbai', 'India', 5),
('London', 'UK', 6),
('Milan', 'France', 7),
('Sydney', 'Australia', 8),
('Kolkata', 'India', 9),
('Kolkata', 'India', 10);

INSERT INTO Affiliations (college_id, college_name, point_of_contact, gallery_id) VALUES
(1, 'Art College One', 'John Doe', 1),
(2, 'Modern Art Institute', 'Jane Smith', 2),
(3, 'Contemporary Art School', 'Michael Johnson', 3),
(4, 'City Art Academy', 'Emily Brown', 4),
(5, 'Metropolitan School of Art', 'David Lee', 5),
(6, 'Urban Art Institute', 'Sarah Taylor', 6),
(7, 'Creative Art College', 'Robert Wilson', 7),
(8, 'Gallery Arts Center', 'Emma Garcia', 8),
(9, 'Expressive Art School', 'Daniel Clark', 9),
(10, 'Nature Art Institute', 'Olivia Martinez', 10);

INSERT INTO Curators (id, name, specialization, art_id) VALUES
(1, 'Emma Wilson', 'Abstract Art', 1),
(2, 'Benjamin Hayes', 'Sculpture', 2),
(3, 'Olivia Reynolds', 'Portraiture', 3),
(4, 'Ethan Carter', 'Mixed Media', 4),
(5, 'Ava Phillips', 'Installation Art', 5),
(6, 'William Brooks', 'Contemporary Art', 6),
(7, 'Sophia Mitchell', 'Digital Art', 7),
(8, 'James Richardson', 'Ceramics', 8),
(9, 'Mia Morgan', 'Street Art', 9),
(10, 'Alexander Thompson', 'Land Art', 10);

INSERT INTO PRM VALUES
('#ArtGalleryOne', 'Sponsored by Local Businesses', 1),
('#CommunityArt', 'Sponsored by Local Businesses', 1),
('#ModernArtMuseum', 'Supported by Government Grant', 2),
('#Education', 'Supported by Government Grant', 2),
('#ContemporaryArtCenter', 'Funded by Private Foundation', 3),
('#ArtistResidency', 'Funded by Private Foundation', 3),
('#CityArtSpace', 'Corporate Sponsorship', 4),
('#PublicArt', 'Corporate Sponsorship', 4),
('#MetropolitanGallery', 'Collaboration with International Partners', 5),
('#CulturalExchange', 'Collaboration with International Partners', 5),
('#UrbanArtHub', 'Local Municipality Support', 6),
('#StreetArt', 'Local Municipality Support', 6),
('#CreativeArtStudio', 'Technology Company Sponsorship', 7),
('#DigitalArt', 'Technology Company Sponsorship', 7),
('#GalleryX', 'Arts Council Grant', 8),
('#CeramicsSymposium', 'Arts Council Grant', 8),
('#ArtisticVisionGallery', 'Private Patron Support', 9),
('#ContemporaryArt', 'Private Patron Support', 9),
('#ExpressiveArtsCenter', 'Environmental Organization Sponsorship', 10),
('#NatureArt', 'Environmental Organization Sponsorship', 10);

CREATE TABLE Project_Assigned (
    project_id INT,
    emp_id INT,
    PRIMARY KEY (project_id, emp_id),
    FOREIGN KEY (project_id) REFERENCES Project_Details(project_id),
    FOREIGN KEY (emp_id) REFERENCES Employee_Details(emp_id)
);

CREATE TABLE Project_Details (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(100),
    project_description VARCHAR(255),
    project_due_date DATE,
    project_status VARCHAR(50)
);

CREATE TABLE Employee_Details (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100),
    department VARCHAR(100)
);

INSERT INTO Project_Details VALUES
    (1, 'Art Exhibition', 'Organize an art exhibition featuring local artists.', '2024-06-10', 'In Progress'),
    (2, 'Art Restoration Project', 'Restore and preserve valuable artworks in the gallery collection.', '2024-06-15', 'Completed'),
    (3, 'Public Art Installation', 'Coordinate the installation of public art pieces in the city.', '2024-06-20', 'Pending'),
    (4, 'Art Workshop Series', 'Plan and conduct a series of art workshops for children and adults.', '2024-06-25', 'In Progress'),
    (5, 'Art Acquisition Initiative', 'Research and acquire new artworks to enrich the gallery collection.', '2024-06-30', 'Completed'),
    (6, 'Art Education Program', 'Develop and implement educational programs focused on art appreciation.', '2024-07-05', 'Pending'),
    (7, 'Artists-in-Residence Program', 'Establish a residency program for emerging artists.', '2024-07-10', 'In Progress'),
    (8, 'Art Marketing Campaign', 'Launch a marketing campaign to promote upcoming art events.', '2024-07-15', 'Completed'),
    (9, 'Art Auction Fundraiser', 'Organize an art auction to raise funds for charity.', '2024-07-20', 'Pending'),
    (10, 'Digital Art Exhibition', 'Curate an exhibition showcasing digital artworks and interactive installations.', '2024-07-25', 'In Progress');


INSERT INTO Employee_Details VALUES
    (1, 'John Doe', 'Marketing'),
    (2, 'Jane Smith', 'Finance'),
    (3, 'Alice Johnson', 'HR'),
    (4, 'Bob Brown', 'Operations'),
    (5, 'Emily Davis', 'Marketing'),
    (6, 'Michael Wilson', 'Finance'),
    (7, 'Sophia Martinez', 'HR'),
    (8, 'William Anderson', 'Operations'),
    (9, 'Olivia Taylor', 'Marketing'),
    (10, 'James Thomas', 'Finance');

INSERT INTO Project_Assigned VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5),
    (6, 6),
    (7, 7),
    (8, 8),
    (9, 9),
    (10, 10);



/*1. The 'Digital Art Workshop Series' has unfortunately been canceled. Update the database accordingly.*/
DELETE FROM collaborations WHERE project="Digital Art Workshop Series";

/*2. John Smith's salary got incremented by Rs.1000. Update the database accordingly.*/
UPDATE staff SET salary=salary+1000 WHERE Name="John Smith";

/*3. A client wishes to look into all exhibitions taking place after 01/09/2024. Provide details accordingly.*/
SELECT * FROM exhibitions WHERE date>'2024-09-01';

/*4. Display all patrons in decreasing order of the amount of patronage.*/
SELECT * FROM patrons ORDER BY amount DESC;

/*5. Find the total number of artworks sold by each seller.*/
SELECT s.purchases, COUNT(*) AS total_sold_artworks FROM Sellers s JOIN Artworks a ON s.art_id = a.art_id GROUP BY s.purchases;

/*6. How many artworks are currently in Gallery One?*/
select count(art_id) from artworks where gallery_id=1;

/*7. Retrieve all the artworks created by a specific artist.*/
SELECT * FROM Artworks WHERE artist_id = (SELECT artist_id FROM Artists WHERE artist_name = 'Emily Brown');
SELECT * FROM Artworks WHERE artist_name =  'Emily Brown';

/*8. List all the galleries with their affiliated colleges.*/
SELECT g.name AS gallery_name, a.college_name FROM Gallery g JOIN Affiliations a ON g.gallery_id = a.gallery_id;

/*9. List all the exhibitions visited by a particular visitor.*/
SELECT e.exhibition_name, e.date FROM Exhibitions e JOIN Visitors v ON e.gallery_id = v.gallery_id WHERE v.name = 'John Smith';

/*10. Find the names of all the artists who have created artworks exhibited in the same gallery as the exhibition named 'Abstract Visions'.*/
SELECT artist_name FROM Artworks WHERE gallery_id = (
        SELECT gallery_id FROM Exhibitions WHERE exhibition_name = 'Abstract Visions'
    );

/*11. Find the total number of artworks exhibited in each location. */
SELECT location, COUNT(*) AS total_exhibited_artworks FROM Exhibitions GROUP BY location;

/*12. List all the collections with a specific theme. */
SELECT * FROM Collections WHERE collection_theme = 'Exploring the realm of abstract art';

/*13. Retrieve the names of all the artworks with titles containing the word 'portrait'. */
SELECT * FROM Artworks WHERE title LIKE '%portrait%';

/*14. Rank salaries of all staff. */
SELECT emp_id,salary,rank() over(order by salary) FROM staff;

/*15. Find out top 3 patronage amount*/
SELECT artist_name, amount FROM Patrons ORDER BY amount DESC LIMIT 3;

/*16. Create view containing only artwork title and description. */
CREATE VIEW artworks_vw AS SELECT art_id,title,description FROM artworks;
SELECT * FROM artworks_vw;

/*17. Find the artists whose birth year is greater than all the birth years of artists named 'John Doe'. */
SELECT artist_name FROM Artists WHERE birthdate > ALL (
    SELECT birthdate FROM Artists WHERE artist_name = 'John Doe'
);

/*18. Retrieve the names of all the galleries that either host exhibitions or collaborate with other galleries. */
SELECT name FROM Gallery WHERE gallery_id IN (
    SELECT gallery_id FROM Exhibitions
    UNION
    SELECT gallery_id FROM Collaborations
);

/*19. Find the names of all the galleries that both host exhibitions and collaborate with other galleries. */
SELECT name FROM Gallery WHERE gallery_id IN (
    SELECT gallery_id FROM Exhibitions
    INTERSECT
    SELECT gallery_id FROM Collaborations
);

/*20. Grant permission to the user 'marketing_team' to select data from the 'Artworks' table. */
CREATE USER 'marketing_team'@'localhost' IDENTIFIED BY 'password';
GRANT SELECT ON project.Artworks TO 'marketing_team'@'localhost';


