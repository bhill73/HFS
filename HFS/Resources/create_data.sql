DELETE FROM portfolio
SET IDENTITY_INSERT dbo.Portfolio ON
insert into portfolio (Id, Symbol, Name) values (1, 'BKI', 'B&K Investment');
insert into portfolio (Id, Symbol, Name)  values (2, 'BKR', 'B&K Retirement');
insert into portfolio  (Id, Symbol, Name) values (3, 'GNO', 'Junior''s Investment');
insert into portfolio  (Id, Symbol, Name) values (4, 'HFT', 'Hill Foundation');
SET IDENTITY_INSERT dbo.Portfolio OFF

GO

DELETE FROM Basket
SET IDENTITY_INSERT dbo.Basket ON
INSERT INTO Basket (Id, Symbol, Name, BiMoIx, SeSoIx, Protection) VALUES (1, 'A','PowersharesQQQ', 0.04, -10.0, 1000);
INSERT INTO Basket (Id, Symbol, Name, BiMoIx, SeSoIx, Protection) VALUES (2, 'B', 'Sector Vipers', 0.04, -10.0, 1000);
INSERT INTO Basket (Id, Symbol, Name, BiMoIx, SeSoIx, Protection) VALUES (3, 'C', 'Commodities Plus', 0.04, -15.0, 1000 );
INSERT INTO Basket (Id, Symbol, Name, BiMoIx, SeSoIx, Protection) VALUES (4, 'D', 'Stocks', 0.06, -15.0, 1000 );
INSERT INTO Basket (Id, Symbol, Name, BiMoIx, SeSoIx, Protection) VALUES (5, 'E', 'Exchanges', 0.0, 0.0, 0 );
SET IDENTITY_INSERT dbo.Basket OFF

GO


DELETE FROM dbo.Account
SET IDENTITY_INSERT dbo.Account ON
INSERT INTO Account (Id, Name, PortfolioId) VALUES ( 3,'PayPal',1);
INSERT INTO Account (Id, Name, PortfolioId) VALUES ( 5,'Scottrade Bank FDIC',4);
INSERT INTO Account (Id, Name, PortfolioId) VALUES ( 6,'Scottrade Investment',4);
INSERT INTO Account (Id, Name, PortfolioId) VALUES ( 13,'Fidelity IRA',2);
INSERT INTO Account (Id, Name, PortfolioId) VALUES ( 25,'Fidelity Bank FDIC',1);
INSERT INTO Account (Id, Name, PortfolioId) VALUES ( 26,'Fidelity Investment',1);
INSERT INTO Account (Id, Name, PortfolioId) VALUES ( 27,'WellsFargo Savings',1);
INSERT INTO Account (Id, Name, PortfolioId) VALUES ( 28,'WellsFargo Checking',1);
INSERT INTO Account (Id, Name, PortfolioId) VALUES ( 32,'Bank of Internet USA',1);
INSERT INTO Account (Id, Name, PortfolioId) VALUES ( 35,'North Island Credit',1);
INSERT INTO Account (Id, Name, PortfolioId) VALUES ( 37,'World & Ally Savings',1);
INSERT INTO Account (Id, Name, PortfolioId) VALUES ( 41,'Scottrade Virtual',3);
INSERT INTO Account (Id, Name, PortfolioId) VALUES ( 60,'MasterCard',1);
INSERT INTO Account (Id, Name, PortfolioId) VALUES ( 65,'Visa',1);
INSERT INTO Account (Id, Name, PortfolioId) VALUES ( 70,'AmericanExpress',1);
INSERT INTO Account (Id, Name, PortfolioId) VALUES ( 101,'Coins',1);
INSERT INTO Account (Id, Name, PortfolioId) VALUES ( 102,'Gold Coins',1);
INSERT INTO Account (Id, Name, PortfolioId) VALUES ( 103,'BaseBall Cards',1);
INSERT INTO Account (Id, Name, PortfolioId) VALUES ( 104,'Motors',1);
INSERT INTO Account (Id, Name, PortfolioId) VALUES ( 105,'Watches',1);
INSERT INTO Account (Id, Name, PortfolioId) VALUES ( 106,'Loans',1);
SET IDENTITY_INSERT dbo.Account OFF

GO

DELETE FROM Symbol
INSERT INTO Symbol VALUES ( 'A_Dow','Dow Jones Industrial Average');
INSERT INTO Symbol VALUES ( 'A_Nasdaq','Nasdaq Exchange')
INSERT INTO Symbol VALUES ( 'A_SP500','Standard & Poors 500')
INSERT INTO Symbol VALUES ( 'AAPL','Apple, Inc')
INSERT INTO Symbol VALUES ( 'ADBE','Adobe, Inc')
INSERT INTO Symbol VALUES ( 'AMAVF','Arcam Ab Ord')
INSERT INTO Symbol VALUES ( 'AMZN','Amazon.com, Inc')
INSERT INTO Symbol VALUES ( 'AXON','Axovant Sciences Ltd')
INSERT INTO Symbol VALUES ( 'BABA','Alibaba Group Holding Ltd')
INSERT INTO Symbol VALUES ( 'BIIB','Biogen Idec Inc')
INSERT INTO Symbol VALUES ( 'BND','Total Bond Market')
INSERT INTO Symbol VALUES ( 'DDD','3D Systems Corp')
INSERT INTO Symbol VALUES ( 'FB','Facebook, Inc')
INSERT INTO Symbol VALUES ( 'G_old','Goin Coins')
INSERT INTO Symbol VALUES ( 'GILD','Giliad Sciences, Inc')
INSERT INTO Symbol VALUES ( 'GLD','Gold Trust SPDR')
INSERT INTO Symbol VALUES ( 'GOOG','Alphabet, Inc')
INSERT INTO Symbol VALUES ( 'HPQ','Hewlett Packard Co')
INSERT INTO Symbol VALUES ( 'IBB','IShares Nasdaq Biotechnology ETF')
INSERT INTO Symbol VALUES ( 'MSFT','Microsoft Corp')
INSERT INTO Symbol VALUES ( 'ONVO','Organovo Hldgs Inc')
INSERT INTO Symbol VALUES ( 'QQQ','Nasdaq Trust Powershares')
INSERT INTO Symbol VALUES ( 'ROBO','Robo-Stox Global Robotics And Automation Index ETF')
INSERT INTO Symbol VALUES ( 'SIVR','SPDR Silver Trust Shares')
INSERT INTO Symbol VALUES ( 'SPY','S&P 500 SPDR')
INSERT INTO Symbol VALUES ( 'SSYS','Stratasys Inc (Israel)')
INSERT INTO Symbol VALUES ( 'VBR','Small-Cap Value ETF')
INSERT INTO Symbol VALUES ( 'VDE','Energy ETF')
INSERT INTO Symbol VALUES ( 'VFH','Financials ETF')
INSERT INTO Symbol VALUES ( 'VIG','Dividend Appreciation ETF')
INSERT INTO Symbol VALUES ( 'VJET','Voxeljet Ag')
INSERT INTO Symbol VALUES ( 'VPU','Vanguard Utilities ETF')
INSERT INTO Symbol VALUES ( 'VWO','Vanguard Emerging Markets ETF')
INSERT INTO Symbol VALUES ( 'XONE','Xone Inc')

GO

DELETE FROM ExpenseCode 
INSERT INTO ExpenseCode (Code, Name, Category, IO) VALUES ( 'AMY','Amy','Family','O');
INSERT INTO ExpenseCode (Code, Name, Category, IO) VALUES ( 'AOL','AOL Time Warner','Household','O');
INSERT INTO ExpenseCode (Code, Name, Category, IO)  VALUES ( 'ATM','7/24','Financial','O');
INSERT INTO ExpenseCode (Code, Name, Category, IO)  VALUES ( 'AXP','American Express','Credit Card','O');
INSERT INTO ExpenseCode (Code, Name, Category, IO)  VALUES ( 'BBC','s','Hobby','O');
INSERT INTO ExpenseCode (Code, Name, Category, IO)  VALUES ( 'BND','Bonds','Financial','O');
INSERT INTO ExpenseCode (Code, Name, Category, IO)  VALUES ( 'BNS','Bonus','Financial','O');
INSERT INTO ExpenseCode (Code, Name, Category, IO)  VALUES ( 'BRE','Brenner','Family','O');
INSERT INTO ExpenseCode (Code, Name, Category, IO)  VALUES ( 'CAR','Car Payment','Car','O');
INSERT INTO ExpenseCode (Code, Name, Category, IO)  VALUES ( 'CD','CertificateofDep','Financial','O');
INSERT INTO ExpenseCode (Code, Name, Category, IO)  VALUES ( 'CHC','Charity','Family','O');
INSERT INTO ExpenseCode (Code, Name, Category, IO)  VALUES ( 'CIN','Insurance (Car)','Car','O');
INSERT INTO ExpenseCode (Code, Name, Category, IO)  VALUES ( 'CLO','Clothing','Household','O');
INSERT INTO ExpenseCode (Code, Name, Category, IO)  VALUES ( 'CMP','Personal Computer','Household','O');
INSERT INTO ExpenseCode (Code, Name, Category, IO)  VALUES ( 'CRP','Car Related','Car','O');
INSERT INTO ExpenseCode (Code, Name, Category, IO)  VALUES ( 'CSP','Child Support','Family','O');
INSERT INTO ExpenseCode (Code, Name, Category, IO)  VALUES ( 'CST','Costco','Credit Card','O');
INSERT INTO ExpenseCode (Code, Name, Category, IO)  VALUES ( 'CTV','Cable TV','Household','O');
INSERT INTO ExpenseCode (Code, Name, Category, IO)  VALUES ( 'DEP','Deposit','Financial','I');
INSERT INTO ExpenseCode (Code, Name, Category, IO)  VALUES ( 'DIN','Dividend NT','Financial','I');
INSERT INTO ExpenseCode (Code, Name, Category, IO)  VALUES ( 'DIV','Dividend','Financial','I');
INSERT INTO ExpenseCode (Code, Name, Category, IO)  VALUES ( 'DSK','Desk','Household','O');
INSERT INTO ExpenseCode (Code, Name, Category, IO)  VALUES ( 'EBY','eBay','Household','O');
INSERT INTO ExpenseCode (Code, Name, Category, IO)  VALUES ( 'ELE','Electricity','Household','O');
INSERT INTO ExpenseCode (Code, Name, Category, IO)  VALUES ( 'EXP','Expense Check','Household','O');
INSERT INTO ExpenseCode (Code, Name, Category, IO)  VALUES ( 'FEE','Fees & Commisions','Household','O');
INSERT INTO ExpenseCode (Code, Name, Category, IO)  VALUES ( 'FOD','Restaurants','Household','O');
INSERT INTO ExpenseCode (Code, Name, Category, IO)  VALUES ( 'GAS','Gasoline','Car','O');
INSERT INTO ExpenseCode (Code, Name, Category, IO)  VALUES ( 'GFT','Gifts','Family','O');
INSERT INTO ExpenseCode (Code, Name, Category, IO)  VALUES ( 'GLD','Gold','Financial','O');
INSERT INTO ExpenseCode (Code, Name, Category, IO)  VALUES ( 'GRC','Groceries','Household','O');
INSERT INTO ExpenseCode (Code, Name, Category, IO)  VALUES ( 'HHD','Household Items','Household','O');
INSERT INTO ExpenseCode (Code, Name, Category, IO)  VALUES ( 'HIN','Insurance (HomeOwners)','Household','O');
INSERT INTO ExpenseCode (Code, Name, Category, IO)  VALUES ( 'HOM','HomerOwner  s Assoc','Household','O');
INSERT INTO ExpenseCode (Code, Name, Category, IO)  VALUES ( 'HOU','House New','Household','O');
INSERT INTO ExpenseCode (Code, Name, Category, IO)  VALUES ( 'INN','Interest ND','Financial','O');
INSERT INTO ExpenseCode (Code, Name, Category, IO)  VALUES ( 'INT','Interest','Financial','I');
INSERT INTO ExpenseCode (Code, Name, Category, IO)  VALUES ( 'IRA','IRA Distribution','Financial','O');
INSERT INTO ExpenseCode (Code, Name, Category, IO)  VALUES ( 'KAT','Kathy','Family','O');
INSERT INTO ExpenseCode (Code, Name, Category, IO)  VALUES ( 'LON','Loan','Family','O');
INSERT INTO ExpenseCode (Code, Name, Category, IO)  VALUES ( 'MAC','Master Card','Credit Card','O');
INSERT INTO ExpenseCode (Code, Name, Category, IO)  VALUES ( 'MED','Medical','Household','O');
INSERT INTO ExpenseCode (Code, Name, Category, IO)  VALUES ( 'MIS','Miscelleneous','Household','O');
INSERT INTO ExpenseCode (Code, Name, Category, IO)  VALUES ( 'MOR','Mortgage','Household','O');
INSERT INTO ExpenseCode (Code, Name, Category, IO)  VALUES ( 'MTR','Mom  s Trust','Financial','O');
INSERT INTO ExpenseCode (Code, Name, Category, IO)  VALUES ( 'MUS','Music','Hobby','O');
INSERT INTO ExpenseCode (Code, Name, Category, IO)  VALUES ( 'NYS','NYS Retirement','Financial','I');
INSERT INTO ExpenseCode (Code, Name, Category, IO)  VALUES ( 'PAY','PayCheck','Financial','O');
INSERT INTO ExpenseCode (Code, Name, Category, IO)  VALUES ( 'PIC','Pictures','Household','O');
INSERT INTO ExpenseCode (Code, Name, Category, IO)  VALUES ( 'PPR','Paper','Household','O');
INSERT INTO ExpenseCode (Code, Name, Category, IO)  VALUES ( 'PRQ','TravelPerq','Household','O');
INSERT INTO ExpenseCode (Code, Name, Category, IO)  VALUES ( 'SSB','Social Security Benefits','Financial','I');
INSERT INTO ExpenseCode (Code, Name, Category, IO)  VALUES ( 'STK','Stock','Financial','O');
INSERT INTO ExpenseCode (Code, Name, Category, IO)  VALUES ( 'STP','Sunset Strip','Hobby','O');
INSERT INTO ExpenseCode (Code, Name, Category, IO)  VALUES ( 'SUI','Unemployment Ins','Financial','I');
INSERT INTO ExpenseCode (Code, Name, Category, IO)  VALUES ( 'SUN','SunShelter','Household','O');
INSERT INTO ExpenseCode (Code, Name, Category, IO)  VALUES ( 'TAX','Taxes','Financial','O');
INSERT INTO ExpenseCode (Code, Name, Category, IO)  VALUES ( 'TEB','Business Phone','Financial','O');
INSERT INTO ExpenseCode (Code, Name, Category, IO)  VALUES ( 'TEL','Telephone','Household','O');
INSERT INTO ExpenseCode (Code, Name, Category, IO)  VALUES ( 'TFS','Transfer from Savings','Financial','O');
INSERT INTO ExpenseCode (Code, Name, Category, IO)  VALUES ( 'TRF','Transfers','Financial','O');
INSERT INTO ExpenseCode (Code, Name, Category, IO)  VALUES ( 'TRV','Travel','Household','O');
INSERT INTO ExpenseCode (Code, Name, Category, IO)  VALUES ( 'TTS','Transfer to Savings','Financial','O');
INSERT INTO ExpenseCode (Code, Name, Category, IO)  VALUES ( 'UIN','Insurance (Umbrella)','Household','I');
INSERT INTO ExpenseCode (Code, Name, Category, IO)  VALUES ( 'VIS','VISA','Credit Card','O');
INSERT INTO ExpenseCode (Code, Name, Category, IO)  VALUES ( 'WAL','Wall Unit','Household','O');

GO

DELETE FROM Equity
SET IDENTITY_INSERT dbo.Equity ON
INSERT INTO Equity (Id, Symbol, Name, BasketId, Show, Protection, BiMoIx, SeSoIx) VALUES (1, 'A_Dow','Dow Jones Industrial Average',5,0,0,0,0);
INSERT INTO Equity (Id, Symbol, Name, BasketId, Show, Protection, BiMoIx, SeSoIx) VALUES (2, 'A_Nasdaq','Nasdaq Exchange',5,0,0,0,0);
INSERT INTO Equity (Id, Symbol, Name, BasketId, Show, Protection, BiMoIx, SeSoIx) VALUES (3, 'A_SP500','Standard & Poors 500',5,'',0,0,0);
INSERT INTO Equity (Id, Symbol, Name, BasketId, Show, Protection, BiMoIx, SeSoIx) VALUES (4, 'AAPL','Apple, Inc',4,1,-2000,0,0);
INSERT INTO Equity (Id, Symbol, Name, BasketId, Show, Protection, BiMoIx, SeSoIx) VALUES (5, 'ADBE','Adobe, Inc',4,1,-676,0,0);
INSERT INTO Equity (Id, Symbol, Name, BasketId, Show, Protection, BiMoIx, SeSoIx) VALUES (6, 'AMAVF','Arcam Ab Ord',4,1,0,0,0);
INSERT INTO Equity (Id, Symbol, Name, BasketId, Show, Protection, BiMoIx, SeSoIx) VALUES (7, 'AMZN','Amazon.com, Inc',4,1,-861,0.04,0);
INSERT INTO Equity (Id, Symbol, Name, BasketId, Show, Protection, BiMoIx, SeSoIx) VALUES (8, 'AXON','Axovant Sciences Ltd',4,0,0,0,0);
INSERT INTO Equity (Id, Symbol, Name, BasketId, Show, Protection, BiMoIx, SeSoIx) VALUES (9, 'BABA','Alibaba Group Holding Ltd',4,0,0,0,0);
INSERT INTO Equity (Id, Symbol, Name, BasketId, Show, Protection, BiMoIx, SeSoIx) VALUES (10, 'BIIB','Biogen Idec Inc',4,0,0,0,0);
INSERT INTO Equity (Id, Symbol, Name, BasketId, Show, Protection, BiMoIx, SeSoIx) VALUES (11, 'BND','Total Bond Market',2,1,-250,0,0);
INSERT INTO Equity (Id, Symbol, Name, BasketId, Show, Protection, BiMoIx, SeSoIx) VALUES (12, 'DDD','3D Systems Corp',4,0,0,0,0);
INSERT INTO Equity (Id, Symbol, Name, BasketId, Show, Protection, BiMoIx, SeSoIx) VALUES (13, 'EBAY','eBay Inc',4,1,-500,0,0);
INSERT INTO Equity (Id, Symbol, Name, BasketId, Show, Protection, BiMoIx, SeSoIx) VALUES (14, 'FB','Facebook, Inc',4,1,-1576,0,0);
INSERT INTO Equity (Id, Symbol, Name, BasketId, Show, Protection, BiMoIx, SeSoIx) VALUES (15, 'G_old','Goin Coins',3,1,5000,0,0);
INSERT INTO Equity (Id, Symbol, Name, BasketId, Show, Protection, BiMoIx, SeSoIx) VALUES (16, 'GILD','Giliad Sciences, Inc',4,1,-1315,0,0);
INSERT INTO Equity (Id, Symbol, Name, BasketId, Show, Protection, BiMoIx, SeSoIx) VALUES (17, 'GLD','Gold Trust SPDR',3,1,-2000,0,0);
INSERT INTO Equity (Id, Symbol, Name, BasketId, Show, Protection, BiMoIx, SeSoIx) VALUES (18, 'GOOG','Alphabet, Inc',4,1,-2178,0,0);
INSERT INTO Equity (Id, Symbol, Name, BasketId, Show, Protection, BiMoIx, SeSoIx) VALUES (19, 'HPQ','Hewlett Packard Co',4,0,0,0,0);
INSERT INTO Equity (Id, Symbol, Name, BasketId, Show, Protection, BiMoIx, SeSoIx) VALUES (20, 'IBB','IShares Nasdaq Biotechnology ETF',2,0,0,0,0);
INSERT INTO Equity (Id, Symbol, Name, BasketId, Show, Protection, BiMoIx, SeSoIx) VALUES (21, 'MSFT','Microsoft Corp',4,1,-751,0.04,0);
INSERT INTO Equity (Id, Symbol, Name, BasketId, Show, Protection, BiMoIx, SeSoIx) VALUES (22, 'ONVO','Organovo Hldgs Inc',2,0,0,0,0);
INSERT INTO Equity (Id, Symbol, Name, BasketId, Show, Protection, BiMoIx, SeSoIx) VALUES (23, 'PYPL','PayPal Holdings, Inc',4,1,-500,0,0);
INSERT INTO Equity (Id, Symbol, Name, BasketId, Show, Protection, BiMoIx, SeSoIx) VALUES (24, 'QQQ','Nasdaq Trust Powershares',1,2,180000,0,0);
INSERT INTO Equity (Id, Symbol, Name, BasketId, Show, Protection, BiMoIx, SeSoIx) VALUES (25, 'ROBO','Robo-Stox Global Robotics And Automation Index ETF',3,0,0,0,0);
INSERT INTO Equity (Id, Symbol, Name, BasketId, Show, Protection, BiMoIx, SeSoIx) VALUES (26, 'SIVR','SPDR Silver Trust Shares',3,0,0,0,0);
INSERT INTO Equity (Id, Symbol, Name, BasketId, Show, Protection, BiMoIx, SeSoIx) VALUES (27, 'SPY','S&P 500 SPDR',2,1,20000,0,0);
INSERT INTO Equity (Id, Symbol, Name, BasketId, Show, Protection, BiMoIx, SeSoIx) VALUES (28, 'SSYS','Stratasys Inc (Israel)',4,0,0,0,0);
INSERT INTO Equity (Id, Symbol, Name, BasketId, Show, Protection, BiMoIx, SeSoIx) VALUES (29, 'VBR','Small-Cap Value ETF',2,1,4000,0,0);
INSERT INTO Equity (Id, Symbol, Name, BasketId, Show, Protection, BiMoIx, SeSoIx) VALUES (30, 'VDE','Energy ETF',2,1,-7000,0,0);
INSERT INTO Equity (Id, Symbol, Name, BasketId, Show, Protection, BiMoIx, SeSoIx) VALUES (31, 'VFH','Financials ETF',2,1,-2500,0,0);
INSERT INTO Equity (Id, Symbol, Name, BasketId, Show, Protection, BiMoIx, SeSoIx) VALUES (32, 'VIG','Dividend Appreciation ETF',2,1,6500,0,0);
INSERT INTO Equity (Id, Symbol, Name, BasketId, Show, Protection, BiMoIx, SeSoIx) VALUES (33, 'VJET','Voxeljet Ag',4,0,0,0,0);
INSERT INTO Equity (Id, Symbol, Name, BasketId, Show, Protection, BiMoIx, SeSoIx) VALUES (34, 'VPU','Vanguard Utilities ETF',2,0,0,0,0);
INSERT INTO Equity (Id, Symbol, Name, BasketId, Show, Protection, BiMoIx, SeSoIx) VALUES (35, 'VWO','Vanguard Emerging Markets ETF',2,0,0,0,0);
INSERT INTO Equity (Id, Symbol, Name, BasketId, Show, Protection, BiMoIx, SeSoIx) VALUES (36, 'XONE','Xone Inc',4,0,0,0,0);
SET IDENTITY_INSERT dbo.Equity OFF

GO

DELETE FROM Lot
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 5, Convert (date, '2016-1-19'),13,50,4505.95,NULL,4505.95,4893,5057,1);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 5,Convert (date, '2016-3-18'),13,50,4688.15,NULL,4688.15,4893,5057,1);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 5,Convert (date, '2016-5-16'),13,50,4865.45,NULL,4865.45,4893,5057,1);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 5,Convert (date, '2016-5-31'),13,50,5027.45,NULL,5027.45,4893,5057,1);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 11,Convert (date, '2010-11-9'),26,10,824.994,NULL,807.45,846.4,843.5,1);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 11,Convert (date, '2014-10-13'),26,90,7451.84,NULL,7267.05,7617.6,7591.5,1);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 11,Convert (date, '2016-6-23'),13,100,8382.95,NULL,8382.95,8464,8435,1);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 13,Convert (date, '2016-3-31'),13,200,4907.31,NULL,4907.31,6232,6250,1);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 13,Convert (date, '2016-5-23'),13,200,4730.95,NULL,4730.95,6232,6250,1);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 13,Convert (date, '2016-5-23'),13,200,5193.95,NULL,5193.95,6232,6250,1);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 13,Convert (date, '2016-7-21'),13,200,5972.95,NULL,5972.95,6232,6250,1);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 13,Convert (date, '2016-7-25'),13,200,6133.03,NULL,6133.03,6232,6250,1);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 15,Convert (date, '1992-10-17'),26,1,359.18,NULL,1076.82448979592,1368.76734693878,1340.75102040816,1);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 15,Convert (date, '1992-10-17'),26,1,359.18,NULL,1076.82448979592,1368.76734693878,1340.75102040816,1);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 15,Convert (date, '1992-10-17'),26,1,355,NULL,1076.82448979592,1368.76734693878,1340.75102040816,1);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 15,Convert (date, '1993-7-9'),26,1,410.288,NULL,1076.82448979592,1368.76734693878,1340.75102040816,1);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 15,Convert (date, '1993-7-9'),26,1,410.288,NULL,1076.82448979592,1368.76734693878,1340.75102040816,1);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 15,Convert (date, '1993-7-9'),26,1,410.288,NULL,1076.82448979592,1368.76734693878,1340.75102040816,1);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 15,Convert (date, '1993-8-4'),26,1,419.65,NULL,1076.82448979592,1368.76734693878,1340.75102040816,1);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 15,Convert (date, '1993-8-4'),26,1,419.65,NULL,1076.82448979592,1368.76734693878,1340.75102040816,1);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 15,Convert (date, '1993-8-4'),26,1,419.65,NULL,1076.82448979592,1368.76734693878,1340.75102040816,1);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 15,Convert (date, '1993-9-20'),26,1,370.795625,NULL,1076.82448979592,1368.76734693878,1340.75102040816,1);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 15,Convert (date, '1993-9-20'),26,1,370.795625,NULL,1076.82448979592,1368.76734693878,1340.75102040816,1);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 15,Convert (date, '1993-9-20'),26,1,370.795625,NULL,1076.82448979592,1368.76734693878,1340.75102040816,1);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 15,Convert (date, '2011-2-2'),26,1,1590,NULL,1076.82448979592,1368.76734693878,1340.75102040816,1);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 15,Convert (date, '2012-4-29'),26,1,1780,NULL,1076.82448979592,1368.76734693878,1340.75102040816,1);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 15,Convert (date, '2012-5-4'),26,1,1712,NULL,1076.82448979592,1368.76734693878,1340.75102040816,1);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 15,Convert (date, '2012-5-8'),26,1,1672.9,NULL,1076.82448979592,1368.76734693878,1340.75102040816,1);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 15,Convert (date, '2012-6-7'),26,1,1658.6,NULL,1076.82448979592,1368.76734693878,1340.75102040816,1);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 15,Convert (date, '2012-7-3'),26,1,1688.68,NULL,1076.82448979592,1368.76734693878,1340.75102040816,1);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 15,Convert (date, '2013-6-14'),26,4,5379.43,NULL,4307.29795918367,5475.0693877551,5363.00408163265,1);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 15,Convert (date, '2014-3-13'),26,1,1436.4,NULL,1076.82448979592,1368.76734693878,1340.75102040816,1);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 15,Convert (date, '2014-3-13'),26,1,1436.4,NULL,1076.82448979592,1368.76734693878,1340.75102040816,1);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 15,Convert (date, '2014-3-13'),26,1,1436.4,NULL,1076.82448979592,1368.76734693878,1340.75102040816,1);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 17,Convert (date, '2013-5-29'),26,10,1347.294,NULL,1014.7,1289.8,1263.4,1);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 17,Convert (date, '2014-2-14'),26,40,5094.35,NULL,4058.8,5159.2,5053.6,1);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 17,Convert (date, '2014-8-13'),13,100,12608.38,NULL,10147,12898,12634,1);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 17,Convert (date, '2015-2-25'),26,50,5786.95,NULL,5073.5,6449,6317,1);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 17,Convert (date, '2015-6-29'),13,50,5637.5,NULL,5073.5,6449,6317,1);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 17,Convert (date, '2016-2-11'),13,50,5950.95,NULL,5950.95,6449,6317,1);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 17,Convert (date, '2016-8-4'),13,50,6512.78,NULL,6512.78,6512.78,6317,1);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 23,Convert (date, '2016-5-23'),13,100,3790.95,NULL,3790.95,3724,3752,1);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 23,Convert (date, '2016-7-12'),13,100,3854.95,NULL,3854.95,3724,3752,1);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 23,Convert (date, '2016-7-13'),13,100,3984.62,NULL,3984.62,3724,3752,1);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 23,Convert (date, '2016-7-22'),13,100,3707.95,NULL,3707.95,3724,3752,1);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 24,Convert (date, '2003-6-2'),26,220,6635.2,NULL,24609.2,25350.6,25696,1);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 24,Convert (date, '2004-11-16'),26,80,3113.6,NULL,8948.8,9218.4,9344,1);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 24,Convert (date, '2008-6-9'),26,250,12187.5,NULL,27965,28807.5,29200,1);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 24,Convert (date, '2008-8-12'),26,200,9592,NULL,22372,23046,23360,1);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 24,Convert (date, '2008-10-10'),26,100,3033,NULL,11186,11523,11680,1);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 24,Convert (date, '2009-5-19'),26,1650,57090,NULL,184569,190129.5,192720,1);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 24,Convert (date, '2010-3-30'),26,100,4850,NULL,11186,11523,11680,1);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 24,Convert (date, '2012-12-17'),6,200,13315.57,NULL,22372,23046,23360,1);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 24,Convert (date, '2013-1-2'),26,250,16654.5,NULL,27965,28807.5,29200,1);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 24,Convert (date, '2013-2-4'),6,100,6679.99,NULL,11186,11523,11680,1);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 24,Convert (date, '2013-3-8'),26,300,20657.25,NULL,33558,34569,35040,1);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 24,Convert (date, '2013-4-10'),6,300,20988.97,NULL,33558,34569,35040,1);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 24,Convert (date, '2013-8-29'),26,300,22862.25,NULL,33558,34569,35040,1);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 24,Convert (date, '2014-3-5'),6,150,13667.49,NULL,16779,17284.5,17520,1);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 24,Convert (date, '2014-9-8'),6,80,8023.776,NULL,8948.8,9218.4,9344,1);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 24,Convert (date, '2014-9-8'),41,20,2027.677,NULL,2237.2,2304.6,2336,1);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 24,Convert (date, '2015-2-12'),26,50,5289.45,NULL,5593,5761.5,5840,1);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 24,Convert (date, '2015-2-24'),26,100,10871.95,NULL,11186,11523,11680,1);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 24,Convert (date, '2016-6-7'),13,50,5531.95,NULL,5531.95,5761.5,5840,1);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 27,Convert (date, '2011-1-28'),26,100,13012.95,NULL,20387,21712,21785,1);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 27,Convert (date, '2012-12-17'),26,100,14524.85,NULL,20387,21712,21785,1);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 27,Convert (date, '2013-1-2'),6,200,28989.4,NULL,40774,43424,43570,1);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 27,Convert (date, '2013-2-6'),26,100,15110,NULL,20387,21712,21785,1);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 27,Convert (date, '2014-9-8'),6,50,10057.5,NULL,10193.5,10856,10892.5,1);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 27,Convert (date, '2016-5-13'),13,100,20605.45,NULL,20605.45,21712,21785,1);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 27,Convert (date, '2016-6-7'),13,50,10591.8,NULL,10591.8,10856,10892.5,1);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 27,Convert (date, '2016-7-15'),13,50,10805.2,NULL,10805.2,10856,10892.5,1);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 29,Convert (date, '2011-5-9'),26,100,7096.75,NULL,9877,11020,11081,1);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 29,Convert (date, '2013-2-4'),6,100,7728.2,NULL,9877,11020,11081,1);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 29,Convert (date, '2013-3-8'),26,200,16142.35,NULL,19754,22040,22162,1);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 29,Convert (date, '2013-9-11'),26,100,8866.27,NULL,9877,11020,11081,1);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 29,Convert (date, '2015-7-13'),13,100,10851.95,NULL,9877,11020,11081,1);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 30,Convert (date, '2012-2-21'),26,10,1100.969,NULL,831.2,932.9,966.4,1);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 30,Convert (date, '2015-1-16'),26,100,10464.22,NULL,8312,9329,9664,1);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 30,Convert (date, '2015-8-24'),13,50,4271.33,NULL,4156,4664.5,4832,1);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 30,Convert (date, '2015-8-24'),13,50,4262.64,NULL,4156,4664.5,4832,1);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 30,Convert (date, '2015-10-8'),13,90,8508.45,NULL,7480.8,8396.1,8697.6,1);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 30,Convert (date, '2015-12-10'),13,50,4242.36,NULL,4156,4664.5,4832,1);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 30,Convert (date, '2016-2-11'),13,50,3653.45,NULL,3653.45,4664.5,4832,1);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 30,Convert (date, '2016-2-17'),13,50,3965,NULL,3965,4664.5,4832,1);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 30,Convert (date, '2016-3-16'),13,50,4373.95,NULL,4373.95,4664.5,4832,1);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 30,Convert (date, '2016-4-19'),6,50,4787.66,NULL,4787.66,4664.5,4832,1);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 31,Convert (date, '2011-1-3'),26,10,334.876,NULL,485.1,492.1,497.8,1);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 31,Convert (date, '2014-9-18'),13,90,4317.14,NULL,4365.9,4428.9,4480.2,1);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 31,Convert (date, '2015-6-10'),26,200,10161.95,NULL,9702,9842,9956,1);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 32,Convert (date, '2012-12-17'),6,200,12187.65,NULL,15550,17030,17114,1);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 32,Convert (date, '2013-1-24'),6,200,12648.7,NULL,15550,17030,17114,1);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 32,Convert (date, '2013-1-24'),26,200,12650.15,NULL,15550,17030,17114,1);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 4,Convert (date, '2014-10-20'),26,100,9932.65,Convert (date, '2015-1-6'),NULL,NULL,10547.4666666667,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 4,Convert (date, '2014-11-3'),26,50,5499.45,Convert (date, '2015-1-6'),NULL,NULL,5273.73333333333,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 4,Convert (date, '2015-1-9'),26,100,11295.95,Convert (date, '2015-1-16'),NULL,NULL,10604.81,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 4,Convert (date, '2014-10-9'),13,100,10222.95,Convert (date, '2015-6-17'),NULL,NULL,12727.88,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 4,Convert (date, '2014-10-24'),13,50,5246.45,Convert (date, '2015-6-17'),NULL,NULL,6363.94,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 4,Convert (date, '2014-11-25'),13,50,5966.45,Convert (date, '2015-6-17'),NULL,NULL,6363.94,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 4,Convert (date, '2015-1-26'),13,50,5700.7,Convert (date, '2015-6-17'),NULL,NULL,6363.94,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 4,Convert (date, '2015-1-28'),13,50,5902.95,Convert (date, '2015-6-17'),NULL,NULL,6363.94,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 4,Convert (date, '2015-3-10'),13,50,6212.45,Convert (date, '2015-6-17'),NULL,NULL,6363.94,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 4,Convert (date, '2015-2-12'),26,50,6312.45,Convert (date, '2015-6-29'),NULL,NULL,6277.91,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 4,Convert (date, '2015-2-17'),26,50,6443.45,Convert (date, '2015-6-29'),NULL,NULL,6277.91,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 4,Convert (date, '2015-7-13'),13,100,12469.94,Convert (date, '2015-8-5'),NULL,NULL,11224.34,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 4,Convert (date, '2015-7-22'),13,50,6155.31,Convert (date, '2015-10-29'),NULL,NULL,5926.59,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 4,Convert (date, '2016-1-4'),13,50,5164.86,Convert (date, '2016-1-11'),NULL,NULL,4888.5,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 4,Convert (date, '2016-2-3'),13,50,4752.95,Convert (date, '2016-2-23'),NULL,NULL,4748.62,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 4,Convert (date, '2015-2-23'),6,50,6592,Convert (date, '2016-4-27'),NULL,NULL,4896.5,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 6,Convert (date, '2013-8-15'),26,40,3663.56,Convert (date, '2013-9-4'),NULL,NULL,4219.04444444444,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 6,Convert (date, '2013-8-26'),26,50,5606.95,Convert (date, '2013-9-4'),NULL,NULL,5273.80555555556,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 6,Convert (date, '2013-10-7'),13,50,6519.45,Convert (date, '2013-11-21'),NULL,NULL,6093.85,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 6,Convert (date, '2013-10-21'),13,50,7181.95,Convert (date, '2013-11-21'),NULL,NULL,6093.85,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 6,Convert (date, '2013-11-13'),13,50,8297.95,Convert (date, '2013-11-21'),NULL,NULL,6093.85,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 6,Convert (date, '2013-8-15'),26,10,915.89,Convert (date, '2013-12-18'),NULL,NULL,1342.76,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 6,Convert (date, '2013-9-19'),26,40,4617.15,Convert (date, '2013-12-18'),NULL,NULL,5371.04,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 7,Convert (date, '2015-8-4'),13,10,5319.95,Convert (date, '2016-1-11'),NULL,NULL,6170.44,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 7,Convert (date, '2015-8-24'),13,10,4780.35,Convert (date, '2016-1-11'),NULL,NULL,6170.44,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 7,Convert (date, '2015-10-20'),13,10,5655.33,Convert (date, '2016-1-11'),NULL,NULL,6170.44,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 7,Convert (date, '2015-10-29'),13,10,6269.28,Convert (date, '2016-1-11'),NULL,NULL,6170.44,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 7,Convert (date, '2015-11-30'),13,15,10197.15,Convert (date, '2016-1-11'),NULL,NULL,9255.66,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 7,Convert (date, '2016-1-14'),13,90,51627.105,Convert (date, '2016-1-15'),NULL,NULL,51578.65,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 7,Convert (date, '2016-1-25'),13,10,6025.96,Convert (date, '2016-2-1'),NULL,NULL,5734.54,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 7,Convert (date, '2016-1-15'),13,10,5736.345,Convert (date, '2016-5-13'),NULL,NULL,7088.0125,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 7,Convert (date, '2016-4-14'),13,10,6240.94,Convert (date, '2016-5-13'),NULL,NULL,7088.0125,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 7,Convert (date, '2016-5-3'),13,10,6748.25,Convert (date, '2016-5-13'),NULL,NULL,7088.0125,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 7,Convert (date, '2016-5-10'),13,10,6992.14,Convert (date, '2016-5-13'),NULL,NULL,7088.0125,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 8,Convert (date, '2015-6-12'),13,100,2403.05,Convert (date, '2015-6-17'),NULL,NULL,2151.7,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 8,Convert (date, '2015-6-12'),26,100,2683.775,Convert (date, '2015-6-29'),NULL,NULL,1857.01,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 8,Convert (date, '2015-6-12'),26,100,2683.775,Convert (date, '2015-8-4'),NULL,NULL,1280.01,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 8,Convert (date, '2015-7-24'),26,100,1540.02,Convert (date, '2015-8-4'),NULL,NULL,1280.01,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 9,Convert (date, '2014-9-22'),13,50,4505.95,Convert (date, '2015-1-6'),NULL,NULL,5006.52666666667,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 9,Convert (date, '2014-10-10'),13,50,4348.95,Convert (date, '2015-1-6'),NULL,NULL,5006.52666666667,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 9,Convert (date, '2014-10-21'),13,50,4582.45,Convert (date, '2015-1-6'),NULL,NULL,5006.52666666667,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 9,Convert (date, '2014-10-24'),13,50,4761.95,Convert (date, '2015-1-6'),NULL,NULL,5006.52666666667,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 9,Convert (date, '2014-11-3'),13,50,5093.95,Convert (date, '2015-1-6'),NULL,NULL,5006.52666666667,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 9,Convert (date, '2014-11-10'),13,50,5821.45,Convert (date, '2015-1-6'),NULL,NULL,5006.52666666667,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 9,Convert (date, '2014-10-23'),26,100,9400.05,Convert (date, '2015-2-5'),NULL,NULL,8915.825,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 9,Convert (date, '2014-10-27'),26,100,9837.95,Convert (date, '2015-2-5'),NULL,NULL,8915.825,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 9,Convert (date, '2014-10-22'),6,50,4615.95,Convert (date, '2015-2-23'),NULL,NULL,4289.43,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 9,Convert (date, '2014-11-5'),26,50,5482.75,Convert (date, '2015-6-29'),NULL,NULL,4073.47,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 9,Convert (date, '2015-5-21'),26,40,3719.96,Convert (date, '2015-7-7'),NULL,NULL,3067.81,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 9,Convert (date, '2015-5-21'),26,10,929.99,Convert (date, '2015-8-31'),NULL,NULL,665.37,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 10,Convert (date, '2014-2-24'),26,50,17619.45,Convert (date, '2014-3-11'),NULL,NULL,16767.25,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 11,Convert (date, '2009-4-21'),13,130,10038.028,Convert (date, '2009-5-21'),NULL,NULL,9992.099,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 11,Convert (date, '2008-12-18'),13,100,7797.24,Convert (date, '2009-5-25'),NULL,NULL,7754.79,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 11,Convert (date, '2008-7-25'),13,40,3022,Convert (date, '2009-5-26'),NULL,NULL,3101.916,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 11,Convert (date, '2008-12-18'),26,120,9365.12,Convert (date, '2009-6-4'),NULL,NULL,9230.01,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 11,Convert (date, '2007-8-23'),13,40,2998,Convert (date, '2010-4-1'),NULL,NULL,3158,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 11,Convert (date, '2009-4-21'),13,20,1544.312,Convert (date, '2010-4-1'),NULL,NULL,1579,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 11,Convert (date, '2009-4-23'),26,200,15431.63,Convert (date, '2010-4-5'),NULL,NULL,15721.92,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 11,Convert (date, '2009-10-12'),26,300,23761.43,Convert (date, '2010-4-5'),NULL,NULL,23594.69,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 11,Convert (date, '2010-8-2'),13,150,12235.5,Convert (date, '2010-10-1'),NULL,NULL,12357.57,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 11,Convert (date, '2010-8-27'),13,250,20693,Convert (date, '2010-10-1'),NULL,NULL,20595.95,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 11,Convert (date, '2010-6-9'),13,150,12066,Convert (date, '2010-11-4'),NULL,NULL,12441.57,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 11,Convert (date, '2010-6-9'),13,350,28154,Convert (date, '2010-12-13'),NULL,NULL,28084,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 11,Convert (date, '2010-8-2'),13,100,8157,Convert (date, '2010-12-13'),NULL,NULL,8024,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 11,Convert (date, '2011-10-3'),13,600,50289.15,Convert (date, '2011-11-3'),NULL,NULL,50323.37,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 11,Convert (date, '2007-8-23'),26,50,3760.95,Convert (date, '2011-11-30'),NULL,NULL,4165.37,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 11,Convert (date, '2009-10-12'),26,100,7920.48,Convert (date, '2011-11-30'),NULL,NULL,8330.75,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 11,Convert (date, '2010-11-9'),26,500,41249.73,Convert (date, '2011-11-30'),NULL,NULL,41653.74,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 11,Convert (date, '2011-8-19'),26,300,25195.95,Convert (date, '2012-3-14'),NULL,NULL,24939,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 11,Convert (date, '2012-2-13'),26,300,25131,Convert (date, '2012-3-14'),NULL,NULL,24939,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 11,Convert (date, '2013-1-3'),13,200,16782.35,Convert (date, '2013-2-4'),NULL,NULL,16662.9,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 11,Convert (date, '2013-1-3'),6,200,16784.79,Convert (date, '2013-2-4'),NULL,NULL,16658.3,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 11,Convert (date, '2013-1-3'),26,200,16784.7,Convert (date, '2013-2-5'),NULL,NULL,16658,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 11,Convert (date, '2011-5-9'),26,200,16261.95,Convert (date, '2013-3-8'),NULL,NULL,16616,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 11,Convert (date, '2012-1-26'),26,200,16727.95,Convert (date, '2013-3-8'),NULL,NULL,16616,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 11,Convert (date, '2012-2-13'),26,100,8377,Convert (date, '2013-3-8'),NULL,NULL,8308,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 11,Convert (date, '2010-11-9'),26,90,7424.946,Convert (date, '2013-5-29'),NULL,NULL,7425.945,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 12,Convert (date, '2013-4-2'),13,200,6734.95,Convert (date, '2013-11-13'),NULL,NULL,15433.7525,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 12,Convert (date, '2013-8-26'),13,100,5176.35,Convert (date, '2013-11-13'),NULL,NULL,7716.87625,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 12,Convert (date, '2013-8-27'),13,100,5103.94,Convert (date, '2013-11-13'),NULL,NULL,7716.87625,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 12,Convert (date, '2013-10-17'),13,200,11195.93,Convert (date, '2013-11-13'),NULL,NULL,15433.7525,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 12,Convert (date, '2013-10-30'),13,200,12220.45,Convert (date, '2013-11-13'),NULL,NULL,15433.7525,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 12,Convert (date, '2013-11-18'),13,100,8448.95,Convert (date, '2013-11-19'),NULL,NULL,7785.92,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 12,Convert (date, '2013-11-4'),26,200,12998.25,Convert (date, '2014-1-21'),NULL,NULL,17339.74,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 12,Convert (date, '2013-12-19'),13,200,16789.95,Convert (date, '2014-1-21'),NULL,NULL,17398.94,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 12,Convert (date, '2013-4-11'),26,200,7245.65,Convert (date, '2014-2-6'),NULL,NULL,13011.644,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 12,Convert (date, '2013-7-8'),26,300,14326.92,Convert (date, '2014-2-6'),NULL,NULL,19517.466,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 12,Convert (date, '2013-11-7'),6,100,7050.93,Convert (date, '2014-3-5'),NULL,NULL,7104.975,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 12,Convert (date, '2013-11-11'),6,100,7422,Convert (date, '2014-3-5'),NULL,NULL,7104.975,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 12,Convert (date, '2013-3-19'),6,100,2955,Convert (date, '2014-8-1'),NULL,NULL,4773.4925,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 12,Convert (date, '2013-3-22'),6,100,3144,Convert (date, '2014-8-1'),NULL,NULL,4773.4925,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 12,Convert (date, '2013-5-6'),6,200,8527.98,Convert (date, '2014-8-1'),NULL,NULL,9546.985,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 14,Convert (date, '2015-8-3'),13,100,9323.43,Convert (date, '2016-1-11'),NULL,NULL,9830.636,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 14,Convert (date, '2015-8-6'),13,50,4899.45,Convert (date, '2016-1-11'),NULL,NULL,4915.318,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 14,Convert (date, '2015-11-5'),13,100,10887.95,Convert (date, '2016-1-11'),NULL,NULL,9830.636,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 14,Convert (date, '2016-1-15'),13,50,4731.05,Convert (date, '2016-5-9'),NULL,NULL,5972.21666666667,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 14,Convert (date, '2016-2-1'),13,50,5769.95,Convert (date, '2016-5-9'),NULL,NULL,5972.21666666667,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 14,Convert (date, '2016-4-29'),13,50,5899.2,Convert (date, '2016-5-9'),NULL,NULL,5972.21666666667,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 16,Convert (date, '2015-8-5'),13,50,6001.45,Convert (date, '2015-12-17'),NULL,NULL,5187.05,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 16,Convert (date, '2015-7-29'),13,50,5824.95,Convert (date, '2016-1-11'),NULL,NULL,4843.935,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 16,Convert (date, '2016-1-4'),13,50,4896.45,Convert (date, '2016-1-11'),NULL,NULL,4843.935,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 16,Convert (date, '2016-2-5'),13,50,4236.3,Convert (date, '2016-5-4'),NULL,NULL,4303.1025,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 16,Convert (date, '2016-2-17'),13,50,4525.45,Convert (date, '2016-5-4'),NULL,NULL,4303.1025,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 16,Convert (date, '2016-4-5'),13,50,4792.45,Convert (date, '2016-5-4'),NULL,NULL,4303.1025,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 16,Convert (date, '2016-4-19'),13,50,5016.6,Convert (date, '2016-5-4'),NULL,NULL,4303.1025,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 17,Convert (date, '2009-5-29'),13,100,9575,Convert (date, '2009-12-7'),NULL,NULL,11148,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 17,Convert (date, '2009-9-9'),13,100,9818.74,Convert (date, '2009-12-7'),NULL,NULL,11148,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 17,Convert (date, '2009-2-20'),13,100,9803,Convert (date, '2009-12-21'),NULL,NULL,11148,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 17,Convert (date, '2009-5-20'),26,100,9195.78,Convert (date, '2009-12-21'),NULL,NULL,10791.97,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 17,Convert (date, '2009-5-22'),26,100,9417.28,Convert (date, '2009-12-22'),NULL,NULL,10592.99,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 17,Convert (date, '2010-2-16'),13,100,10930,Convert (date, '2011-1-5'),NULL,NULL,13359,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 17,Convert (date, '2010-3-22'),13,100,10735,Convert (date, '2011-1-5'),NULL,NULL,13358,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 17,Convert (date, '2010-5-24'),13,100,11703,Convert (date, '2011-1-5'),NULL,NULL,13358,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 17,Convert (date, '2010-6-18'),13,100,12318.63,Convert (date, '2011-1-5'),NULL,NULL,13358,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 17,Convert (date, '2010-10-1'),13,100,12887,Convert (date, '2011-1-5'),NULL,NULL,13358,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 17,Convert (date, '2009-11-17'),26,100,11077.59,Convert (date, '2011-1-28'),NULL,NULL,12805.9,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 17,Convert (date, '2011-4-18'),13,100,14567.95,Convert (date, '2011-5-2'),NULL,NULL,15142.13,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 17,Convert (date, '2010-4-5'),26,100,11015.97,Convert (date, '2011-5-5'),NULL,NULL,14737.84,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 17,Convert (date, '2010-5-10'),26,100,11694.24,Convert (date, '2011-5-5'),NULL,NULL,14737.84,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 17,Convert (date, '2011-6-10'),13,100,14899,Convert (date, '2011-9-27'),NULL,NULL,15676,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 17,Convert (date, '2011-6-22'),13,100,15177.95,Convert (date, '2011-9-27'),NULL,NULL,15676,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 17,Convert (date, '2011-7-14'),13,100,15507.94,Convert (date, '2011-9-27'),NULL,NULL,15676,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 17,Convert (date, '2011-7-29'),13,100,15867.95,Convert (date, '2011-9-27'),NULL,NULL,15676,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 17,Convert (date, '2011-11-3'),13,100,17059.67,Convert (date, '2011-12-28'),NULL,NULL,15288,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 17,Convert (date, '2011-2-14'),26,100,13324.75,Convert (date, '2012-5-8'),NULL,NULL,15620,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 17,Convert (date, '2011-3-7'),26,100,14025.95,Convert (date, '2012-5-8'),NULL,NULL,15620,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 17,Convert (date, '2011-5-27'),26,200,29815.73,Convert (date, '2012-5-8'),NULL,NULL,31240,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 17,Convert (date, '2011-7-14'),26,100,15502.95,Convert (date, '2012-5-8'),NULL,NULL,15620,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 17,Convert (date, '2011-11-30'),13,100,16979.93,Convert (date, '2012-5-9'),NULL,NULL,15556,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 17,Convert (date, '2012-9-18'),13,100,17172.63,Convert (date, '2012-5-9'),NULL,NULL,16710,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 17,Convert (date, '2012-8-23'),13,100,16157.95,Convert (date, '2013-2-15'),NULL,NULL,15589.775,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 17,Convert (date, '2012-9-12'),13,100,16793.9,Convert (date, '2013-2-15'),NULL,NULL,15589.775,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 17,Convert (date, '2013-4-5'),26,100,15160.05,Convert (date, '2013-4-10'),NULL,NULL,15171.8,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 17,Convert (date, '2011-12-8'),6,100,16657.65,Convert (date, '2013-4-11'),NULL,NULL,15186.05,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 17,Convert (date, '2012-9-18'),13,100,17172.63,Convert (date, '2013-5-30'),NULL,NULL,11671.05,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 17,Convert (date, '2013-5-29'),26,90,12125.646,Convert (date, '2013-7-8'),NULL,NULL,10702.8,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 17,Convert (date, '2013-10-7'),13,90,11502.75,Convert (date, '2013-11-19'),NULL,NULL,11097.9378947368,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 17,Convert (date, '2013-10-17'),13,100,12724.51,Convert (date, '2013-11-19'),NULL,NULL,12331.0421052632,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 17,Convert (date, '2014-3-11'),13,100,12989.84,Convert (date, '2014-6-26'),NULL,NULL,12647.31,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 17,Convert (date, '2014-3-12'),26,100,13173.51,Convert (date, '2014-9-30'),NULL,NULL,11656.79,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 17,Convert (date, '2014-8-6'),13,100,12591.95,Convert (date, '2014-10-30'),NULL,NULL,11504.29,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 17,Convert (date, '2014-2-18'),26,100,12764.95,Convert (date, '2014-11-5'),NULL,NULL,11021.8,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 18,Convert (date, '2015-8-26'),13,10,6026.95,Convert (date, '2016-1-11'),NULL,NULL,7149.48,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 18,Convert (date, '2015-9-1'),13,10,6033.15,Convert (date, '2016-1-11'),NULL,NULL,7149.48,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 18,Convert (date, '2015-10-29'),13,10,7151.3,Convert (date, '2016-1-11'),NULL,NULL,7149.48,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 18,Convert (date, '2015-12-29'),13,10,7690.81,Convert (date, '2016-1-11'),NULL,NULL,7149.48,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 18,Convert (date, '2016-1-21'),13,10,7003.58,Convert (date, '2016-5-16'),NULL,NULL,7155.535,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 18,Convert (date, '2016-2-1'),13,10,7514.75,Convert (date, '2016-5-16'),NULL,NULL,7155.535,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 19,Convert (date, '2013-11-4'),13,300,7772.88,Convert (date, '2013-11-8'),NULL,NULL,7699.81,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 19,Convert (date, '2013-11-4'),13,300,7755.48,Convert (date, '2013-11-18'),NULL,NULL,7555.81,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 19,Convert (date, '2013-11-4'),13,100,2600.94,Convert (date, '2014-3-11'),NULL,NULL,2986.795,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 19,Convert (date, '2013-12-19'),13,200,5613.35,Convert (date, '2014-3-11'),NULL,NULL,5973.59,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 19,Convert (date, '2014-2-12'),13,300,8899.05,Convert (date, '2014-3-11'),NULL,NULL,8960.385,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 20,Convert (date, '2014-1-21'),13,70,17525.79,Convert (date, '2014-7-16'),NULL,NULL,17436.36,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 20,Convert (date, '2014-1-2'),13,50,11241.25,Convert (date, '2014-8-1'),NULL,NULL,12456.625,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 20,Convert (date, '2014-2-18'),13,50,13211.45,Convert (date, '2014-8-1'),NULL,NULL,12456.625,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 21,Convert (date, '2015-10-6'),13,200,9400.9,Convert (date, '2016-1-11'),NULL,NULL,10538.44,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 21,Convert (date, '2015-11-3'),13,100,5322.25,Convert (date, '2016-1-11'),NULL,NULL,5269.22,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 21,Convert (date, '2015-12-17'),13,100,5663.55,Convert (date, '2016-1-11'),NULL,NULL,5269.22,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 21,Convert (date, '2016-2-10'),13,100,5000.95,Convert (date, '2016-5-5'),NULL,NULL,5004.4,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 21,Convert (date, '2016-3-16'),13,100,5443.57,Convert (date, '2016-5-5'),NULL,NULL,5004.4,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 22,Convert (date, '2013-11-12'),13,200,1855.95,Convert (date, '2013-11-19'),NULL,NULL,2235.59368421053,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 22,Convert (date, '2013-11-13'),13,350,3507.04,Convert (date, '2013-11-19'),NULL,NULL,3912.28894736842,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 22,Convert (date, '2013-11-15'),13,400,5165.91,Convert (date, '2013-11-19'),NULL,NULL,4471.18736842105,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 22,Convert (date, '2013-11-14'),13,500,5942.3,Convert (date, '2013-11-20'),NULL,NULL,4319.29285714286,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 22,Convert (date, '2013-11-14'),13,200,2163.18,Convert (date, '2013-11-20'),NULL,NULL,1727.71714285714,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 22,Convert (date, '2013-11-12'),26,200,1855.95,Convert (date, '2013-12-18'),NULL,NULL,1285.32,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 22,Convert (date, '2013-11-14'),13,300,3244.77,Convert (date, '2013-12-18'),NULL,NULL,2579.39,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 22,Convert (date, '2014-1-2'),26,500,5762.9,Convert (date, '2014-3-11'),NULL,NULL,4282.72,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 22,Convert (date, '2014-9-9'),13,450,3428.865,Convert (date, '2014-9-18'),NULL,NULL,3144.37,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 22,Convert (date, '2014-9-9'),13,50,380.985,Convert (date, '2014-10-21'),NULL,NULL,296.54,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 24,Convert (date, '2003-6-6'),13,300,9360,Convert (date, '2010-5-25'),NULL,NULL,12978,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 24,Convert (date, '2004-1-13'),13,100,3778,Convert (date, '2010-5-25'),NULL,NULL,4326,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 24,Convert (date, '2004-12-13'),13,150,6027,Convert (date, '2010-5-25'),NULL,NULL,6489,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 24,Convert (date, '2006-4-19'),13,100,4243,Convert (date, '2010-5-25'),NULL,NULL,4326,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 24,Convert (date, '2007-4-17'),13,200,9016,Convert (date, '2010-5-25'),NULL,NULL,8652,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 24,Convert (date, '2007-10-1'),13,150,7759.5,Convert (date, '2010-5-25'),NULL,NULL,6489,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 24,Convert (date, '2008-10-7'),13,100,3510.8,Convert (date, '2010-5-25'),NULL,NULL,4326,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 24,Convert (date, '2008-10-8'),13,100,3256,Convert (date, '2010-5-25'),NULL,NULL,4326,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 24,Convert (date, '2008-10-10'),13,100,3032,Convert (date, '2010-5-25'),NULL,NULL,4326,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 24,Convert (date, '2009-5-19'),13,500,17275,Convert (date, '2010-5-25'),NULL,NULL,21630,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 24,Convert (date, '2009-7-20'),13,250,9429.5,Convert (date, '2010-5-25'),NULL,NULL,10815,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 24,Convert (date, '2010-5-27'),13,500,22660,Convert (date, '2010-7-2'),NULL,NULL,21060,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 24,Convert (date, '2010-6-3'),13,550,25528.91,Convert (date, '2010-7-2'),NULL,NULL,23166,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 24,Convert (date, '2010-9-15'),13,200,9477.22,Convert (date, '2011-6-10'),NULL,NULL,10980,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 24,Convert (date, '2010-9-17'),13,400,19240,Convert (date, '2011-6-10'),NULL,NULL,21960,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 24,Convert (date, '2010-9-20'),13,350,17005.135,Convert (date, '2011-6-10'),NULL,NULL,19215,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 24,Convert (date, '2010-9-23'),13,400,19628,Convert (date, '2011-6-10'),NULL,NULL,21960,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 24,Convert (date, '2010-10-1'),13,350,17132.5,Convert (date, '2011-6-10'),NULL,NULL,19215,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 24,Convert (date, '2010-11-4'),13,250,13405,Convert (date, '2011-6-10'),NULL,NULL,13725,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 24,Convert (date, '2010-12-13'),13,200,10939.75,Convert (date, '2011-6-10'),NULL,NULL,10980,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 24,Convert (date, '2011-1-5'),13,100,5573.85,Convert (date, '2011-6-10'),NULL,NULL,5490,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 24,Convert (date, '2001-3-23'),26,20,919.75,Convert (date, '2011-11-30'),NULL,NULL,1122.07,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 24,Convert (date, '2003-6-2'),26,80,2412.64,Convert (date, '2011-11-30'),NULL,NULL,4488.27,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 24,Convert (date, '2011-7-8'),13,150,8818.38,Convert (date, '2012-11-9'),NULL,NULL,9480,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 24,Convert (date, '2011-9-30'),13,1000,53113.95,Convert (date, '2012-11-9'),NULL,NULL,63200,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 24,Convert (date, '2011-10-14'),13,800,46095.15,Convert (date, '2012-11-9'),NULL,NULL,50560,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 24,Convert (date, '2011-11-3'),13,300,17136.75,Convert (date, '2012-11-9'),NULL,NULL,18960,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 24,Convert (date, '2011-12-8'),6,100,5692.81,Convert (date, '2012-11-13'),NULL,NULL,6284,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 24,Convert (date, '2011-12-28'),6,100,5628.99,Convert (date, '2012-11-13'),NULL,NULL,6284,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 24,Convert (date, '2012-1-19'),6,200,11940.62,Convert (date, '2012-11-13'),NULL,NULL,12568,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 24,Convert (date, '2012-2-10'),6,100,6259.81,Convert (date, '2012-11-13'),NULL,NULL,6284,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 24,Convert (date, '2012-3-27'),6,200,13648.98,Convert (date, '2012-11-13'),NULL,NULL,12568,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 24,Convert (date, '2012-12-17'),13,500,33296.95,Convert (date, '2013-10-7'),NULL,NULL,39525.86,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 24,Convert (date, '2013-10-10'),13,500,39243.45,Convert (date, '2013-11-19'),NULL,NULL,41511.57,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 24,Convert (date, '2006-10-13'),26,250,10572.5,Convert (date, '2013-12-3'),NULL,NULL,21382.7111111111,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 24,Convert (date, '2007-7-13'),26,75,3592.5,Convert (date, '2013-12-3'),NULL,NULL,6414.81333333333,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 24,Convert (date, '2007-9-5'),26,125,6188.75,Convert (date, '2013-12-3'),NULL,NULL,10691.3555555556,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 24,Convert (date, '2013-12-6'),13,450,38716.91,Convert (date, '2014-4-3'),NULL,NULL,39764.17,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 24,Convert (date, '2013-11-21'),13,500,41627.95,Convert (date, '2014-8-22'),NULL,NULL,49571.43125,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 24,Convert (date, '2014-6-26'),13,100,9283.95,Convert (date, '2014-8-22'),NULL,NULL,9914.28625,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 24,Convert (date, '2014-7-16'),13,200,19198.79,Convert (date, '2014-8-22'),NULL,NULL,19828.5725,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 24,Convert (date, '2014-9-1'),13,400,40039.91,Convert (date, '2015-7-7'),NULL,NULL,42627.72,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 24,Convert (date, '2014-10-31'),13,200,20276.77,Convert (date, '2015-7-7'),NULL,NULL,21313.86,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 24,Convert (date, '2015-1-7'),13,100,10133.95,Convert (date, '2015-7-7'),NULL,NULL,10656.93,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 24,Convert (date, '2015-4-24'),13,100,11027.45,Convert (date, '2015-7-7'),NULL,NULL,10656.93,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 24,Convert (date, '2015-4-26'),13,100,11109.45,Convert (date, '2015-7-7'),NULL,NULL,10656.93,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 24,Convert (date, '2015-7-13'),13,100,10876.41,Convert (date, '2016-2-11'),NULL,NULL,9588.88461538462,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 24,Convert (date, '2015-7-16'),13,200,22232.87,Convert (date, '2016-2-11'),NULL,NULL,19177.7692307692,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 24,Convert (date, '2015-7-17'),13,250,28265.45,Convert (date, '2016-2-11'),NULL,NULL,23972.2115384615,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 24,Convert (date, '2015-7-22'),13,100,11281.45,Convert (date, '2016-2-11'),NULL,NULL,9588.88461538462,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 24,Convert (date, '2016-2-23'),13,100,10197.45,Convert (date, '2016-6-17'),NULL,NULL,10653.566,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 24,Convert (date, '2016-5-11'),13,200,21435.95,Convert (date, '2016-6-17'),NULL,NULL,21307.132,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 24,Convert (date, '2016-5-16'),13,100,10676.6,Convert (date, '2016-6-17'),NULL,NULL,10653.566,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 24,Convert (date, '2016-5-27'),13,100,11016.55,Convert (date, '2016-6-17'),NULL,NULL,10653.566,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 25,Convert (date, '2013-11-20'),13,200,5139.95,Convert (date, '2014-8-1'),NULL,NULL,5383.88,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 25,Convert (date, '2014-1-2'),13,200,5431.95,Convert (date, '2014-8-1'),NULL,NULL,5377.93,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 25,Convert (date, '2014-9-10'),13,200,5413.95,Convert (date, '2014-9-18'),NULL,NULL,5381.95,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 25,Convert (date, '2014-9-30'),26,400,10530.75,Convert (date, '2014-11-3'),NULL,NULL,10511.81,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 27,Convert (date, '2003-12-29'),13,100,11009,Convert (date, '2008-6-27'),NULL,NULL,12809.1,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 27,Convert (date, '2005-6-27'),13,100,11968,Convert (date, '2008-6-27'),NULL,NULL,12809.1,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 27,Convert (date, '2006-4-5'),13,70,9148.3,Convert (date, '2008-6-27'),NULL,NULL,8966.37,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 27,Convert (date, '2006-4-19'),13,40,5226.8,Convert (date, '2008-6-27'),NULL,NULL,5123.64,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 27,Convert (date, '2006-10-11'),13,75,10112.25,Convert (date, '2008-6-27'),NULL,NULL,9606.825,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 27,Convert (date, '2006-11-14'),13,73,10095.9,Convert (date, '2008-6-27'),NULL,NULL,9350.643,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 27,Convert (date, '2007-7-18'),13,17,2615.45,Convert (date, '2008-6-27'),NULL,NULL,2177.547,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 27,Convert (date, '2007-7-24'),13,100,15301,Convert (date, '2008-6-27'),NULL,NULL,12809.1,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 27,Convert (date, '2008-6-16'),13,50,6836.5,Convert (date, '2008-6-27'),NULL,NULL,6404.55,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 27,Convert (date, '2006-4-5'),26,70,9157.85,Convert (date, '2008-7-8'),NULL,NULL,8728.06,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 27,Convert (date, '2006-8-11'),26,100,12702.95,Convert (date, '2008-7-8'),NULL,NULL,12468.66,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 27,Convert (date, '2006-10-11'),26,75,10123.2,Convert (date, '2008-7-8'),NULL,NULL,9351.5,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 27,Convert (date, '2008-6-9'),26,80,10994.15,Convert (date, '2008-7-8'),NULL,NULL,9974.93,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 27,Convert (date, '2008-7-17'),13,300,37641,Convert (date, '2009-1-21'),NULL,NULL,24585,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 27,Convert (date, '2008-10-7'),13,100,10681,Convert (date, '2009-1-21'),NULL,NULL,8195,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 27,Convert (date, '2008-10-8'),13,100,9845,Convert (date, '2009-1-21'),NULL,NULL,8195,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 27,Convert (date, '2009-4-3'),13,75,6273,Convert (date, '2010-2-5'),NULL,NULL,7905,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 27,Convert (date, '2009-5-7'),13,100,9186.94,Convert (date, '2010-2-5'),NULL,NULL,10540,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 27,Convert (date, '2009-9-9'),13,100,10334.83,Convert (date, '2010-2-5'),NULL,NULL,10540,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 27,Convert (date, '2009-9-17'),13,100,10780.83,Convert (date, '2010-2-5'),NULL,NULL,10540,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 27,Convert (date, '2009-12-7'),13,300,33285,Convert (date, '2010-2-5'),NULL,NULL,31620,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 27,Convert (date, '2009-12-31'),13,200,22496,Convert (date, '2010-2-5'),NULL,NULL,21080,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 27,Convert (date, '2008-8-12'),26,75,9757.95,Convert (date, '2010-5-6'),NULL,NULL,8470.04,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 27,Convert (date, '2009-4-23'),26,75,6310.95,Convert (date, '2010-5-6'),NULL,NULL,8470.04,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 27,Convert (date, '2009-5-20'),26,75,6810.45,Convert (date, '2010-5-6'),NULL,NULL,8470.04,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 27,Convert (date, '2009-6-4'),26,100,9404.89,Convert (date, '2010-5-6'),NULL,NULL,11293.39,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 27,Convert (date, '2009-6-18'),26,200,18514.83,Convert (date, '2010-5-6'),NULL,NULL,22586.77,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 27,Convert (date, '2009-10-12'),26,100,10784.95,Convert (date, '2010-5-6'),NULL,NULL,11293.39,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 27,Convert (date, '2009-11-17'),26,100,11083.78,Convert (date, '2010-5-6'),NULL,NULL,11293.39,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 27,Convert (date, '2009-12-22'),26,50,5592.45,Convert (date, '2010-5-6'),NULL,NULL,5646.69,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 27,Convert (date, '2010-3-30'),26,100,11758.78,Convert (date, '2010-5-6'),NULL,NULL,11293.39,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 27,Convert (date, '2010-4-7'),26,200,23741.61,Convert (date, '2010-5-6'),NULL,NULL,22586.77,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 27,Convert (date, '2010-4-12'),26,200,23939.61,Convert (date, '2010-5-6'),NULL,NULL,22586.75,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 27,Convert (date, '2010-2-16'),13,225,24474.6,Convert (date, '2010-5-20'),NULL,NULL,24655.5,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 27,Convert (date, '2010-3-30'),13,100,11742.96,Convert (date, '2010-5-20'),NULL,NULL,10958,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 27,Convert (date, '2010-4-20'),13,150,18091.5,Convert (date, '2010-5-20'),NULL,NULL,16437,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 27,Convert (date, '2010-12-30'),26,100,12583.45,Convert (date, '2011-3-23'),NULL,NULL,12971.88,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 27,Convert (date, '2011-1-5'),26,100,12759.95,Convert (date, '2011-3-23'),NULL,NULL,12971.87,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 27,Convert (date, '2011-1-5'),13,100,12698.57,Convert (date, '2011-4-18'),NULL,NULL,12999,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 27,Convert (date, '2011-7-20'),13,200,26593.19,Convert (date, '2011-7-29'),NULL,NULL,25748.8,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 27,Convert (date, '2010-3-31'),26,25,2943.2,Convert (date, '2011-11-30'),NULL,NULL,3115.72,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 27,Convert (date, '2011-1-26'),26,25,3252.44,Convert (date, '2011-11-30'),NULL,NULL,3115.71,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 27,Convert (date, '2012-3-14'),26,300,42120.69,Convert (date, '2012-11-14'),NULL,NULL,40778.88,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 27,Convert (date, '2013-1-2'),13,200,29000,Convert (date, '2013-10-7'),NULL,NULL,33488.46,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 27,Convert (date, '2013-1-17'),13,200,29563.55,Convert (date, '2013-10-7'),NULL,NULL,33495.435,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 27,Convert (date, '2013-2-15'),13,100,15261.94,Convert (date, '2013-10-7'),NULL,NULL,16747.7175,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 27,Convert (date, '2013-3-25'),13,100,15590.85,Convert (date, '2013-10-7'),NULL,NULL,16747.7175,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 27,Convert (date, '2013-10-10'),13,300,50542.43,Convert (date, '2013-11-19'),NULL,NULL,53705.994,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 27,Convert (date, '2013-10-10'),13,200,33669.93,Convert (date, '2013-11-19'),NULL,NULL,35803.996,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 27,Convert (date, '2013-11-25'),13,500,90407.9,Convert (date, '2014-8-22'),NULL,NULL,99732.875,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 27,Convert (date, '2014-4-3'),13,200,37655.29,Convert (date, '2014-8-22'),NULL,NULL,39893.15,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 27,Convert (date, '2014-8-18'),13,100,19721.43,Convert (date, '2014-8-22'),NULL,NULL,19946.575,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 27,Convert (date, '2014-9-1'),13,400,80363.95,Convert (date, '2015-7-7'),NULL,NULL,82000.7054545455,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 27,Convert (date, '2014-10-31'),13,100,20100.45,Convert (date, '2015-7-7'),NULL,NULL,20500.1763636364,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 27,Convert (date, '2015-2-13'),13,50,10472.74,Convert (date, '2015-7-7'),NULL,NULL,10250.0881818182,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 27,Convert (date, '2015-7-13'),13,50,10463.68,Convert (date, '2015-11-30'),NULL,NULL,10468.36,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 28,Convert (date, '2013-6-17'),26,90,7770.375,Convert (date, '2013-9-4'),NULL,NULL,9711.38368421053,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 28,Convert (date, '2013-7-15'),13,100,9578.75,Convert (date, '2013-9-4'),NULL,NULL,10788.3066666667,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 28,Convert (date, '2013-8-26'),26,100,10895.45,Convert (date, '2013-9-4'),NULL,NULL,10790.4263157895,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 28,Convert (date, '2013-8-27'),13,50,5332.95,Convert (date, '2013-9-4'),NULL,NULL,5394.15333333333,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 28,Convert (date, '2013-10-21'),13,90,10078.95,Convert (date, '2013-11-19'),NULL,NULL,10661.0447368421,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 28,Convert (date, '2013-11-13'),13,100,12617.94,Convert (date, '2013-11-19'),NULL,NULL,11845.6052631579,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 28,Convert (date, '2013-6-17'),26,10,863.375,Convert (date, '2014-2-6'),NULL,NULL,1118.13653846154,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 28,Convert (date, '2013-11-5'),26,100,11772.95,Convert (date, '2014-2-6'),NULL,NULL,11181.3653846154,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 28,Convert (date, '2013-12-23'),13,90,11746.65,Convert (date, '2014-2-6'),NULL,NULL,10080.87,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 28,Convert (date, '2014-1-22'),26,150,18585.6,Convert (date, '2014-2-6'),NULL,NULL,16772.0480769231,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 28,Convert (date, '2014-2-26'),26,200,25579.93,Convert (date, '2014-5-15'),NULL,NULL,17481.66,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 28,Convert (date, '2014-9-17'),13,50,6406.45,Convert (date, '2014-10-8'),NULL,NULL,5363.93,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 28,Convert (date, '2014-9-1'),13,50,6024.45,Convert (date, '2014-10-21'),NULL,NULL,5769.93,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 29,Convert (date, '2010-2-16'),13,200,10766,Convert (date, '2010-5-20'),NULL,NULL,11632,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 29,Convert (date, '2010-3-10'),13,200,11862,Convert (date, '2010-5-20'),NULL,NULL,11632,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 29,Convert (date, '2010-11-9'),26,100,9317.59,Convert (date, '2011-5-5'),NULL,NULL,10906.82,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 29,Convert (date, '2010-12-2'),26,100,9600.23,Convert (date, '2011-5-5'),NULL,NULL,10906.81,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 29,Convert (date, '2010-12-7'),26,200,19684.87,Convert (date, '2011-5-5'),NULL,NULL,21821.78,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 29,Convert (date, '2010-12-13'),13,100,6749.41,Convert (date, '2011-6-3'),NULL,NULL,6846,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 29,Convert (date, '2011-1-3'),26,100,10078.95,Convert (date, '2011-6-23'),NULL,NULL,10445.95,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 29,Convert (date, '2011-1-13'),26,100,10257.05,Convert (date, '2011-6-23'),NULL,NULL,10445.95,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 29,Convert (date, '2011-2-17'),26,100,11138.19,Convert (date, '2011-6-23'),NULL,NULL,10445.95,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 29,Convert (date, '2011-3-7'),26,100,11559.54,Convert (date, '2011-6-23'),NULL,NULL,10445.95,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 29,Convert (date, '2011-3-17'),26,100,12279.32,Convert (date, '2011-8-19'),NULL,NULL,9406.53,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 29,Convert (date, '2012-1-19'),6,100,6653.7,Convert (date, '2012-11-13'),NULL,NULL,6866.1,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 29,Convert (date, '2012-3-27'),6,100,7142.6,Convert (date, '2012-11-13'),NULL,NULL,6866.1,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 29,Convert (date, '2013-1-4'),13,100,7530.55,Convert (date, '2013-10-7'),NULL,NULL,8982.252,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 29,Convert (date, '2013-2-4'),13,200,15477.23,Convert (date, '2013-10-7'),NULL,NULL,17964.504,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 29,Convert (date, '2013-9-11'),13,200,17720.89,Convert (date, '2013-10-7'),NULL,NULL,17964.504,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 29,Convert (date, '2013-11-27'),13,200,19288.65,Convert (date, '2014-8-4'),NULL,NULL,20077.3133333333,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 29,Convert (date, '2014-4-3'),13,100,10175.29,Convert (date, '2014-8-4'),NULL,NULL,10038.6566666667,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 29,Convert (date, '2014-12-29'),13,100,10723.95,Convert (date, '2015-7-7'),NULL,NULL,10648.525,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 29,Convert (date, '2015-6-23'),13,100,11159.83,Convert (date, '2015-7-7'),NULL,NULL,10648.525,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 30,Convert (date, '2010-11-9'),26,100,9317.59,Convert (date, '2011-5-5'),NULL,NULL,10906.82,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 30,Convert (date, '2010-12-2'),26,100,9600.23,Convert (date, '2011-5-5'),NULL,NULL,10906.81,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 30,Convert (date, '2010-12-7'),26,200,19684.87,Convert (date, '2011-5-5'),NULL,NULL,21821.78,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 30,Convert (date, '2010-12-13'),13,100,9855.41,Convert (date, '2011-5-5'),NULL,NULL,10945,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 30,Convert (date, '2011-1-5'),13,100,9922.41,Convert (date, '2011-5-5'),NULL,NULL,10946,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 30,Convert (date, '2011-1-3'),26,100,10078.95,Convert (date, '2011-6-23'),NULL,NULL,10445.95,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 30,Convert (date, '2011-1-13'),26,100,10257.05,Convert (date, '2011-6-23'),NULL,NULL,10445.95,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 30,Convert (date, '2011-2-17'),26,100,11138.19,Convert (date, '2011-6-23'),NULL,NULL,10445.95,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 30,Convert (date, '2011-3-7'),26,100,11559.54,Convert (date, '2011-6-23'),NULL,NULL,10445.95,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 30,Convert (date, '2011-6-22'),13,100,10787.27,Convert (date, '2011-7-29'),NULL,NULL,11184.68,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 30,Convert (date, '2011-7-6'),13,100,11156.23,Convert (date, '2011-7-29'),NULL,NULL,11184.68,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 30,Convert (date, '2011-7-20'),13,200,22979.95,Convert (date, '2011-7-29'),NULL,NULL,22369.36,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 30,Convert (date, '2011-7-26'),13,100,11730.16,Convert (date, '2011-7-29'),NULL,NULL,11184.68,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 30,Convert (date, '2011-3-17'),26,100,12279.32,Convert (date, '2011-8-19'),NULL,NULL,9406.53,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 30,Convert (date, '2011-12-28'),6,100,10202.55,Convert (date, '2012-4-12'),NULL,NULL,10142.07,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 30,Convert (date, '2012-2-10'),6,100,10621,Convert (date, '2012-4-12'),NULL,NULL,10142.07,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 30,Convert (date, '2012-1-26'),13,100,10572.88,Convert (date, '2012-4-13'),NULL,NULL,9966.4,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 30,Convert (date, '2011-12-28'),13,100,10201.88,Convert (date, '2012-4-14'),NULL,NULL,9966.4,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 30,Convert (date, '2011-12-27'),13,100,10043.56,Convert (date, '2012-4-15'),NULL,NULL,9966.4,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 30,Convert (date, '2011-7-21'),26,100,11587.075,Convert (date, '2012-11-14'),NULL,NULL,9955,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 30,Convert (date, '2013-2-15'),13,100,11243.15,Convert (date, '2013-11-19'),NULL,NULL,12514.73,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 30,Convert (date, '2012-2-21'),26,90,9908.721,Convert (date, '2014-8-7'),NULL,NULL,12264.3473684211,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 30,Convert (date, '2014-5-30'),26,50,6824.95,Convert (date, '2014-8-7'),NULL,NULL,6813.52631578947,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 30,Convert (date, '2014-6-12'),26,50,7028.48,Convert (date, '2014-8-7'),NULL,NULL,6813.52631578947,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 30,Convert (date, '2014-9-18'),13,90,12294.75,Convert (date, '2015-3-11'),NULL,NULL,9536.41125,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 30,Convert (date, '2014-12-29'),13,100,11386.7,Convert (date, '2015-3-11'),NULL,NULL,10596.0125,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 30,Convert (date, '2015-2-3'),13,50,5619.95,Convert (date, '2015-3-11'),NULL,NULL,5298.00625,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 30,Convert (date, '2015-3-27'),13,90,9744.15,Convert (date, '2015-7-7'),NULL,NULL,9261.44625,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 30,Convert (date, '2015-4-8'),13,50,5634.45,Convert (date, '2015-7-7'),NULL,NULL,5145.24791666667,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 30,Convert (date, '2015-4-15'),13,50,5782.45,Convert (date, '2015-7-7'),NULL,NULL,5145.24791666667,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 30,Convert (date, '2015-5-4'),13,50,5885.17,Convert (date, '2015-7-7'),NULL,NULL,5145.24791666667,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 31,Convert (date, '2013-1-4'),13,100,3519.07,Convert (date, '2013-8-26'),NULL,NULL,4102.07,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 31,Convert (date, '2013-2-4'),13,100,3636.75,Convert (date, '2013-8-26'),NULL,NULL,4102.07,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 31,Convert (date, '2013-2-15'),13,100,3725.95,Convert (date, '2013-8-26'),NULL,NULL,4102.07,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 31,Convert (date, '2013-7-29'),13,100,4225.56,Convert (date, '2013-8-26'),NULL,NULL,4102.07,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 31,Convert (date, '2013-1-4'),13,100,3519.07,Convert (date, '2013-10-7'),NULL,NULL,4056.88,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 31,Convert (date, '2013-12-3'),13,200,8731.95,Convert (date, '2014-8-4'),NULL,NULL,9049.456,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 31,Convert (date, '2014-6-26'),13,50,2306.95,Convert (date, '2014-8-4'),NULL,NULL,2262.364,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 31,Convert (date, '2011-1-3'),26,90,3013.884,Convert (date, '2014-8-7'),NULL,NULL,4059.14275862069,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 31,Convert (date, '2013-3-15'),26,200,7701.95,Convert (date, '2014-8-7'),NULL,NULL,9020.31724137931,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 31,Convert (date, '2015-3-23'),13,100,5062.88,Convert (date, '2015-4-24'),NULL,NULL,4940.47,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 32,Convert (date, '2010-12-13'),13,100,5242.95,Convert (date, '2011-6-3'),NULL,NULL,5471,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 32,Convert (date, '2010-12-15'),13,100,5270.95,Convert (date, '2011-6-3'),NULL,NULL,5471,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 32,Convert (date, '2011-1-5'),13,400,21043.95,Convert (date, '2011-6-3'),NULL,NULL,21884,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 32,Convert (date, '2011-1-5'),13,100,5259,Convert (date, '2011-6-3'),NULL,NULL,5471,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 32,Convert (date, '2011-5-2'),13,300,17274.63,Convert (date, '2011-6-3'),NULL,NULL,16413,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 32,Convert (date, '2011-5-10'),13,300,17058.81,Convert (date, '2011-6-3'),NULL,NULL,16413,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 32,Convert (date, '2010-11-9'),26,200,10267.73,Convert (date, '2011-6-15'),NULL,NULL,10868.49,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 32,Convert (date, '2010-12-7'),26,200,10443.95,Convert (date, '2011-6-15'),NULL,NULL,10868.49,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 32,Convert (date, '2010-12-17'),26,200,10543.95,Convert (date, '2011-6-15'),NULL,NULL,10868.49,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 32,Convert (date, '2011-3-23'),26,400,21871.95,Convert (date, '2011-6-15'),NULL,NULL,21736.97,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 32,Convert (date, '2011-5-9'),26,200,11285.29,Convert (date, '2011-6-15'),NULL,NULL,10868.47,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 32,Convert (date, '2011-6-6'),13,500,27402.95,Convert (date, '2011-6-15'),NULL,NULL,27166.52,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 32,Convert (date, '2010-12-7'),26,290,15114.05,Convert (date, '2011-11-30'),NULL,NULL,15736.79,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 32,Convert (date, '2011-3-28'),26,22,1215.87,Convert (date, '2011-11-30'),NULL,NULL,1193.82,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 32,Convert (date, '2011-12-28'),13,200,11021.29,Convert (date, '2012-11-9'),NULL,NULL,11540,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 32,Convert (date, '2012-1-26'),13,200,11387.41,Convert (date, '2012-11-9'),NULL,NULL,11540,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 32,Convert (date, '2012-2-7'),13,200,11439.65,Convert (date, '2012-11-9'),NULL,NULL,11540,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 32,Convert (date, '2011-12-27'),6,200,11010.7,Convert (date, '2012-11-13'),NULL,NULL,11574,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 32,Convert (date, '2012-1-26'),6,200,11392.7,Convert (date, '2012-11-13'),NULL,NULL,11574,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 32,Convert (date, '2013-4-10'),26,300,19883.25,Convert (date, '2013-8-29'),NULL,NULL,20295.69,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 32,Convert (date, '2012-12-17'),13,200,12183.75,Convert (date, '2013-10-7'),NULL,NULL,13808.696,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 32,Convert (date, '2013-1-24'),13,200,12655.75,Convert (date, '2013-10-7'),NULL,NULL,13808.696,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 32,Convert (date, '2013-2-15'),13,100,6401.05,Convert (date, '2013-10-7'),NULL,NULL,6904.348,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 32,Convert (date, '2013-11-27'),13,200,14879.3,Convert (date, '2014-2-18'),NULL,NULL,14681.79,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 32,Convert (date, '2013-11-27'),13,100,7439.65,Convert (date, '2014-8-22'),NULL,NULL,7780.4,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 32,Convert (date, '2014-12-29'),13,100,8237.94,Convert (date, '2015-4-24'),NULL,NULL,8136.91,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 32,Convert (date, '2011-4-7'),26,22,1237.31,Convert (date, '2015-6-10'),NULL,NULL,1772.5202,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 32,Convert (date, '2011-6-20'),26,78,4310.83,Convert (date, '2015-6-10'),NULL,NULL,6284.3898,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 33,Convert (date, '2013-10-21'),13,100,3778.4,Convert (date, '2013-11-19'),NULL,NULL,5560.76714285714,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 33,Convert (date, '2013-10-21'),13,200,6780.63,Convert (date, '2013-11-19'),NULL,NULL,11121.5342857143,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 33,Convert (date, '2013-11-11'),13,100,4891.95,Convert (date, '2013-11-19'),NULL,NULL,5560.76714285714,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 33,Convert (date, '2013-11-14'),13,100,5299.45,Convert (date, '2013-11-19'),NULL,NULL,5560.76714285714,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 33,Convert (date, '2013-11-15'),13,100,5698.95,Convert (date, '2013-11-19'),NULL,NULL,5560.76714285714,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 33,Convert (date, '2013-11-18'),13,100,6214.97,Convert (date, '2013-11-19'),NULL,NULL,5560.76714285714,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 33,Convert (date, '2013-11-7'),26,190,8130.0525,Convert (date, '2013-11-21'),NULL,NULL,6489.93,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 33,Convert (date, '2013-11-7'),26,10,427.8975,Convert (date, '2013-12-18'),NULL,NULL,334.34,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 33,Convert (date, '2013-11-27'),13,90,4249.64,Convert (date, '2013-12-18'),NULL,NULL,3069.99,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 34,Convert (date, '2014-10-30'),13,100,9828.55,Convert (date, '2014-11-25'),NULL,NULL,9811.37,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 34,Convert (date, '2014-10-13'),26,100,9358.05,Convert (date, '2015-2-13'),NULL,NULL,9830.87,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 34,Convert (date, '2014-12-24'),13,100,10329.74,Convert (date, '2015-2-13'),NULL,NULL,9836.73,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 35,Convert (date, '2006-8-24'),13,153,10096.47,Convert (date, '2008-9-17'),NULL,NULL,9822.6,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 35,Convert (date, '2008-4-4'),13,56,5476.24,Convert (date, '2008-9-17'),NULL,NULL,3595.2,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 35,Convert (date, '2009-7-27'),13,100,3499.94,Convert (date, '2010-5-20'),NULL,NULL,3673,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 35,Convert (date, '2010-4-1'),13,100,4299.93,Convert (date, '2010-5-20'),NULL,NULL,3673,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 35,Convert (date, '2011-1-5'),13,200,9737.73,Convert (date, '2011-6-3'),NULL,NULL,9660,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 35,Convert (date, '2010-12-29'),26,90,4306.356,Convert (date, '2013-7-8'),NULL,NULL,3388.66,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 35,Convert (date, '2010-12-29'),26,10,478.484,Convert (date, '2015-8-31'),NULL,NULL,337.94,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 36,Convert (date, '2013-8-13'),26,100,7241.15,Convert (date, '2013-9-3'),NULL,NULL,6992.68947368421,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 36,Convert (date, '2013-8-15'),26,90,5826.555,Convert (date, '2013-9-3'),NULL,NULL,6293.42052631579,0);
INSERT INTO Lot (TenantId, EquityId, Purchased, AccountId, Shares, Cost, SellDate, LastYear, LastMonth, Value, Active) VALUES ('', 36,Convert (date, '2013-8-15'),26,10,647.395,Convert (date, '2013-12-18'),NULL,NULL,525.8,0);

GO





GO
