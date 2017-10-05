.class final Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutFilter$1;
.super Ljava/lang/Object;
.source "ShortcutFilter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;)I
    .locals 2

    invoke-virtual {p1}, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;->isDeclaredInManifest()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;->isDeclaredInManifest()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;->isDeclaredInManifest()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;->isDeclaredInManifest()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;->getRank()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;->getRank()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;

    check-cast p2, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutFilter$1;->compare(Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;)I

    move-result v0

    return v0
.end method
