CREATE TABLE [dbo].[FactInternetSales] (
    [ProductKey]       INT           NOT NULL,
    [OrderDateKey]     INT           NOT NULL,
    [CustomerKey]      INT           NOT NULL,
    [PromotionKey]     INT           NOT NULL,
    [SalesOrderNumber] NVARCHAR (20) NOT NULL,
    [OrderQuantity]    SMALLINT      NOT NULL,
    [UnitPrice]        MONEY         NOT NULL,
    [SalesAmount]      MONEY         NOT NULL
)
WITH (CLUSTERED COLUMNSTORE INDEX, DISTRIBUTION = HASH([ProductKey]));

