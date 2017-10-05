.class Lcom/android/launcher3/allapps/view/VisibilityChange;
.super Ljava/lang/Object;
.source "AppsContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final mAppsContainer:Lcom/android/launcher3/allapps/view/AppsContainer;

.field final mVisible:I


# direct methods
.method public constructor <init>(ILcom/android/launcher3/allapps/view/AppsContainer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/launcher3/allapps/view/VisibilityChange;->mVisible:I

    iput-object p2, p0, Lcom/android/launcher3/allapps/view/VisibilityChange;->mAppsContainer:Lcom/android/launcher3/allapps/view/AppsContainer;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/VisibilityChange;->mAppsContainer:Lcom/android/launcher3/allapps/view/AppsContainer;

    iget v1, p0, Lcom/android/launcher3/allapps/view/VisibilityChange;->mVisible:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/view/AppsContainer;->setVisibility(I)V

    return-void
.end method
