.class Lcom/android/launcher3/util/Talk$1;
.super Ljava/lang/Object;
.source "Talk.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/util/Talk;->postSay(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/util/Talk;

.field final synthetic val$s:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/launcher3/util/Talk;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/util/Talk$1;->this$0:Lcom/android/launcher3/util/Talk;

    iput-object p2, p0, Lcom/android/launcher3/util/Talk$1;->val$s:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/util/Talk$1;->this$0:Lcom/android/launcher3/util/Talk;

    iget-object v1, p0, Lcom/android/launcher3/util/Talk$1;->val$s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/Talk;->say(Ljava/lang/String;)V

    return-void
.end method
