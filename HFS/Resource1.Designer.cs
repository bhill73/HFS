﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace HFS {
    using System;
    
    
    /// <summary>
    ///   A strongly-typed resource class, for looking up localized strings, etc.
    /// </summary>
    // This class was auto-generated by the StronglyTypedResourceBuilder
    // class via a tool like ResGen or Visual Studio.
    // To add or remove a member, edit your .ResX file then rerun ResGen
    // with the /str option, or rebuild your VS project.
    [global::System.CodeDom.Compiler.GeneratedCodeAttribute("System.Resources.Tools.StronglyTypedResourceBuilder", "4.0.0.0")]
    [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
    [global::System.Runtime.CompilerServices.CompilerGeneratedAttribute()]
    internal class Resource1 {
        
        private static global::System.Resources.ResourceManager resourceMan;
        
        private static global::System.Globalization.CultureInfo resourceCulture;
        
        [global::System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1811:AvoidUncalledPrivateCode")]
        internal Resource1() {
        }
        
        /// <summary>
        ///   Returns the cached ResourceManager instance used by this class.
        /// </summary>
        [global::System.ComponentModel.EditorBrowsableAttribute(global::System.ComponentModel.EditorBrowsableState.Advanced)]
        internal static global::System.Resources.ResourceManager ResourceManager {
            get {
                if (object.ReferenceEquals(resourceMan, null)) {
                    global::System.Resources.ResourceManager temp = new global::System.Resources.ResourceManager("HFS.Resource1", typeof(Resource1).Assembly);
                    resourceMan = temp;
                }
                return resourceMan;
            }
        }
        
        /// <summary>
        ///   Overrides the current thread's CurrentUICulture property for all
        ///   resource lookups using this strongly typed resource class.
        /// </summary>
        [global::System.ComponentModel.EditorBrowsableAttribute(global::System.ComponentModel.EditorBrowsableState.Advanced)]
        internal static global::System.Globalization.CultureInfo Culture {
            get {
                return resourceCulture;
            }
            set {
                resourceCulture = value;
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to DELETE FROM dbo.Account
        ///SET IDENTITY_INSERT dbo.Account ON
        ///INSERT INTO Account (Id, Name, PortfolioId) VALUES ( 3,&apos;PayPal&apos;,1);
        ///INSERT INTO Account (Id, Name, PortfolioId) VALUES ( 5,&apos;Scottrade Bank FDIC&apos;,4);
        ///INSERT INTO Account (Id, Name, PortfolioId) VALUES ( 6,&apos;Scottrade Investment&apos;,4);
        ///INSERT INTO Account (Id, Name, PortfolioId) VALUES ( 13,&apos;Fidelity IRA&apos;,2);
        ///INSERT INTO Account (Id, Name, PortfolioId) VALUES ( 25,&apos;Fidelity Bank FDIC&apos;,1);
        ///INSERT INTO Account (Id, Name, PortfolioId) VALUES ( 26,&apos;Fi [rest of string was truncated]&quot;;.
        /// </summary>
        internal static string _1_create_account {
            get {
                return ResourceManager.GetString("_1_create_account", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to DELETE FROM Symbol
        ///INSERT INTO Symbol VALUES ( &apos;A_Dow&apos;,&apos;Dow Jones Industrial Average&apos;);
        ///INSERT INTO Symbol VALUES ( &apos;A_Nasdaq&apos;,&apos;Nasdaq Exchange&apos;)
        ///INSERT INTO Symbol VALUES ( &apos;A_SP500&apos;,&apos;Standard &amp; Poors 500&apos;)
        ///INSERT INTO Symbol VALUES ( &apos;AAPL&apos;,&apos;Apple, Inc&apos;)
        ///INSERT INTO Symbol VALUES ( &apos;ADBE&apos;,&apos;Adobe, Inc&apos;)
        ///INSERT INTO Symbol VALUES ( &apos;AMAVF&apos;,&apos;Arcam Ab Ord&apos;)
        ///INSERT INTO Symbol VALUES ( &apos;AMZN&apos;,&apos;Amazon.com, Inc&apos;)
        ///INSERT INTO Symbol VALUES ( &apos;AXON&apos;,&apos;Axovant Sciences Ltd&apos;)
        ///INSERT INTO Symbol VALUES ( &apos;BAB [rest of string was truncated]&quot;;.
        /// </summary>
        internal static string _2_create_symbols {
            get {
                return ResourceManager.GetString("_2_create_symbols", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to DELETE FROM ExpenseCode 
        ///INSERT INTO ExpenseCode VALUES ( &apos;AMY&apos;,&apos;Amy&apos;,&apos;Family&apos;,&apos;O&apos;);
        ///INSERT INTO ExpenseCode VALUES ( &apos;AOL&apos;,&apos;AOL Time Warner&apos;,&apos;Household&apos;,&apos;O&apos;);
        ///INSERT INTO ExpenseCode VALUES ( &apos;ATM&apos;,&apos;7/24&apos;,&apos;Financial&apos;,&apos;O&apos;);
        ///INSERT INTO ExpenseCode VALUES ( &apos;AXP&apos;,&apos;American Express&apos;,&apos;Credit Card&apos;,&apos;O&apos;);
        ///INSERT INTO ExpenseCode VALUES ( &apos;BBC&apos;,&apos;s&apos;,&apos;Hobby&apos;,&apos;O&apos;);
        ///INSERT INTO ExpenseCode VALUES ( &apos;BND&apos;,&apos;Bonds&apos;,&apos;Financial&apos;,&apos;O&apos;);
        ///INSERT INTO ExpenseCode VALUES ( &apos;BNS&apos;,&apos;Bonus&apos;,&apos;Financial&apos;,&apos;O&apos;);
        ///INSERT INTO Exp [rest of string was truncated]&quot;;.
        /// </summary>
        internal static string _3_create_expensecodes {
            get {
                return ResourceManager.GetString("_3_create_expensecodes", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to DELETE FROM Equity
        ///SET IDENTITY_INSERT dbo.Equity ON
        ///INSERT INTO Equity (Id, Symbol, Name, BasketId, Show, Protection, BiMoIx, SeSoIx) VALUES (1, &apos;A_Dow&apos;,&apos;Dow Jones Industrial Average&apos;,5,0,0,0,0);
        ///INSERT INTO Equity (Id, Symbol, Name, BasketId, Show, Protection, BiMoIx, SeSoIx) VALUES (2, &apos;A_Nasdaq&apos;,&apos;Nasdaq Exchange&apos;,5,0,0,0,0);
        ///INSERT INTO Equity (Id, Symbol, Name, BasketId, Show, Protection, BiMoIx, SeSoIx) VALUES (3, &apos;A_SP500&apos;,&apos;Standard &amp; Poors 500&apos;,5,&apos;&apos;,0,0,0);
        ///INSERT INTO Equity (Id, Symbol, Name, [rest of string was truncated]&quot;;.
        /// </summary>
        internal static string _4_create_equities {
            get {
                return ResourceManager.GetString("_4_create_equities", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to DELETE FROM Lot
        ///INSERT INTO Lot VALUES (5,Convert (date, &apos;2016-1-19&apos;),13,50,4505.95,NULL,4505.95,5007,4895.25,1);
        ///INSERT INTO Lot VALUES (5,Convert (date, &apos;2016-3-18&apos;),13,50,4688.15,NULL,4688.15,5007,4895.25,1);
        ///INSERT INTO Lot VALUES (5,Convert (date, &apos;2016-5-16&apos;),13,50,4865.45,NULL,4865.45,5007,4895.25,1);
        ///INSERT INTO Lot VALUES (5,Convert (date, &apos;2016-5-31&apos;),13,50,5027.45,NULL,5027.45,5027.45,4895.25,1);
        ///INSERT INTO Lot VALUES (11,Convert (date, &apos;2010-11-9&apos;),26,10,824.994,NULL,807.45,827.3,834.701,1 [rest of string was truncated]&quot;;.
        /// </summary>
        internal static string _5_create_lots {
            get {
                return ResourceManager.GetString("_5_create_lots", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to DELETE FROM CASH
        ///INSERT INTO CASH VALUES ( 26,&apos;DEP&apos;,NULL,&apos;SalomonSmithBarney&apos;,Convert (date, &apos;2001-3-2&apos;),1,74068.26);
        ///INSERT INTO CASH VALUES ( 26,&apos;INT&apos;,NULL,&apos;SalomonSmithBarney&apos;,Convert (date, &apos;2001-3-9&apos;),1,62.66);
        ///INSERT INTO CASH VALUES ( 26,&apos;INT&apos;,NULL,&apos;SalomonSmithBarney&apos;,Convert (date, &apos;2001-4-12&apos;),1,347.72);
        ///INSERT INTO CASH VALUES ( 26,&apos;INT&apos;,NULL,&apos;SalomonSmithBarney&apos;,Convert (date, &apos;2001-5-11&apos;),1,258.21);
        ///INSERT INTO CASH VALUES ( 26,&apos;INT&apos;,NULL,&apos;SalomonSmithBarney&apos;,Convert (date, &apos;2001-6-8&apos;),1,2 [rest of string was truncated]&quot;;.
        /// </summary>
        internal static string _6_create_cash {
            get {
                return ResourceManager.GetString("_6_create_cash", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to CREATE VIEW as LotsDDs
        ///                SELECT Lot.*, IIf(SellDate Is Null,
        ///                (datediff(day,purchased,getdate())*cost),
        ///                (datediff(day,purchased,selldate)*cost))
        ///                 AS DollarDays
        ///                FROM Lot.
        /// </summary>
        internal static string _7_create_lotsdd_view {
            get {
                return ResourceManager.GetString("_7_create_lotsdd_view", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to CREATE VIEW as EquDiv
        ///                SELECT [Transaction] as Symbol, Sum(Amount) AS Dividends
        ///                FROM Cash
        ///                WHERE Code =&apos;DIV&apos;
        ///                GROUP BY [Transaction].
        /// </summary>
        internal static string _8_create_equdiv_view {
            get {
                return ResourceManager.GetString("_8_create_equdiv_view", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to DELETE FROM Basket
        ///SET IDENTITY_INSERT dbo.Basket ON
        ///INSERT INTO Basket (Id, Symbol, Name, BiMoIx, SeSoIx, Protection) VALUES (1, &apos;A&apos;,&apos;PowersharesQQQ&apos;, 0.04, -10.0, 1000);
        ///INSERT INTO Basket (Id, Symbol, Name, BiMoIx, SeSoIx, Protection) VALUES (2, &apos;B&apos;, &apos;Sector Vipers&apos;, 0.04, -10.0, 1000);
        ///INSERT INTO Basket (Id, Symbol, Name, BiMoIx, SeSoIx, Protection) VALUES (3, &apos;C&apos;, &apos;Commodities Plus&apos;, 0.04, -15.0, 1000 );
        ///INSERT INTO Basket (Id, Symbol, Name, BiMoIx, SeSoIx, Protection) VALUES (4, &apos;D&apos;, &apos;Stocks&apos;, 0 [rest of string was truncated]&quot;;.
        /// </summary>
        internal static string create_baskets {
            get {
                return ResourceManager.GetString("create_baskets", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to DELETE FROM portfolio
        ///SET IDENTITY_INSERT dbo.Portfolio ON
        ///insert into portfolio (Id, Symbol, Name) values (1, &apos;BKI&apos;, &apos;B&amp;K Investment&apos;);
        ///insert into portfolio (Id, Symbol, Name)  values (2, &apos;BKR&apos;, &apos;B&amp;K Retirement&apos;);
        ///insert into portfolio  (Id, Symbol, Name) values (3, &apos;GNO&apos;, &apos;Junior&apos;&apos;s Investment&apos;);
        ///insert into portfolio  (Id, Symbol, Name) values (4, &apos;HFT&apos;, &apos;Hill Foundation&apos;);
        ///SET IDENTITY_INSERT dbo.Portfolio OFF
        ///
        ///GO
        ///
        ///DELETE FROM Basket
        ///SET IDENTITY_INSERT dbo.Basket ON
        ///INSERT INTO Basket (Id, [rest of string was truncated]&quot;;.
        /// </summary>
        internal static string create_data {
            get {
                return ResourceManager.GetString("create_data", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to DELETE FROM portfolio
        ///SET IDENTITY_INSERT dbo.Portfolio ON
        ///insert into portfolio (Id, Symbol, Name) values (1, &apos;BKI&apos;, &apos;B&amp;K Investment&apos;);
        ///insert into portfolio (Id, Symbol, Name)  values (2, &apos;BKR&apos;, &apos;B&amp;K Retirement&apos;);
        ///insert into portfolio  (Id, Symbol, Name) values (3, &apos;GNO&apos;, &apos;Junior&apos;s Investment&apos;);
        ///insert into portfolio  (Id, Symbol, Name) values (4, &apos;HFT&apos;, &apos;Hill Foundation&apos;);
        ///SET IDENTITY_INSERT dbo.Portfolio OFF
        ///.
        /// </summary>
        internal static string create_portfolios {
            get {
                return ResourceManager.GetString("create_portfolios", resourceCulture);
            }
        }
    }
}
