.class Lcom/android/launcher3/allapps/view/AppsSearchBar$1;
.super Ljava/lang/Object;
.source "AppsSearchBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/view/AppsSearchBar;->onFinishInflate()V
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

    iput-object p1, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar$1;->this$0:Lcom/android/launcher3/allapps/view/AppsSearchBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar$1;->this$0:Lcom/android/launcher3/allapps/view/AppsSearchBar;

    invoke-static {v0}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->access$100(Lcom/android/launcher3/allapps/view/AppsSearchBar;)Landroid/widget/SearchView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar$1;->this$0:Lcom/android/launcher3/allapps/view/AppsSearchBar;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->showPopupMenu()V

    return-void
.end method
