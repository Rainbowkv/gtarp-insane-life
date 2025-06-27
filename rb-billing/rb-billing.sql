CREATE TABLE IF NOT EXISTS rb_billing (
    id INT AUTO_INCREMENT PRIMARY KEY,
    billingjob VARCHAR(50), -- 发起账单的工作名称，如 police / ambulance
    billedby VARCHAR(50),   -- 发出者 citizenid
    billedbyname VARCHAR(50),   
    billedto VARCHAR(50),   -- 接收者 citizenid
    billedtoname VARCHAR(50),   
    amount INT NOT NULL,
    status ENUM('unpaid', 'paid') DEFAULT 'unpaid',
    reason TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);