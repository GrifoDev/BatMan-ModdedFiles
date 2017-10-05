.class public Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;
.super Ljava/lang/Object;
.source "LauncherTopViewChangedMessageHandler.java"


# static fields
.field public static final LAUNCHER_VIEW_ADD_FOLDER:I = 0x9

.field public static final LAUNCHER_VIEW_APPS:I = 0x2

.field public static final LAUNCHER_VIEW_APPS_FOLDER:I = 0x4

.field public static final LAUNCHER_VIEW_APPS_FOLDER_ADD_ICON_SEARCH_RESULT:I = 0x13

.field public static final LAUNCHER_VIEW_APPS_FOLDER_ADD_ICON_SEARCH_VIEW:I = 0xe

.field public static final LAUNCHER_VIEW_APPS_GRID_CHANGE:I = 0x18

.field public static final LAUNCHER_VIEW_APPS_SORT_OPTION_POPUP:I = 0x19

.field public static final LAUNCHER_VIEW_APPS_TIDY_UP_PREVIEW_VIEW:I = 0xa

.field public static final LAUNCHER_VIEW_HIDE_APPS:I = 0x8

.field public static final LAUNCHER_VIEW_HOME:I = 0x1

.field public static final LAUNCHER_VIEW_HOME_EDIT:I = 0x5

.field public static final LAUNCHER_VIEW_HOME_EDIT_REMOVE_PAGE_POPUP:I = 0xc

.field public static final LAUNCHER_VIEW_HOME_FOLDER:I = 0x3

.field public static final LAUNCHER_VIEW_HOME_FOLDER_ADD_ICON_SEARCH_RESULT:I = 0x12

.field public static final LAUNCHER_VIEW_HOME_FOLDER_ADD_ICON_SEARCH_VIEW:I = 0xd

.field public static final LAUNCHER_VIEW_HOME_MODE_CHANGE:I = 0x14

.field public static final LAUNCHER_VIEW_HOME_PAGE_AUTO_RE_ARRANGE_POPUP:I = 0xb

.field public static final LAUNCHER_VIEW_HOME_PAGE_REARANGE_POPUP:I = 0x15

.field public static final LAUNCHER_VIEW_HOME_PAGE_WIDGET_SEARCH_RESULT:I = 0x10

.field public static final LAUNCHER_VIEW_HOME_PAGE_WIDGET_SEARCH_VIEW:I = 0x7

.field public static final LAUNCHER_VIEW_HOME_PAGE_WIDGET_UNINSTALL_VIEW:I = 0x16

.field public static final LAUNCHER_VIEW_HOME_SETTING:I = 0x6

.field public static final LAUNCHER_VIEW_HOME_SETTINGS_CHANGE_TO_HOMESCREEN_ONLY_POPUP:I = 0xf

.field public static final LAUNCHER_VIEW_HOME_SETTINGS_CHANGE_TO_HOME_APPS_POPUP:I = 0x17

.field public static final LAUNCHER_VIEW_HOME_SETTINGS_GRID:I = 0x11

.field public static final LAUNCHER_VIEW_NONE:I


# instance fields
.field private mOnLauncherTopViewChangedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/proxy/OnLauncherTopViewChangedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;->mOnLauncherTopViewChangedListeners:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public registerOnLauncherTopViewChangedListener(Lcom/android/launcher3/proxy/OnLauncherTopViewChangedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;->mOnLauncherTopViewChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public sendMessage(I)V
    .locals 3

    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;->mOnLauncherTopViewChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/proxy/OnLauncherTopViewChangedListener;

    invoke-interface {v0, p1}, Lcom/android/launcher3/proxy/OnLauncherTopViewChangedListener;->onLauncherTopViewChanged(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public unregisterOnLauncherTopViewChangedListener(Lcom/android/launcher3/proxy/OnLauncherTopViewChangedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;->mOnLauncherTopViewChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
