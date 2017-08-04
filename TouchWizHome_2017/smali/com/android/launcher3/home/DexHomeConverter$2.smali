.class Lcom/android/launcher3/home/DexHomeConverter$2;
.super Ljava/lang/Object;
.source "DexHomeConverter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/DexHomeConverter;->startSync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/DexHomeConverter;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/DexHomeConverter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/DexHomeConverter$2;->this$0:Lcom/android/launcher3/home/DexHomeConverter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/DexHomeConverter$2;->this$0:Lcom/android/launcher3/home/DexHomeConverter;

    invoke-static {v0}, Lcom/android/launcher3/home/DexHomeConverter;->access$100(Lcom/android/launcher3/home/DexHomeConverter;)V

    return-void
.end method
