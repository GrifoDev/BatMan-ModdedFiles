.class public Lcom/samsung/android/desktopmode/DesktopModePresentationManager;
.super Ljava/lang/Object;
.source "DesktopModePresentationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/desktopmode/DesktopModePresentationManager$ExternalPresentation;,
        Lcom/samsung/android/desktopmode/DesktopModePresentationManager$InternalPresentationScreen;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;

.field public static final TYPE_ANY:I = 0x0

.field public static final TYPE_BLACK_SCREEN:I = 0x4

.field public static final TYPE_INTRO:I = 0x1

.field public static final TYPE_LOADING_SCREEN_ENTER:I = 0x2

.field public static final TYPE_LOADING_SCREEN_EXIT:I = 0x3

.field public static final WHERE_ANY:I = 0x0

.field public static final WHERE_EXTERNAL:I = 0x2

.field public static final WHERE_INTERNAL:I = 0x1


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mExternalPresentations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/desktopmode/DesktopModePresentationManager$ExternalPresentation;",
            ">;"
        }
    .end annotation
.end field

.field private mInternalPresentationScreen:Lcom/samsung/android/desktopmode/DesktopModePresentationManager$InternalPresentationScreen;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModePresentationManager;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/desktopmode/DesktopModePresentationManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/desktopmode/DesktopModePresentationManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/desktopmode/DesktopModePresentationManager;->TAG:Ljava/lang/String;

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    sput-boolean v0, Lcom/samsung/android/desktopmode/DesktopModePresentationManager;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/desktopmode/DesktopModePresentationManager;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/desktopmode/DesktopModePresentationManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/samsung/android/desktopmode/DesktopModePresentationManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-void
.end method

.method private dismissInternal()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/desktopmode/DesktopModePresentationManager;->mInternalPresentationScreen:Lcom/samsung/android/desktopmode/DesktopModePresentationManager$InternalPresentationScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/desktopmode/DesktopModePresentationManager;->mInternalPresentationScreen:Lcom/samsung/android/desktopmode/DesktopModePresentationManager$InternalPresentationScreen;

    invoke-static {v0}, Lcom/samsung/android/desktopmode/DesktopModePresentationManager$InternalPresentationScreen;->-wrap0(Lcom/samsung/android/desktopmode/DesktopModePresentationManager$InternalPresentationScreen;)V

    iput-object v1, p0, Lcom/samsung/android/desktopmode/DesktopModePresentationManager;->mInternalPresentationScreen:Lcom/samsung/android/desktopmode/DesktopModePresentationManager$InternalPresentationScreen;

    :cond_0
    return-void
.end method

.method public static typeToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "TYPE_ANY"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "TYPE_INTRO"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "TYPE_LOADING_SCREEN_ENTER"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "TYPE_LOADING_SCREEN_EXIT"

    return-object v0

    :pswitch_4
    const-string/jumbo v0, "TYPE_BLACK_SCREEN"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public dismissAll()V
    .locals 2

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModePresentationManager;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/desktopmode/DesktopModePresentationManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "dismissAll()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/desktopmode/DesktopModePresentationManager;->dismissExternal(I)V

    invoke-direct {p0}, Lcom/samsung/android/desktopmode/DesktopModePresentationManager;->dismissInternal()V

    return-void
.end method

.method public dismissExternal(I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/samsung/android/desktopmode/DesktopModePresentationManager;->mExternalPresentations:Ljava/util/List;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/desktopmode/DesktopModePresentationManager;->mExternalPresentations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/desktopmode/DesktopModePresentationManager$ExternalPresentation;

    if-eqz p1, :cond_1

    iget v2, v1, Lcom/samsung/android/desktopmode/DesktopModePresentationManager$ExternalPresentation;->mType:I

    if-ne v2, p1, :cond_0

    :cond_1
    invoke-virtual {v1}, Lcom/samsung/android/desktopmode/DesktopModePresentationManager$ExternalPresentation;->dismiss()V

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/desktopmode/DesktopModePresentationManager;->mExternalPresentations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    iput-object v3, p0, Lcom/samsung/android/desktopmode/DesktopModePresentationManager;->mExternalPresentations:Ljava/util/List;

    :cond_3
    return-void
.end method

.method public exists(II)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    const/4 v4, 0x2

    if-ne p1, v4, :cond_2

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/desktopmode/DesktopModePresentationManager;->mExternalPresentations:Ljava/util/List;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/desktopmode/DesktopModePresentationManager;->mExternalPresentations:Ljava/util/List;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/DesktopModePresentationManager$ExternalPresentation;

    iget v4, v0, Lcom/samsung/android/desktopmode/DesktopModePresentationManager$ExternalPresentation;->mType:I

    if-ne v4, p2, :cond_1

    return v2

    :cond_2
    if-eqz p1, :cond_3

    if-ne p1, v2, :cond_5

    :cond_3
    iget-object v4, p0, Lcom/samsung/android/desktopmode/DesktopModePresentationManager;->mInternalPresentationScreen:Lcom/samsung/android/desktopmode/DesktopModePresentationManager$InternalPresentationScreen;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/samsung/android/desktopmode/DesktopModePresentationManager;->mInternalPresentationScreen:Lcom/samsung/android/desktopmode/DesktopModePresentationManager$InternalPresentationScreen;

    iget v4, v4, Lcom/samsung/android/desktopmode/DesktopModePresentationManager$InternalPresentationScreen;->mType:I

    if-ne v4, p2, :cond_4

    :goto_0
    return v2

    :cond_4
    move v2, v3

    goto :goto_0

    :cond_5
    move v2, v3

    goto :goto_0
.end method

.method public showExternal(I)V
    .locals 8

    iget-object v4, p0, Lcom/samsung/android/desktopmode/DesktopModePresentationManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v4}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v1

    const/4 v4, 0x0

    array-length v5, v1

    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v0, v1, v4

    invoke-virtual {v0}, Landroid/view/Display;->getType()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_1

    new-instance v3, Lcom/samsung/android/desktopmode/DesktopModePresentationManager$ExternalPresentation;

    iget-object v6, p0, Lcom/samsung/android/desktopmode/DesktopModePresentationManager;->mContext:Landroid/content/Context;

    invoke-direct {v3, v6, v0, p1}, Lcom/samsung/android/desktopmode/DesktopModePresentationManager$ExternalPresentation;-><init>(Landroid/content/Context;Landroid/view/Display;I)V

    :try_start_0
    invoke-virtual {v3}, Lcom/samsung/android/desktopmode/DesktopModePresentationManager$ExternalPresentation;->show()V

    iget-object v6, p0, Lcom/samsung/android/desktopmode/DesktopModePresentationManager;->mExternalPresentations:Ljava/util/List;

    if-nez v6, :cond_0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/samsung/android/desktopmode/DesktopModePresentationManager;->mExternalPresentations:Ljava/util/List;

    :cond_0
    iget-object v6, p0, Lcom/samsung/android/desktopmode/DesktopModePresentationManager;->mExternalPresentations:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/view/WindowManager$InvalidDisplayException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    sget-boolean v6, Lcom/samsung/android/desktopmode/DesktopModePresentationManager;->DEBUG:Z

    if-eqz v6, :cond_1

    sget-object v6, Lcom/samsung/android/desktopmode/DesktopModePresentationManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "Display was removed in the meantime."

    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_2
    return-void
.end method

.method public showInternal(I)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/desktopmode/DesktopModePresentationManager;->mInternalPresentationScreen:Lcom/samsung/android/desktopmode/DesktopModePresentationManager$InternalPresentationScreen;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/desktopmode/DesktopModePresentationManager$InternalPresentationScreen;

    iget-object v1, p0, Lcom/samsung/android/desktopmode/DesktopModePresentationManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/desktopmode/DesktopModePresentationManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/samsung/android/desktopmode/DesktopModePresentationManager$InternalPresentationScreen;-><init>(Landroid/content/Context;Landroid/view/Display;I)V

    iput-object v0, p0, Lcom/samsung/android/desktopmode/DesktopModePresentationManager;->mInternalPresentationScreen:Lcom/samsung/android/desktopmode/DesktopModePresentationManager$InternalPresentationScreen;

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/desktopmode/DesktopModePresentationManager;->mInternalPresentationScreen:Lcom/samsung/android/desktopmode/DesktopModePresentationManager$InternalPresentationScreen;

    invoke-virtual {v0}, Lcom/samsung/android/desktopmode/DesktopModePresentationManager$InternalPresentationScreen;->show()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/desktopmode/DesktopModePresentationManager;->mInternalPresentationScreen:Lcom/samsung/android/desktopmode/DesktopModePresentationManager$InternalPresentationScreen;

    invoke-static {v0, p1}, Lcom/samsung/android/desktopmode/DesktopModePresentationManager$InternalPresentationScreen;->-wrap1(Lcom/samsung/android/desktopmode/DesktopModePresentationManager$InternalPresentationScreen;I)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x100

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/desktopmode/DesktopModePresentationManager;->mInternalPresentationScreen:Lcom/samsung/android/desktopmode/DesktopModePresentationManager$InternalPresentationScreen;

    if-eqz v3, :cond_0

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/desktopmode/DesktopModePresentationManager;->mInternalPresentationScreen:Lcom/samsung/android/desktopmode/DesktopModePresentationManager$InternalPresentationScreen;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/desktopmode/DesktopModePresentationManager;->mExternalPresentations:Ljava/util/List;

    if-eqz v3, :cond_1

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/desktopmode/DesktopModePresentationManager;->mExternalPresentations:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/DesktopModePresentationManager$ExternalPresentation;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
