.class final Lcom/android/server/notification/NotificationManagerService$SmartGlowObserver;
.super Landroid/database/ContentObserver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SmartGlowObserver"
.end annotation


# instance fields
.field private final SMART_GLOW_KEY_COLOR_1:Landroid/net/Uri;

.field private final SMART_GLOW_KEY_COLOR_2:Landroid/net/Uri;

.field private final SMART_GLOW_KEY_COLOR_3:Landroid/net/Uri;

.field private final SMART_GLOW_KEY_COLOR_4:Landroid/net/Uri;

.field private final SMART_GLOW_ON_OFF_STATUS:Landroid/net/Uri;

.field private final SMART_GLOW_PACKAGE_LIST:Landroid/net/Uri;

.field private final SMART_GLOW_PRIORITY_NOTIFIER_ON_OFF_STATUS:Landroid/net/Uri;

.field smartGlowString:Ljava/lang/String;

.field smartLightPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Handler;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$SmartGlowObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string/jumbo v0, "ml_pn_package"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService$SmartGlowObserver;->SMART_GLOW_PACKAGE_LIST:Landroid/net/Uri;

    const-string/jumbo v0, "ml_status"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService$SmartGlowObserver;->SMART_GLOW_ON_OFF_STATUS:Landroid/net/Uri;

    const-string/jumbo v0, "ml_pn_status"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService$SmartGlowObserver;->SMART_GLOW_PRIORITY_NOTIFIER_ON_OFF_STATUS:Landroid/net/Uri;

    const-string/jumbo v0, "ml_color_1"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService$SmartGlowObserver;->SMART_GLOW_KEY_COLOR_1:Landroid/net/Uri;

    const-string/jumbo v0, "ml_color_2"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService$SmartGlowObserver;->SMART_GLOW_KEY_COLOR_2:Landroid/net/Uri;

    const-string/jumbo v0, "ml_color_3"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService$SmartGlowObserver;->SMART_GLOW_KEY_COLOR_3:Landroid/net/Uri;

    const-string/jumbo v0, "ml_color_4"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService$SmartGlowObserver;->SMART_GLOW_KEY_COLOR_4:Landroid/net/Uri;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService$SmartGlowObserver;->smartLightPackages:Ljava/util/HashMap;

    return-void
.end method

.method private getSmartGlowColor(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$SmartGlowObserver;->smartLightPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$SmartGlowObserver;->smartLightPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private getSmartGlowString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$SmartGlowObserver;->smartGlowString:Ljava/lang/String;

    return-object v0
.end method

.method private updatePackages(Landroid/net/Uri;)V
    .locals 14

    const/4 v13, 0x1

    const/4 v7, 0x0

    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$SmartGlowObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v6}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v6, "ml_status"

    invoke-static {v2, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_0

    const-string/jumbo v6, "ml_pn_status"

    invoke-static {v2, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_0

    const/4 v3, 0x1

    :goto_0
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$SmartGlowObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v6, v3}, Lcom/android/server/notification/NotificationManagerService;->-set7(Lcom/android/server/notification/NotificationManagerService;Z)Z

    const-string/jumbo v6, "ml_pn_package"

    invoke-static {v2, v6}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/notification/NotificationManagerService$SmartGlowObserver;->smartGlowString:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$SmartGlowObserver;->smartGlowString:Ljava/lang/String;

    const-string/jumbo v6, "NotificationService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updatedSmartString : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$SmartGlowObserver;->smartLightPackages:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    if-eqz v5, :cond_2

    const-string/jumbo v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string/jumbo v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v8, v1

    move v6, v7

    :goto_1
    if-ge v6, v8, :cond_2

    aget-object v0, v1, v6

    const-string/jumbo v9, ":"

    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iget-object v9, p0, Lcom/android/server/notification/NotificationManagerService$SmartGlowObserver;->smartLightPackages:Ljava/util/HashMap;

    aget-object v10, v4, v13

    iget-object v11, p0, Lcom/android/server/notification/NotificationManagerService$SmartGlowObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v11}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    aget-object v12, v4, v7

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v11, v12}, Landroid/provider/SemSmartGlow;->getColorForIndex(Landroid/content/ContentResolver;I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    const-string/jumbo v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string/jumbo v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$SmartGlowObserver;->smartLightPackages:Ljava/util/HashMap;

    aget-object v8, v4, v13

    iget-object v9, p0, Lcom/android/server/notification/NotificationManagerService$SmartGlowObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v9}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    aget-object v7, v4, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v9, v7}, Landroid/provider/SemSmartGlow;->getColorForIndex(Landroid/content/ContentResolver;I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/android/server/notification/NotificationManagerService$SmartGlowObserver;->updatePackages(Landroid/net/Uri;)V

    return-void
.end method

.method smartGlowRegister()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SmartGlowObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SmartGlowObserver;->SMART_GLOW_PACKAGE_LIST:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SmartGlowObserver;->SMART_GLOW_ON_OFF_STATUS:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SmartGlowObserver;->SMART_GLOW_PRIORITY_NOTIFIER_ON_OFF_STATUS:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SmartGlowObserver;->SMART_GLOW_KEY_COLOR_1:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SmartGlowObserver;->SMART_GLOW_KEY_COLOR_2:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SmartGlowObserver;->SMART_GLOW_KEY_COLOR_3:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SmartGlowObserver;->SMART_GLOW_KEY_COLOR_4:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/notification/NotificationManagerService$SmartGlowObserver;->updatePackages(Landroid/net/Uri;)V

    return-void
.end method
