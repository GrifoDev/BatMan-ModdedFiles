.class Lcom/android/launcher3/allapps/SearchResultStore;
.super Ljava/lang/Object;
.source "SearchResultStore.java"


# instance fields
.field contents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/allapps/GalaxyAppsContent;",
            ">;"
        }
    .end annotation
.end field

.field currencyUnit:Ljava/lang/String;

.field currencyUnitDivision:Ljava/lang/String;

.field currencyUnitHasPenny:Ljava/lang/String;

.field currencyUnitPrecedes:Ljava/lang/String;

.field decimalSymbol:Ljava/lang/String;

.field digitGroupingSymbol:Ljava/lang/String;

.field keyword:Ljava/lang/String;

.field resultCode:Ljava/lang/String;

.field resultMsg:Ljava/lang/String;

.field totalCount:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/SearchResultStore;->contents:Ljava/util/ArrayList;

    return-void
.end method
