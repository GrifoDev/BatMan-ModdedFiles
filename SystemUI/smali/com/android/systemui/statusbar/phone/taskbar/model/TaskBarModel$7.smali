.class Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$7;
.super Ljava/lang/Object;
.source "TaskBarModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->saveHistoryItems(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;

.field final synthetic val$contentValues:Landroid/content/ContentValues;

.field final synthetic val$id:J

.field final synthetic val$manager:Lcom/android/systemui/statusbar/phone/taskbar/database/TaskBarDBManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;Lcom/android/systemui/statusbar/phone/taskbar/database/TaskBarDBManager;JLandroid/content/ContentValues;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$7;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$7;->val$manager:Lcom/android/systemui/statusbar/phone/taskbar/database/TaskBarDBManager;

    iput-wide p3, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$7;->val$id:J

    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$7;->val$contentValues:Landroid/content/ContentValues;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$7;->val$manager:Lcom/android/systemui/statusbar/phone/taskbar/database/TaskBarDBManager;

    iget-wide v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$7;->val$id:J

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$7;->val$contentValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/systemui/statusbar/phone/taskbar/database/TaskBarDBManager;->updateAppOrderItem(JLandroid/content/ContentValues;)I

    return-void
.end method
