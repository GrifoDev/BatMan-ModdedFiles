.class public Lcom/android/systemui/statusbar/phone/taskbar/data/RunningTaskItem;
.super Ljava/lang/Object;
.source "RunningTaskItem.java"


# instance fields
.field public mAppIcon:Landroid/graphics/Bitmap;

.field public mComponent:Landroid/content/ComponentName;

.field public mStackId:I

.field public mTaskId:I

.field public mThumbnail:Landroid/graphics/Bitmap;

.field public mTitle:Ljava/lang/String;

.field public mUserId:I


# direct methods
.method public constructor <init>(IIILandroid/content/ComponentName;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/RunningTaskItem;->mThumbnail:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/RunningTaskItem;->mAppIcon:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/RunningTaskItem;->mTitle:Ljava/lang/String;

    iput p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/RunningTaskItem;->mTaskId:I

    iput p2, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/RunningTaskItem;->mUserId:I

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/RunningTaskItem;->mComponent:Landroid/content/ComponentName;

    iput p3, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/RunningTaskItem;->mStackId:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/RunningTaskItem;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/phone/taskbar/data/RunningTaskItem;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/RunningTaskItem;->mUserId:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/RunningTaskItem;->mUserId:I

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/phone/taskbar/data/RunningTaskItem;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/RunningTaskItem;->mTaskId:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/RunningTaskItem;->mTaskId:I

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/phone/taskbar/data/RunningTaskItem;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/RunningTaskItem;->mStackId:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/RunningTaskItem;->mStackId:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "cn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/RunningTaskItem;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "userid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/RunningTaskItem;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "taskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/RunningTaskItem;->mTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mStackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/RunningTaskItem;->mStackId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
