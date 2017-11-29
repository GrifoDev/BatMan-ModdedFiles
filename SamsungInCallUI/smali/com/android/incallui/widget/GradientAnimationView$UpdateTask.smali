.class Lcom/android/incallui/widget/GradientAnimationView$UpdateTask;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/widget/GradientAnimationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/widget/GradientAnimationView;


# direct methods
.method private constructor <init>(Lcom/android/incallui/widget/GradientAnimationView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/widget/GradientAnimationView$UpdateTask;->this$0:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/incallui/widget/GradientAnimationView;Lcom/android/incallui/widget/GradientAnimationView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/widget/GradientAnimationView$UpdateTask;-><init>(Lcom/android/incallui/widget/GradientAnimationView;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/incallui/widget/GradientAnimationView$UpdateTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView$UpdateTask;->this$0:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-static {v0}, Lcom/android/incallui/widget/GradientAnimationView;->access$000(Lcom/android/incallui/widget/GradientAnimationView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "updateGradient..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView$UpdateTask;->this$0:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-static {v0}, Lcom/android/incallui/widget/GradientAnimationView;->access$100(Lcom/android/incallui/widget/GradientAnimationView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView$UpdateTask;->this$0:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-static {v0}, Lcom/android/incallui/widget/GradientAnimationView;->access$000(Lcom/android/incallui/widget/GradientAnimationView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "updateGradient: color is not valid"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v4

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView$UpdateTask;->this$0:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-static {v0}, Lcom/android/incallui/widget/GradientAnimationView;->access$200(Lcom/android/incallui/widget/GradientAnimationView;)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView$UpdateTask;->this$0:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-static {v0}, Lcom/android/incallui/widget/GradientAnimationView;->access$300(Lcom/android/incallui/widget/GradientAnimationView;)I

    move-result v0

    if-gtz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView$UpdateTask;->this$0:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-static {v0}, Lcom/android/incallui/widget/GradientAnimationView;->access$000(Lcom/android/incallui/widget/GradientAnimationView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "updateGradient: width and height must be > 0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView$UpdateTask;->this$0:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-static {v0}, Lcom/android/incallui/widget/GradientAnimationView;->access$400(Lcom/android/incallui/widget/GradientAnimationView;)I

    move-result v0

    iget-object v1, p0, Lcom/android/incallui/widget/GradientAnimationView$UpdateTask;->this$0:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-static {v1}, Lcom/android/incallui/widget/GradientAnimationView;->access$500(Lcom/android/incallui/widget/GradientAnimationView;)I

    move-result v1

    iget-object v2, p0, Lcom/android/incallui/widget/GradientAnimationView$UpdateTask;->this$0:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-static {v2}, Lcom/android/incallui/widget/GradientAnimationView;->access$200(Lcom/android/incallui/widget/GradientAnimationView;)I

    move-result v2

    iget-object v3, p0, Lcom/android/incallui/widget/GradientAnimationView$UpdateTask;->this$0:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-static {v3}, Lcom/android/incallui/widget/GradientAnimationView;->access$300(Lcom/android/incallui/widget/GradientAnimationView;)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/gradient_color_extractor/b;->a(IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/widget/GradientAnimationView$UpdateTask;->this$0:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-static {v1}, Lcom/android/incallui/widget/GradientAnimationView;->access$000(Lcom/android/incallui/widget/GradientAnimationView;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateGradient: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/incallui/widget/GradientAnimationView$UpdateTask;->this$0:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-static {v1, v0}, Lcom/android/incallui/widget/GradientAnimationView;->access$602(Lcom/android/incallui/widget/GradientAnimationView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/incallui/widget/GradientAnimationView$UpdateTask;->this$0:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-static {v1}, Lcom/android/incallui/widget/GradientAnimationView;->access$000(Lcom/android/incallui/widget/GradientAnimationView;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateGradient : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/incallui/widget/GradientAnimationView$UpdateTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView$UpdateTask;->this$0:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v0}, Lcom/android/incallui/widget/GradientAnimationView;->invalidate()V

    return-void
.end method
