.class public final Lcom/android/launcher3/common/stage/StageFactory;
.super Ljava/lang/Object;
.source "StageFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildStage(I)Lcom/android/launcher3/common/stage/Stage;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    packed-switch p0, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :pswitch_0
    new-instance v0, Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-direct {v0}, Lcom/android/launcher3/allapps/controller/AppsController;-><init>()V

    :goto_0
    invoke-virtual {v0, p0}, Lcom/android/launcher3/common/stage/Stage;->setMode(I)V

    return-object v0

    :pswitch_1
    new-instance v0, Lcom/android/launcher3/home/HomeController;

    invoke-direct {v0}, Lcom/android/launcher3/home/HomeController;-><init>()V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/android/launcher3/widget/controller/WidgetController;

    invoke-direct {v0}, Lcom/android/launcher3/widget/controller/WidgetController;-><init>()V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lcom/android/launcher3/widget/folder/WidgetFolderController;

    invoke-direct {v0}, Lcom/android/launcher3/widget/folder/WidgetFolderController;-><init>()V

    goto :goto_0

    :pswitch_4
    new-instance v0, Lcom/android/launcher3/folder/controller/FolderController;

    invoke-direct {v0}, Lcom/android/launcher3/folder/controller/FolderController;-><init>()V

    goto :goto_0

    :pswitch_5
    new-instance v0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;

    invoke-direct {v0}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;-><init>()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
