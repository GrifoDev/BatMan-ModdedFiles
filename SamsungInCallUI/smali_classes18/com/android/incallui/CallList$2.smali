.class Lcom/android/incallui/CallList$2;
.super Landroid/os/AsyncTask;
.source "CallList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/CallList;->fetchDefaultColorAsync(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/CallList;


# direct methods
.method constructor <init>(Lcom/android/incallui/CallList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/CallList$2;->this$0:Lcom/android/incallui/CallList;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v3, "CallList"

    const-string v4, "fetchDefaultColorAsync"

    invoke-static {v3, v4, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    aget-object v1, p1, v5

    check-cast v1, Ljava/lang/String;

    invoke-static {}, Lcom/android/incallui/util/GraphicResourceUtils;->getGradientDefaultColors()[I

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/CallList$2;->this$0:Lcom/android/incallui/CallList;

    invoke-virtual {v3, v1}, Lcom/android/incallui/CallList;->getCallById(Ljava/lang/String;)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    aget v3, v2, v5

    aget v4, v2, v6

    invoke-virtual {v0, v3, v4}, Lcom/android/incallui/Call;->setGradientDefaultColor(II)V

    :cond_0
    const/4 v3, 0x0

    return-object v3
.end method
