.class Lcom/android/launcher3/widget/view/WidgetFolder$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "WidgetFolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/widget/view/WidgetFolder;->open(Landroid/view/View;ZLjava/util/HashMap;)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/widget/view/WidgetFolder;


# direct methods
.method constructor <init>(Lcom/android/launcher3/widget/view/WidgetFolder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/widget/view/WidgetFolder$2;->this$0:Lcom/android/launcher3/widget/view/WidgetFolder;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetFolder$2;->this$0:Lcom/android/launcher3/widget/view/WidgetFolder;

    invoke-static {v1}, Lcom/android/launcher3/widget/view/WidgetFolder;->access$200(Lcom/android/launcher3/widget/view/WidgetFolder;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090044

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/widget/view/WidgetFolder$2;->this$0:Lcom/android/launcher3/widget/view/WidgetFolder;

    invoke-static {v3}, Lcom/android/launcher3/widget/view/WidgetFolder;->access$100(Lcom/android/launcher3/widget/view/WidgetFolder;)Lcom/android/launcher3/widget/view/WidgetFolderPagedView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/widget/view/WidgetFolderPagedView;->getCurrentPageDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/Talk;->say(Ljava/lang/String;)V

    return-void
.end method
