.class Lcom/android/launcher3/allapps/view/AppsSearchBar$2;
.super Ljava/lang/Object;
.source "AppsSearchBar.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/view/AppsSearchBar;->showPopupMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/view/AppsSearchBar;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/view/AppsSearchBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar$2;->this$0:Lcom/android/launcher3/allapps/view/AppsSearchBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/widget/PopupMenu;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar$2;->this$0:Lcom/android/launcher3/allapps/view/AppsSearchBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->access$202(Lcom/android/launcher3/allapps/view/AppsSearchBar;Landroid/widget/PopupMenu;)Landroid/widget/PopupMenu;

    return-void
.end method
