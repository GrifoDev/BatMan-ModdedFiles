.class Lcom/android/systemui/statusbar/phone/SecNavigationBarView$5$1;
.super Ljava/lang/Object;
.source "SecNavigationBarView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/SecNavigationBarView$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/SecNavigationBarView$5;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/SecNavigationBarView$5;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$5$1;->this$1:Lcom/android/systemui/statusbar/phone/SecNavigationBarView$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$5$1;->this$1:Lcom/android/systemui/statusbar/phone/SecNavigationBarView$5;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$5;->this$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->-set2(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;Z)Z

    return-void
.end method
