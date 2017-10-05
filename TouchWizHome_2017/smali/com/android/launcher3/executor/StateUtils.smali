.class final Lcom/android/launcher3/executor/StateUtils;
.super Ljava/lang/Object;
.source "StateUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getStateIdFromViewId(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    sget-object v1, Lcom/android/launcher3/executor/ExecutorState;->NONE:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v1}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v1, Lcom/android/launcher3/executor/ExecutorState;->HOME:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v1}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    sget-object v1, Lcom/android/launcher3/executor/ExecutorState;->APPS:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v1}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    sget-object v1, Lcom/android/launcher3/executor/ExecutorState;->HOME_FOLDER_VIEW:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v1}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    sget-object v1, Lcom/android/launcher3/executor/ExecutorState;->APPS_FOLDER_VIEW:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v1}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    sget-object v1, Lcom/android/launcher3/executor/ExecutorState;->HOME_EDIT:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v1}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    sget-object v1, Lcom/android/launcher3/executor/ExecutorState;->HOME_SETTINGS:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v1}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    sget-object v1, Lcom/android/launcher3/executor/ExecutorState;->HOME_PAGE_WIDGET_SEARCH_VIEW:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v1}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_7
    sget-object v1, Lcom/android/launcher3/executor/ExecutorState;->HOME_PAGE_WIDGET_SEARCH_RESULT:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v1}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_8
    sget-object v1, Lcom/android/launcher3/executor/ExecutorState;->HOME_SETTINGS_HIDE_APPS_VIEW:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v1}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_9
    sget-object v1, Lcom/android/launcher3/executor/ExecutorState;->HOME_FOLDER_ADD_ICON_VIEW:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v1}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_a
    sget-object v1, Lcom/android/launcher3/executor/ExecutorState;->APPS_TIDY_UP_PREVIEW_VIEW:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v1}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_b
    sget-object v1, Lcom/android/launcher3/executor/ExecutorState;->HOME_PAGE_AUTO_RE_ARRANGE_POPUP:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v1}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_c
    sget-object v1, Lcom/android/launcher3/executor/ExecutorState;->HOME_EDIT_REMOVE_PAGE_POPUP:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v1}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_d
    sget-object v1, Lcom/android/launcher3/executor/ExecutorState;->HOME_FOLDER_ADD_ICON_SEARCH_VIEW:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v1}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_e
    sget-object v1, Lcom/android/launcher3/executor/ExecutorState;->APPS_FOLDER_ADD_ICON_SEARCH_VIEW:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v1}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_f
    sget-object v1, Lcom/android/launcher3/executor/ExecutorState;->HOME_SETTINGS_CHANGE_TO_HOMESCREEN_ONLY_POPUP:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v1}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_10
    sget-object v1, Lcom/android/launcher3/executor/ExecutorState;->HOME_SETTINGS_CHANGE_TO_HOME_APPS_POPUP:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v1}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_11
    sget-object v1, Lcom/android/launcher3/executor/ExecutorState;->HOME_SETTINGS_GRID_SETTING_VIEW:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v1}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_12
    sget-object v1, Lcom/android/launcher3/executor/ExecutorState;->HOME_FOLDER_ADD_ICON_SEARCH_RESULT:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v1}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_13
    sget-object v1, Lcom/android/launcher3/executor/ExecutorState;->APPS_FOLDER_ADD_ICON_SEARCH_RESULT:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v1}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_14
    sget-object v1, Lcom/android/launcher3/executor/ExecutorState;->HOME_SETTINGS_STYLE_VIEW:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v1}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_15
    sget-object v1, Lcom/android/launcher3/executor/ExecutorState;->HOME_PAGE_AUTO_RE_ARRANGE_POPUP:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v1}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_16
    sget-object v1, Lcom/android/launcher3/executor/ExecutorState;->HOME_PAGE_WIDGET_EDIT_VIEW:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v1}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_17
    sget-object v1, Lcom/android/launcher3/executor/ExecutorState;->HOME_SETTINGS_APPS_GRID_SETTING_VIEW:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v1}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_18
    sget-object v1, Lcom/android/launcher3/executor/ExecutorState;->APPS_SORT_OPTION_VIEW:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v1}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_7
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_10
        :pswitch_17
        :pswitch_18
    .end packed-switch
.end method
