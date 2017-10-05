.class Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer$UpdateShortcutChild;
.super Ljava/lang/Object;
.source "DeepShortcutsContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateShortcutChild"
.end annotation


# instance fields
.field private mShortcutChildIndex:I

.field private mShortcutChildInfo:Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer$UnbadgedShortcutInfo;

.field final synthetic this$0:Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;ILcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer$UnbadgedShortcutInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer$UpdateShortcutChild;->this$0:Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer$UpdateShortcutChild;->mShortcutChildIndex:I

    iput-object p3, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer$UpdateShortcutChild;->mShortcutChildInfo:Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer$UnbadgedShortcutInfo;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer$UpdateShortcutChild;->this$0:Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;

    iget v1, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer$UpdateShortcutChild;->mShortcutChildIndex:I

    invoke-static {v0, v1}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->access$300(Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;I)Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer$UpdateShortcutChild;->mShortcutChildInfo:Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer$UnbadgedShortcutInfo;

    iget-object v2, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer$UpdateShortcutChild;->this$0:Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView;->applyShortcutInfo(Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer$UnbadgedShortcutInfo;Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;)V

    return-void
.end method
