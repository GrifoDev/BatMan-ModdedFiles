.class Lcom/samsung/android/settings/NewModePreview$6;
.super Ljava/lang/Object;
.source "NewModePreview.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/NewModePreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/NewModePreview;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/NewModePreview;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 10

    const/4 v1, 0x0

    const/4 v0, 0x1

    const/4 v7, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v2, "ScreenModeApply"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v3, -0x1

    iget-object v2, p0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, " "

    const-string/jumbo v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v2, "Adaptivedisplay"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x0

    :cond_0
    :goto_0
    const/4 v2, -0x1

    if-ne v3, v2, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v0, v0, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "Object"

    const-string/jumbo v2, "valid"

    const-string/jumbo v4, "No"

    invoke-virtual {v0, v1, v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v0, v0, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "ScreenMode"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v0, v0, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-string/jumbo v2, "AMOLEDcinema"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "AMOLEDphoto"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v3, 0x2

    goto :goto_0

    :cond_4
    const-string/jumbo v2, "Basic"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v3, 0x3

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-static {v2}, Lcom/samsung/android/settings/NewModePreview;->-get9(Lcom/samsung/android/settings/NewModePreview;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v2

    if-ne v3, v2, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v0, v0, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "Object"

    const-string/jumbo v2, "AlreadySet"

    const-string/jumbo v4, "Yes"

    invoke-virtual {v0, v1, v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v0, v0, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "Object"

    invoke-static {}, Lcom/samsung/android/settings/NewModePreview;->-get10()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v0, v0, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "ScreenMode"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v0, v0, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_1

    :cond_6
    iget-object v2, p0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-virtual {v2}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "blue_light_filter"

    invoke-static {v2, v4, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_7

    move v7, v0

    :cond_7
    if-eqz v7, :cond_8

    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-static {v0}, Lcom/samsung/android/settings/NewModePreview;->-wrap0(Lcom/samsung/android/settings/NewModePreview;)V

    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v0, v0, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v0, v0, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "BluelightFilter"

    const-string/jumbo v2, "AlreadyOn"

    const-string/jumbo v4, "yes"

    invoke-virtual {v0, v1, v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v0, v0, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "ScreenMode"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v0, v0, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :cond_8
    iget-object v2, p0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-static {v2}, Lcom/samsung/android/settings/NewModePreview;->-get9(Lcom/samsung/android/settings/NewModePreview;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v3, v0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    const-wide/16 v4, 0x0

    move-object v2, v1

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/NewModePreview;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v0, v0, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v0, v0, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "BluelightFilter"

    const-string/jumbo v2, "AlreadyOn"

    const-string/jumbo v4, "no"

    invoke-virtual {v0, v1, v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v0, v0, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "Object"

    invoke-static {}, Lcom/samsung/android/settings/NewModePreview;->-get10()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v0, v0, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "ScreenMode"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v0, v0, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :cond_9
    const-string/jumbo v1, "ColorBalance"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-virtual {v1}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_mode_automatic_setting"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eq v6, v0, :cond_a

    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v0, v0, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlgForNotSupportMenu()V

    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v0, v0, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_a
    iget-object v1, p0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v1, v1, Lcom/samsung/android/settings/NewModePreview;->mDisplayColourFooterView:Landroid/view/View;

    if-eqz v1, :cond_d

    invoke-static {}, Lcom/samsung/android/settings/NewModePreview;->-get10()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-static {v1}, Lcom/samsung/android/settings/NewModePreview;->-get9(Lcom/samsung/android/settings/NewModePreview;)Landroid/widget/ListView;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-static {}, Lcom/samsung/android/settings/NewModePreview;->-get10()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-lt v1, v0, :cond_b

    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-static {v0}, Lcom/samsung/android/settings/NewModePreview;->-get9(Lcom/samsung/android/settings/NewModePreview;)Landroid/widget/ListView;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/settings/NewModePreview;->-get10()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v0, v1, v7}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    :cond_b
    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v0, v0, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v0, v0, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v0, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_c
    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v0, v0, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :cond_d
    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v0, v0, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlgForNotSupportMenu()V

    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v0, v0, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1
.end method
