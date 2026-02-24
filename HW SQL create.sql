CREATE TABLE [dbo].[clients](
[client_id] INT IDENTITY(1,1) PRIMARY KEY,
[first_name] NVARCHAR(100) NOT NULL,
[middle_name] NVARCHAR(100),
[last_name] NVARCHAR(100) NOT NULL,
[date_of_birth] DATE NOT NULL,
[passport_data] NVARCHAR(100) NOT NULL,
[phone] NVARCHAR(20) NOT NULL,
[email] NVARCHAR(255) NOT NULL,
[registration_date] DATETIME);
GO

CREATE TABLE [dbo].[currency_type](
[currency_id] INT IDENTITY(1,1) PRIMARY KEY,
[currency] NVARCHAR(100) NOT NULL);
GO


CREATE TABLE [dbo].[officeadresses](
[office_id] INT IDENTITY(1,1) PRIMARY KEY,
[office_name] NVARCHAR(100) NOT NULL,
[street] NVARCHAR(255) NOT NULL,
[city] NVARCHAR(100) NOT NULL,
[region] NVARCHAR(100),
[country] NVARCHAR(100) NOT NULL,
[postal_code] NVARCHAR(20),
[contact_email] NVARCHAR(255),
[contact_phone] NVARCHAR(20),
[working_hours] NVARCHAR(100) NOT NULL);
GO

CREATE TABLE [dbo].[position_type](
[position_id] INT IDENTITY(1,1) PRIMARY KEY,
[position] NVARCHAR(100) NOT NULL);
GO

CREATE TABLE [dbo].[employees](
[employee_id] INT IDENTITY(1,1) PRIMARY KEY,
[office_id] INT,
FOREIGN KEY (office_id) REFERENCES [dbo].[officeadresses](office_id),
[first_name] NVARCHAR(100) NOT NULL,
[middle_name] NVARCHAR(100),
[last_name] NVARCHAR(100) NOT NULL,
[position_id] INT,
FOREIGN KEY (position_id) REFERENCES [dbo].[position_type](position_id),
[work_email] NVARCHAR(255) NOT NULL);
GO 

CREATE TABLE [dbo].[order_status](
[status_id] INT IDENTITY(1,1) PRIMARY KEY,
[status] NVARCHAR(100) NOT NULL);
GO


CREATE TABLE [dbo].[orders](
[order_id] INT IDENTITY(1,1) PRIMARY KEY,
[client_id] INT NOT NULL,
FOREIGN KEY (client_id) REFERENCES [dbo].[clients](client_id),
[office_id] INT NOT NULL,
FOREIGN KEY (office_id) REFERENCES [dbo].[officeadresses](office_id),
[order_amount] DECIMAL(12,2) NOT NULL,
[currency_id] INT NOT NULL,
FOREIGN KEY (currency_id) REFERENCES [dbo].[currency_type](currency_id),
[order_date] DATETIME NOT NULL,
[status_id] INT NOT NULL,
FOREIGN KEY (status_id) REFERENCES [dbo].[order_status](status_id),
[planned_date] DATE,
[comission] DECIMAL(5,2) NOT NULL,
[receipt_code] INT,
[actual_date] DATETIME,
[cancellation_date] DATETIME,
[cancellation_comments] NVARCHAR(500),
[initiator] INT,
FOREIGN KEY (client_id) REFERENCES [dbo].[clients](client_id));
GO

CREATE TABLE [dbo].[notification_status](
[status_id] INT IDENTITY(1,1) PRIMARY KEY,
[status] NVARCHAR(100) NOT NULL);
GO


CREATE TABLE [dbo].[notification](
[notification_id] INT IDENTITY(1,1) PRIMARY KEY,
[order_id] INT,
FOREIGN KEY (order_id) REFERENCES [dbo].[orders](order_id),
[client_id] INT,
FOREIGN KEY (client_id) REFERENCES [dbo].[clients](client_id),
[employee_id] INT,
FOREIGN KEY (employee_id) REFERENCES [dbo].[employees](employee_id),
[notification_text] NVARCHAR(500) NOT NULL,
[delivery_method] NVARCHAR(100) NOT NULL,
[status_id] INT NOT NULL,
FOREIGN KEY (status_id) REFERENCES [dbo].[notification_status](status_id));
GO

CREATE TABLE [dbo].[collection](
[collection_id] INT IDENTITY(1,1) PRIMARY KEY,
[order_id] INT NOT NULL,
FOREIGN KEY (order_id) REFERENCES [dbo].[orders](order_id),
[collector] INT NOT NULL,
FOREIGN KEY (collector) REFERENCES [dbo].[employees](employee_id),
[office_id] INT NOT NULL,
FOREIGN KEY (office_id) REFERENCES [dbo].[officeadresses](office_id),
[collection_date] DATE,
[collection_amount] DECIMAL(18,2) NOT NULL,
[currency_id] INT NOT NULL,
FOREIGN KEY (currency_id) REFERENCES [dbo].[currency_type](currency_id));
GO



