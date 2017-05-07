.class public Lcom/android/launcher3/widget/WidgetsRowViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "WidgetsRowViewHolder.java"


# instance fields
.field mContent:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/launcher3/widget/WidgetsRowViewHolder;->mContent:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method getContent()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsRowViewHolder;->mContent:Landroid/view/ViewGroup;

    return-object v0
.end method
