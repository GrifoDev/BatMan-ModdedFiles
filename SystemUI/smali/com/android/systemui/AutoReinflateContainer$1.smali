.class Lcom/android/systemui/AutoReinflateContainer$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "AutoReinflateContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/AutoReinflateContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/AutoReinflateContainer;


# direct methods
.method constructor <init>(Lcom/android/systemui/AutoReinflateContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/AutoReinflateContainer$1;->this$0:Lcom/android/systemui/AutoReinflateContainer;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onOpenThemeChanged()V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/AutoReinflateContainer$1;->this$0:Lcom/android/systemui/AutoReinflateContainer;

    invoke-static {v1}, Lcom/android/systemui/AutoReinflateContainer;->-get1(Lcom/android/systemui/AutoReinflateContainer;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0141

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-static {}, Lcom/android/systemui/AutoReinflateContainer;->-get0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onOpenThemeChanged() - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/AutoReinflateContainer$1;->this$0:Lcom/android/systemui/AutoReinflateContainer;

    invoke-static {v3}, Lcom/android/systemui/AutoReinflateContainer;->-get1(Lcom/android/systemui/AutoReinflateContainer;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/systemui/statusbar/DeviceState;->isOpenTheme(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " // QUICKPANEL BG COLOR : alpha "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", R "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", G "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", B "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/AutoReinflateContainer$1;->this$0:Lcom/android/systemui/AutoReinflateContainer;

    invoke-static {v1}, Lcom/android/systemui/AutoReinflateContainer;->-wrap0(Lcom/android/systemui/AutoReinflateContainer;)V

    return-void
.end method
