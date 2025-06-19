CREATE TABLE rb_whitelist (
    license VARCHAR(50) NOT NULL,
    player_name VARCHAR(100) NOT NULL,
    status VARCHAR(20) NOT NULL DEFAULT 'pending', -- pending, approved, denied
    PRIMARY KEY (license, player_name)
);