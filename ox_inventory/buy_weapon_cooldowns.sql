CREATE TABLE IF NOT EXISTS buy_weapon_cooldowns (
    citizenid VARCHAR(50) NOT NULL,
    itemname VARCHAR(50) NOT NULL,
    lasttime DATETIME NOT NULL,
    PRIMARY KEY (citizenid, itemname)
);