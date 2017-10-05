.class Lcom/android/launcher3/common/multiselect/MultiSelectManager$2;
.super Ljava/lang/Object;
.source "MultiSelectManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/common/multiselect/MultiSelectManager;->disableApp(Lcom/android/launcher3/common/base/item/IconInfo;Landroid/content/ComponentName;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/common/multiselect/MultiSelectManager;


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/multiselect/MultiSelectManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager$2;->this$0:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager$2;->this$0:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v0}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->postUninstallActivity()V

    return-void
.end method
