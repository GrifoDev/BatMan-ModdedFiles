.class Lcom/android/launcher3/home/LauncherAppWidgetHostView$WeatherCityAddObserver;
.super Landroid/database/ContentObserver;
.source "LauncherAppWidgetHostView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/home/LauncherAppWidgetHostView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WeatherCityAddObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/LauncherAppWidgetHostView;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/home/LauncherAppWidgetHostView;)V
    .locals 1

    iput-object p1, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView$WeatherCityAddObserver;->this$0:Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView$WeatherCityAddObserver;->this$0:Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    invoke-static {v0}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->access$700(Lcom/android/launcher3/home/LauncherAppWidgetHostView;)V

    return-void
.end method
