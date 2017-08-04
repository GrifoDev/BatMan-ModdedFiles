.class Lcom/android/launcher3/AboutPageActivity$4;
.super Ljava/lang/Object;
.source "AboutPageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/AboutPageActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/AboutPageActivity;


# direct methods
.method constructor <init>(Lcom/android/launcher3/AboutPageActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/AboutPageActivity$4;->this$0:Lcom/android/launcher3/AboutPageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/AboutPageActivity$4;->this$0:Lcom/android/launcher3/AboutPageActivity;

    invoke-static {v0}, Lcom/android/launcher3/AboutPageActivity;->access$100(Lcom/android/launcher3/AboutPageActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/AboutPageActivity;->jumpToSamsungApps(Landroid/content/Context;)V

    return-void
.end method
