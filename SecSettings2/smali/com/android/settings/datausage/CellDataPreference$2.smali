.class Lcom/android/settings/datausage/CellDataPreference$2;
.super Ljava/lang/Object;
.source "CellDataPreference.java"

# interfaces
.implements Lcom/sec/ims/ImsManager$ConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/datausage/CellDataPreference;->getImsManager(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/CellDataPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/CellDataPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datausage/CellDataPreference$2;->this$0:Lcom/android/settings/datausage/CellDataPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 0

    return-void
.end method

.method public onDisconnected()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/datausage/CellDataPreference$2;->this$0:Lcom/android/settings/datausage/CellDataPreference;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/datausage/CellDataPreference;->-set0(Lcom/android/settings/datausage/CellDataPreference;Lcom/sec/ims/ImsManager;)Lcom/sec/ims/ImsManager;

    return-void
.end method
