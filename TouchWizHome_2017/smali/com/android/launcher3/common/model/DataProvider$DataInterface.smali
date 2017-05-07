.class interface abstract Lcom/android/launcher3/common/model/DataProvider$DataInterface;
.super Ljava/lang/Object;
.source "DataProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/common/model/DataProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "DataInterface"
.end annotation


# virtual methods
.method public abstract checkId(Ljava/lang/String;Landroid/content/ContentValues;)V
.end method

.method public abstract checkTable()Z
.end method

.method public abstract createTable(J)V
.end method

.method public abstract deleteEmptyFolders()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract deleteTable()V
.end method

.method public abstract loadScreensFromDb()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract migrateTable(JII)Z
.end method
