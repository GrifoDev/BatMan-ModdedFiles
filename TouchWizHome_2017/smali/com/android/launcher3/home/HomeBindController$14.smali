.class Lcom/android/launcher3/home/HomeBindController$14;
.super Landroid/os/AsyncTask;
.source "HomeBindController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/HomeBindController;->deleteWidgetInfo(Lcom/android/launcher3/home/LauncherAppWidgetInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/HomeBindController;

.field final synthetic val$appWidgetHost:Lcom/android/launcher3/home/LauncherAppWidgetHost;

.field final synthetic val$widgetInfo:Lcom/android/launcher3/home/LauncherAppWidgetInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HomeBindController;Lcom/android/launcher3/home/LauncherAppWidgetHost;Lcom/android/launcher3/home/LauncherAppWidgetInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/HomeBindController$14;->this$0:Lcom/android/launcher3/home/HomeBindController;

    iput-object p2, p0, Lcom/android/launcher3/home/HomeBindController$14;->val$appWidgetHost:Lcom/android/launcher3/home/LauncherAppWidgetHost;

    iput-object p3, p0, Lcom/android/launcher3/home/HomeBindController$14;->val$widgetInfo:Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/HomeBindController$14;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/home/HomeBindController$14;->val$appWidgetHost:Lcom/android/launcher3/home/LauncherAppWidgetHost;

    iget-object v1, p0, Lcom/android/launcher3/home/HomeBindController$14;->val$widgetInfo:Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    iget v1, v1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    const/4 v0, 0x0

    return-object v0
.end method
