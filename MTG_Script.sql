DROP TABLE IF EXISTS card, rarity, artist, `set`;

CREATE TABLE rarity (
    rarity_id INT AUTO_INCREMENT PRIMARY KEY,
    rarity_name VARCHAR(45));

CREATE TABLE `set` (
    set_id INT AUTO_INCREMENT PRIMARY KEY,
    set_name VARCHAR(45),
    release_date DATE);
    
CREATE TABLE artist ( 
	artist_id INT AUTO_INCREMENT PRIMARY KEY,
	artist_name VARCHAR(45));

CREATE TABLE card (
    card_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(45),
    mana_cost VARCHAR(45),
    type VARCHAR(45),
    colors VARCHAR(45),
    rarity_id INT,
    artist_id INT,
    set_id INT,
    FOREIGN KEY (rarity_id) REFERENCES rarity(rarity_id),
    FOREIGN KEY (artist_id) REFERENCES artist(artist_id),
    FOREIGN KEY (set_id) REFERENCES `set`(set_id));

INSERT INTO rarity (rarity_name) VALUES 
('common'),
('Uncommon'),
('Rare'),
('Mythical'),
('Promo'),
('Land');

INSERT INTO `set` (set_name, release_date) VALUES
('FDN', '2024-11-15'),
('DSK', '2024-09-27');

INSERT INTO artist (artist_name) VALUES
('Chris Rallis'),
('Andrew Mar'),
('Pauline Voss'),
('Justyna Dura'),
('Rebecca Guay'),
('Ben Hill'),
('Maxime Minard'),
('Billy Christian'),
('Takeuchi Moto'),
('Lie Setiawan'),
('Dan Mumford'),
('Warren Mahy'),
('Bryan Sola'),
('Irina Nordsol'),
('Jarel Threat'),
('Julian Kok Joon Wen'),
('Mark Winters'),
('Volkan Baga');

INSERT INTO card (name, mana_cost, type, colors, rarity_id, artist_id, set_id) VALUES
('Anthem of Champions', '{1G}{1W}', 'Enchantment','Green/White', 3, 1, 1),
('Blasphemous Edict', '{3X}{2B}', 'Sorcery', 'Black', 3, 2, 1),
('Extravagant Replication', '{4X}{2U}', 'Echantment', 'Blue', 5, 3, 1),
('Mild-Mannered Librarian', '{1G}', 'Creature', 'Green', 2, 4, 1),
('Plains', NULL, 'Basic Land', 'White', 6, 5, 1),
('Hidetsugu''s Second Rite', '{3X}{1R}', 'Instant', 'Red', 2, 6, 1),
('Balustrade Wurm', '{3X}{2G}', 'Creature', 'Green', 3, 7, 2),
('Shepherding Spirits', '{4X}{2W}', 'Creature', 'White', 1, 8, 2),
('Overlord of the Mistmoors', '{5X}{2W}', 'Enchantment Creature', 'White', 4, 9, 2),
('Ashroot Animist', '{2X}{1R}{1G}', 'Creature', 'Green/Red', 4, 10, 1),
('Swamp', NULL, 'Basic Land', 'Black', 6, 11, 2),
('Gorehorn raider', '{4X}{1R}', 'Creature', 'Red', 1, 12, 1),
('Abhorrent Oculus', '{2X}{1U}', 'Creature', 'Blue', 4, 13, 2),
('Unstoppable Slasher', '{2X}{1B}', 'Creature', 'Black', 3, 7, 2),
('Quilled Greatwurm', '{4X}{2G}', 'Creature', 'Green', 4, 7, 1),
('Adamant will', '{1X}{1W}', 'Instant', 'White', 1, 14, 1),
('Untimely Malfunction', '{1X}{1R}', 'Instant', 'Red', 2, 15, 2),
('Gloomlake Verge', NULL, 'Land', 'Blue/Black', 6, 16, 2),
('Chandra, Flameshaper', '{5X}{2R}', 'Legendary Planeswalker', 'Red', 4, 17, 1),
('Gilded Lotus', '{5X}', 'Artifact', 'Colorless', 3, 18, 1);