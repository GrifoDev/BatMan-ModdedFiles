.class public Lcom/android/systemui/statusbar/phone/bixby/policy/BixbyNotificationController;
.super Ljava/lang/Object;
.source "BixbyNotificationController.java"


# instance fields
.field private mAppNotificationCount:I

.field mBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private mContext:Landroid/content/Context;

.field mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

.field private mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

.field private mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private final mReadOutNotificationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/NotificationData$Entry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/bixby/policy/BixbyNotificationController;->mReadOutNotificationList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/bixby/policy/BixbyNotificationController;->mAppNotificationCount:I

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/bixby/policy/BixbyNotificationController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/bixby/policy/BixbyNotificationController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const-string/jumbo v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/bixby/policy/BixbyNotificationController;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/bixby/policy/BixbyNotificationController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getGroupManager()Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/bixby/policy/BixbyNotificationController;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    return-void
.end method

.method private clearAllNotification()V
    .locals 4

    const-string/jumbo v2, "BixbyNotificationController"

    const-string/jumbo v3, "clearAllNotification"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/bixby/policy/BixbyNotificationController;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v2, v0}, Lcom/android/internal/statusbar/IStatusBarService;->onClearAllNotifications(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private clearNotification(Landroid/service/notification/StatusBarNotification;)V
    .locals 6

    const-string/jumbo v1, "BixbyNotificationController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "clearNotification : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/bixby/policy/BixbyNotificationController;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v5

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationClear(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private filterReadOutNotiifcationList()V
    .locals 6

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/bixby/policy/BixbyNotificationController;->mReadOutNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/bixby/policy/BixbyNotificationController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getNotificationData()Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/bixby/policy/BixbyNotificationController;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/bixby/policy/BixbyNotificationController;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v4, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v4, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/bixby/policy/BixbyNotificationController;->mReadOutNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-void
.end method

.method private getLatestNotification()Lcom/android/systemui/statusbar/NotificationData$Entry;
    .locals 11

    const/4 v9, 0x0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/bixby/policy/BixbyNotificationController;->filterReadOutNotiifcationList()V

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/bixby/policy/BixbyNotificationController;->mReadOutNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/bixby/policy/BixbyNotificationController;->mReadOutNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/bixby/policy/BixbyNotificationController;->mReadOutNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v8, v8, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v8

    iget-wide v4, v8, Landroid/app/Notification;->when:J

    const/4 v2, 0x1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/bixby/policy/BixbyNotificationController;->mReadOutNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v8, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v8

    iget-wide v6, v8, Landroid/app/Notification;->when:J

    cmp-long v8, v4, v6

    if-gez v8, :cond_0

    move-object v3, v1

    move-wide v4, v6

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v8, "BixbyNotificationController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getLatestNotification:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v3, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_2
    const/4 v8, 0x0

    return-object v8
.end method

.method private readOutNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)Ljava/lang/StringBuffer;
    .locals 26

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v12

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getAppName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string/jumbo v21, "BixbyNotificationController"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "notification from "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v16

    const/4 v8, 0x0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getId()I

    move-result v21

    const v22, 0x7f1304ba

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded()Z

    move-result v21

    if-eqz v21, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getExpandedContentView()Landroid/view/View;

    move-result-object v8

    :cond_1
    :goto_0
    const-string/jumbo v21, "BixbyNotificationController"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "showingLayout:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v8, :cond_f

    iget-object v0, v12, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v21, v0

    if-eqz v21, :cond_6

    move-object v9, v8

    check-cast v9, Landroid/view/ViewGroup;

    new-instance v18, Ljava/lang/StringBuffer;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v9, v1}, Lcom/android/systemui/statusbar/phone/bixby/policy/BixbyNotificationController;->searchForTextView(Landroid/view/View;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v5

    :cond_2
    :goto_1
    return-object v5

    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getContentView()Landroid/view/View;

    move-result-object v8

    goto :goto_0

    :cond_4
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getId()I

    move-result v21

    const v22, 0x7f1304bb

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/bixby/policy/BixbyNotificationController;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isChildInGroupWithSummary(Landroid/service/notification/StatusBarNotification;)Z

    move-result v21

    if-eqz v21, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/bixby/policy/BixbyNotificationController;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getGroupSummary(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPublicLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/statusbar/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v8

    goto :goto_0

    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getPublicContentView()Landroid/view/View;

    move-result-object v8

    goto :goto_0

    :cond_6
    const v21, 0x1020016

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    const v21, 0x1020090

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v21, 0x1020455

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    new-instance v18, Ljava/lang/StringBuffer;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz v20, :cond_b

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_7

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v21, " "

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v21, "BixbyNotificationController"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "titleText: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_2
    if-eqz v7, :cond_c

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v21, " "

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v21, "BixbyNotificationController"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "contentText: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_3
    if-eqz v4, :cond_d

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v21, " "

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v21, "BixbyNotificationController"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "bigText: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_4
    const/16 v21, 0x7

    move/from16 v0, v21

    new-array v14, v0, [I

    fill-array-data v14, :array_0

    const/16 v21, 0x0

    array-length v0, v14

    move/from16 v22, v0

    :goto_5
    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_2

    aget v13, v14, v21

    invoke-virtual {v8, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_e

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_a

    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v23, " "

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v23, "BixbyNotificationController"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "inboxText("

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "): "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    add-int/lit8 v21, v21, 0x1

    goto :goto_5

    :cond_b
    const-string/jumbo v21, "BixbyNotificationController"

    const-string/jumbo v22, "titleView is null"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_c
    const-string/jumbo v21, "BixbyNotificationController"

    const-string/jumbo v22, "contentView is null"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_d
    const-string/jumbo v21, "BixbyNotificationController"

    const-string/jumbo v22, "bigTextView is null"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_e
    const-string/jumbo v21, "BixbyNotificationController"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "inboxTextView is null("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, ")"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_f
    const-string/jumbo v21, "BixbyNotificationController"

    const-string/jumbo v22, "contentView is null"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :array_0
    .array-data 4
        0x1020456
        0x1020457
        0x1020458
        0x1020459
        0x102045a
        0x102045b
        0x102045c
    .end array-data
.end method

.method private searchForTextView(Landroid/view/View;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 6

    instance-of v3, p1, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    move-object v1, p1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v3, "BixbyNotificationController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " find textView! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/widget/TextView;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2

    :cond_0
    instance-of v3, p1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    move-object v2, p1

    check-cast v2, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3, p2}, Lcom/android/systemui/statusbar/phone/bixby/policy/BixbyNotificationController;->searchForTextView(Landroid/view/View;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method private setUserExpanded(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Z
    .locals 5

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getChildrenContainer()Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getHeaderView()Landroid/view/NotificationHeaderView;

    move-result-object v3

    :goto_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/NotificationHeaderView;->getExpandButton()Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/widget/ImageView;->performClick()Z

    const/4 v4, 0x1

    return v4

    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v3

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    return v4
.end method


# virtual methods
.method public getAllNotificationCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/bixby/policy/BixbyNotificationController;->mReadOutNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getAppNotificationCount()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/bixby/policy/BixbyNotificationController;->mAppNotificationCount:I

    return v0
.end method

.method public isHiddenNotificationOnLockscreen(Ljava/lang/String;)Z
    .locals 9

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/bixby/policy/BixbyNotificationController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getNotificationData()Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/statusbar/phone/bixby/policy/BixbyNotificationController;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/bixby/policy/BixbyNotificationController;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/NotificationData;->getHiddenNotificationOnLockscreen()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string/jumbo v6, "BixbyNotificationController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isHiddenNotificationOnLockscreen s:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " packageName:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v5, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    const-string/jumbo v6, "BixbyNotificationController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isHiddenNotificationOnLockscreen sbn:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string/jumbo v6, "BixbyNotificationController"

    const-string/jumbo v7, "isHiddenNotificationOnLockscreen isMatched"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    :cond_0
    return v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public isPanelExpandState()Z
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/systemui/statusbar/PanelStateNotifier;->getPanelExpandState()Z

    move-result v0

    const-string/jumbo v1, "BixbyNotificationController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isPanelExpandState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public readAllNotification()Ljava/lang/StringBuffer;
    .locals 15

    const/4 v14, 0x2

    const/4 v13, 0x0

    const/4 v12, 0x1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/bixby/policy/BixbyNotificationController;->filterReadOutNotiifcationList()V

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/bixby/policy/BixbyNotificationController;->mReadOutNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_2

    const-string/jumbo v9, "BixbyNotificationController"

    const-string/jumbo v10, "**********************************"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/bixby/policy/BixbyNotificationController;->mReadOutNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v9, v4, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getAppName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string/jumbo v9, "BixbyNotificationController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "notification from "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/lit8 v7, v9, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v2, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v2, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/bixby/policy/BixbyNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v0, :cond_5

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/bixby/policy/BixbyNotificationController;->mReadOutNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v9, v4, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getAppName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-le v6, v12, :cond_4

    new-array v9, v14, [Ljava/lang/Object;

    aput-object v2, v9, v13

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v12

    const v10, 0x7f0f07c2

    invoke-virtual {v8, v10, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_3
    const-string/jumbo v9, " "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v9, "BixbyNotificationController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "allNotificationForPkg: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " num: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    new-array v9, v14, [Ljava/lang/Object;

    aput-object v2, v9, v13

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v12

    const v10, 0x7f0f07c1

    invoke-virtual {v8, v10, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_5
    return-object v3
.end method

.method public readAppNameNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/bixby/policy/BixbyNotificationController;->filterReadOutNotiifcationList()V

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/bixby/policy/BixbyNotificationController;->mReadOutNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    if-nez p2, :cond_0

    return-object v8

    :cond_0
    iput v7, p0, Lcom/android/systemui/statusbar/phone/bixby/policy/BixbyNotificationController;->mAppNotificationCount:I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_3

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/bixby/policy/BixbyNotificationController;->mReadOutNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v4, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/statusbar/phone/bixby/policy/BixbyNotificationController;->mAppNotificationCount:I

    if-lez v6, :cond_2

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v6

    const v7, 0x7f1304bb

    if-ne v6, v7, :cond_2

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/bixby/policy/BixbyNotificationController;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {v6, v4}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isChildInGroupWithSummary(Landroid/service/notification/StatusBarNotification;)Z

    move-result v6

    if-eqz v6, :cond_2

    :goto_1
    const-string/jumbo v6, "BixbyNotificationController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "readAppNameNotification:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v6, p0, Lcom/android/systemui/statusbar/phone/bixby/policy/BixbyNotificationController;->mAppNotificationCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/systemui/statusbar/phone/bixby/policy/BixbyNotificationController;->mAppNotificationCount:I

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/bixby/policy/BixbyNotificationController;->readOutNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_3
    return-object v1
.end method

.method public readLatestNotification(Ljava/lang/String;)Ljava/lang/StringBuffer;
    .locals 4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/bixby/policy/BixbyNotificationController;->getLatestNotification()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    if-nez v1, :cond_0

    const-string/jumbo v2, "BixbyNotificationController"

    const-string/jumbo v3, "there is no notification"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/bixby/policy/BixbyNotificationController;->readOutNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)Ljava/lang/StringBuffer;

    move-result-object v0

    goto :goto_0
.end method

.method public selectAllNotification(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/bixby/policy/BixbyNotificationController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getNotificationData()Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/bixby/policy/BixbyNotificationController;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/bixby/policy/BixbyNotificationController;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string/jumbo v5, "ClearSelectedNotifications"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v5, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->isClearable()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v3, 0x1

    :cond_0
    if-eqz v3, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/bixby/policy/BixbyNotificationController;->clearAllNotification()V

    const-string/jumbo v5, "Root"

    const-string/jumbo v6, "All Ongoing noti"

    const-string/jumbo v7, "Exist"

    const-string/jumbo v8, "yes"

    sget-object v9, Lcom/android/systemui/statusbar/phone/bixby/data/NotificationNlgInfo;->NONE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    invoke-static {v5, v6, v7, v8, v9}, Lcom/android/systemui/statusbar/phone/bixby/data/NotificationNlgInfo;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;)V

    :cond_1
    :goto_1
    return v3

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    const-string/jumbo v5, "Root"

    const-string/jumbo v6, "All Ongoing noti"

    const-string/jumbo v7, "Exist"

    const-string/jumbo v8, "no"

    sget-object v9, Lcom/android/systemui/statusbar/phone/bixby/data/NotificationNlgInfo;->NONE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    invoke-static {v5, v6, v7, v8, v9}, Lcom/android/systemui/statusbar/phone/bixby/data/NotificationNlgInfo;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;)V

    goto :goto_1

    :cond_4
    const-string/jumbo v5, "ExpandSelectedNotifications"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v0, :cond_7

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v5, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpandable()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded()Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_5
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    const/4 v3, 0x1

    iget-object v5, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/phone/bixby/policy/BixbyNotificationController;->setUserExpanded(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Z

    goto :goto_3

    :cond_7
    if-eqz v3, :cond_8

    const-string/jumbo v5, "NotificationPanel"

    const-string/jumbo v6, "All expanded Noti"

    const-string/jumbo v7, "Exist"

    const-string/jumbo v8, "no"

    sget-object v9, Lcom/android/systemui/statusbar/phone/bixby/data/NotificationNlgInfo;->NONE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    invoke-static {v5, v6, v7, v8, v9}, Lcom/android/systemui/statusbar/phone/bixby/data/NotificationNlgInfo;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;)V

    goto :goto_1

    :cond_8
    const-string/jumbo v5, "NotificationPanel"

    const-string/jumbo v6, "All expanded Noti"

    const-string/jumbo v7, "Exist"

    const-string/jumbo v8, "yes"

    sget-object v9, Lcom/android/systemui/statusbar/phone/bixby/data/NotificationNlgInfo;->NONE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    invoke-static {v5, v6, v7, v8, v9}, Lcom/android/systemui/statusbar/phone/bixby/data/NotificationNlgInfo;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;)V

    goto :goto_1
.end method

.method public selectAppNameNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 15

    const/4 v12, 0x0

    const/4 v13, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/bixby/policy/BixbyNotificationController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getNotificationData()Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/bixby/policy/BixbyNotificationController;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/bixby/policy/BixbyNotificationController;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez p2, :cond_0

    invoke-static/range {p3 .. p3}, Lcom/android/systemui/statusbar/phone/bixby/data/NotificationNlgInfo;->requestNlgNoParameter(Ljava/lang/String;)V

    return v12

    :cond_0
    const/4 v11, 0x0

    :goto_0
    if-ge v11, v8, :cond_5

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v14, v10, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v14}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "ClearSelectedNotifications"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v14}, Landroid/service/notification/StatusBarNotification;->isClearable()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v14}, Lcom/android/systemui/statusbar/phone/bixby/policy/BixbyNotificationController;->clearNotification(Landroid/service/notification/StatusBarNotification;)V

    const/4 v12, 0x1

    :cond_1
    :goto_1
    const/4 v13, 0x1

    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "OpenSelectedNotifications"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v10, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->performClick()Z

    goto :goto_1

    :cond_4
    const-string/jumbo v1, "ExpandSelectedNotifications"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v10, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpandable()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v10, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v10, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/bixby/policy/BixbyNotificationController;->setUserExpanded(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Z

    const/4 v12, 0x1

    goto :goto_1

    :cond_5
    if-eqz v13, :cond_10

    const-string/jumbo v1, "ClearSelectedNotifications"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    if-eqz v12, :cond_8

    if-eqz p1, :cond_7

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_7

    const-string/jumbo v1, "Root"

    const-string/jumbo v2, "Ongoing noti"

    const-string/jumbo v3, "Exist"

    const-string/jumbo v4, "no"

    const-string/jumbo v5, "AppName"

    sget-object v7, Lcom/android/systemui/statusbar/phone/bixby/data/NotificationNlgInfo;->NONE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    move-object/from16 v6, p1

    invoke-static/range {v1 .. v7}, Lcom/android/systemui/statusbar/phone/bixby/data/NotificationNlgInfo;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;)V

    :cond_6
    :goto_2
    return v12

    :cond_7
    const-string/jumbo v1, "Root"

    const-string/jumbo v2, "Ongoing noti"

    const-string/jumbo v3, "Exist"

    const-string/jumbo v4, "no"

    sget-object v5, Lcom/android/systemui/statusbar/phone/bixby/data/NotificationNlgInfo;->NONE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/systemui/statusbar/phone/bixby/data/NotificationNlgInfo;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;)V

    goto :goto_2

    :cond_8
    if-eqz p1, :cond_9

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_9

    const-string/jumbo v1, "Root"

    const-string/jumbo v2, "Ongoing noti"

    const-string/jumbo v3, "Exist"

    const-string/jumbo v4, "yes"

    const-string/jumbo v5, "AppName"

    sget-object v7, Lcom/android/systemui/statusbar/phone/bixby/data/NotificationNlgInfo;->NONE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    move-object/from16 v6, p1

    invoke-static/range {v1 .. v7}, Lcom/android/systemui/statusbar/phone/bixby/data/NotificationNlgInfo;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;)V

    goto :goto_2

    :cond_9
    const-string/jumbo v1, "Root"

    const-string/jumbo v2, "Ongoing noti"

    const-string/jumbo v3, "Exist"

    const-string/jumbo v4, "yes"

    sget-object v5, Lcom/android/systemui/statusbar/phone/bixby/data/NotificationNlgInfo;->NONE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/systemui/statusbar/phone/bixby/data/NotificationNlgInfo;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;)V

    goto :goto_2

    :cond_a
    const-string/jumbo v1, "OpenSelectedNotifications"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    if-eqz p1, :cond_b

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_b

    const-string/jumbo v1, "Root"

    const-string/jumbo v2, "AppName"

    const-string/jumbo v3, "Match"

    const-string/jumbo v4, "yes"

    const-string/jumbo v5, "AppName"

    sget-object v7, Lcom/android/systemui/statusbar/phone/bixby/data/NotificationNlgInfo;->NONE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    move-object/from16 v6, p1

    invoke-static/range {v1 .. v7}, Lcom/android/systemui/statusbar/phone/bixby/data/NotificationNlgInfo;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;)V

    goto :goto_2

    :cond_b
    const-string/jumbo v1, "Root"

    const-string/jumbo v2, "AppName"

    const-string/jumbo v3, "Match"

    const-string/jumbo v4, "yes"

    sget-object v5, Lcom/android/systemui/statusbar/phone/bixby/data/NotificationNlgInfo;->NONE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/systemui/statusbar/phone/bixby/data/NotificationNlgInfo;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;)V

    goto :goto_2

    :cond_c
    const-string/jumbo v1, "ExpandSelectedNotifications"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz v12, :cond_e

    if-eqz p1, :cond_d

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_d

    const-string/jumbo v1, "NotificationPanel"

    const-string/jumbo v2, "Expanded Noti"

    const-string/jumbo v3, "Exist"

    const-string/jumbo v4, "no"

    const-string/jumbo v5, "AppName"

    sget-object v7, Lcom/android/systemui/statusbar/phone/bixby/data/NotificationNlgInfo;->NONE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    move-object/from16 v6, p1

    invoke-static/range {v1 .. v7}, Lcom/android/systemui/statusbar/phone/bixby/data/NotificationNlgInfo;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;)V

    goto/16 :goto_2

    :cond_d
    const-string/jumbo v1, "NotificationPanel"

    const-string/jumbo v2, "Expanded Noti"

    const-string/jumbo v3, "Exist"

    const-string/jumbo v4, "no"

    sget-object v5, Lcom/android/systemui/statusbar/phone/bixby/data/NotificationNlgInfo;->NONE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/systemui/statusbar/phone/bixby/data/NotificationNlgInfo;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;)V

    goto/16 :goto_2

    :cond_e
    if-eqz p1, :cond_f

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_f

    const-string/jumbo v1, "NotificationPanel"

    const-string/jumbo v2, "Expanded Noti"

    const-string/jumbo v3, "Exist"

    const-string/jumbo v4, "yes"

    const-string/jumbo v5, "AppName"

    sget-object v7, Lcom/android/systemui/statusbar/phone/bixby/data/NotificationNlgInfo;->NONE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    move-object/from16 v6, p1

    invoke-static/range {v1 .. v7}, Lcom/android/systemui/statusbar/phone/bixby/data/NotificationNlgInfo;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;)V

    goto/16 :goto_2

    :cond_f
    const-string/jumbo v1, "NotificationPanel"

    const-string/jumbo v2, "Expanded Noti"

    const-string/jumbo v3, "Exist"

    const-string/jumbo v4, "yes"

    sget-object v5, Lcom/android/systemui/statusbar/phone/bixby/data/NotificationNlgInfo;->NONE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/systemui/statusbar/phone/bixby/data/NotificationNlgInfo;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;)V

    goto/16 :goto_2

    :cond_10
    if-eqz p1, :cond_11

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_11

    const-string/jumbo v1, "BixbyNotificationController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " AppName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "NotificationPanel"

    const-string/jumbo v2, "AppName"

    const-string/jumbo v3, "Match"

    const-string/jumbo v4, "no"

    const-string/jumbo v5, "AppName"

    sget-object v7, Lcom/android/systemui/statusbar/phone/bixby/data/NotificationNlgInfo;->NONE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    move-object/from16 v6, p1

    invoke-static/range {v1 .. v7}, Lcom/android/systemui/statusbar/phone/bixby/data/NotificationNlgInfo;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;)V

    goto/16 :goto_2

    :cond_11
    const-string/jumbo v1, "NotificationPanel"

    const-string/jumbo v2, "AppName"

    const-string/jumbo v3, "Match"

    const-string/jumbo v4, "no"

    sget-object v5, Lcom/android/systemui/statusbar/phone/bixby/data/NotificationNlgInfo;->NONE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/systemui/statusbar/phone/bixby/data/NotificationNlgInfo;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;)V

    goto/16 :goto_2
.end method

.method public selectOrdinalNotification(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12

    const/4 v4, 0x0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    const-string/jumbo v7, "ClearSelectedNotifications"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v2, 0x1

    :goto_0
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/bixby/policy/BixbyNotificationController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v7, v5, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getNotificationView(IZ)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_7

    const-string/jumbo v7, "ClearSelectedNotifications"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const v7, 0x7f1304bd

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_2

    const-string/jumbo v7, "BixbyNotificationController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "veto.performClick()"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    invoke-virtual {v6}, Landroid/view/View;->performClick()Z

    const-string/jumbo v7, "Root"

    const-string/jumbo v8, "Ongoing noti"

    const-string/jumbo v9, "Exist"

    const-string/jumbo v10, "no"

    sget-object v11, Lcom/android/systemui/statusbar/phone/bixby/data/NotificationNlgInfo;->NONE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    invoke-static {v7, v8, v9, v10, v11}, Lcom/android/systemui/statusbar/phone/bixby/data/NotificationNlgInfo;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;)V

    :cond_0
    :goto_1
    return v4

    :catch_0
    move-exception v3

    const-string/jumbo v7, "BixbyNotificationController"

    const-string/jumbo v8, "NumberFormatException"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/bixby/data/NotificationNlgInfo;->requestNlgNoParameter(Ljava/lang/String;)V

    return v4

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const-string/jumbo v7, "Root"

    const-string/jumbo v8, "Ongoing noti"

    const-string/jumbo v9, "Exist"

    const-string/jumbo v10, "yes"

    sget-object v11, Lcom/android/systemui/statusbar/phone/bixby/data/NotificationNlgInfo;->NONE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    invoke-static {v7, v8, v9, v10, v11}, Lcom/android/systemui/statusbar/phone/bixby/data/NotificationNlgInfo;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;)V

    goto :goto_1

    :cond_3
    const-string/jumbo v7, "OpenSelectedNotifications"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string/jumbo v7, "BixbyNotificationController"

    const-string/jumbo v8, "childView.performClick()"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    invoke-virtual {v1}, Landroid/view/View;->performClick()Z

    const-string/jumbo v7, "Root"

    const-string/jumbo v8, "ordinalNumber"

    const-string/jumbo v9, "Match"

    const-string/jumbo v10, "yes"

    sget-object v11, Lcom/android/systemui/statusbar/phone/bixby/data/NotificationNlgInfo;->NONE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    invoke-static {v7, v8, v9, v10, v11}, Lcom/android/systemui/statusbar/phone/bixby/data/NotificationNlgInfo;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;)V

    goto :goto_1

    :cond_4
    const-string/jumbo v7, "ExpandSelectedNotifications"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpandable()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded()Z

    move-result v7

    if-eqz v7, :cond_6

    :cond_5
    const-string/jumbo v7, "Root"

    const-string/jumbo v8, "Expanded Noti"

    const-string/jumbo v9, "Exist"

    const-string/jumbo v10, "yes"

    sget-object v11, Lcom/android/systemui/statusbar/phone/bixby/data/NotificationNlgInfo;->NONE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    invoke-static {v7, v8, v9, v10, v11}, Lcom/android/systemui/statusbar/phone/bixby/data/NotificationNlgInfo;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;)V

    goto :goto_1

    :cond_6
    const-string/jumbo v7, "BixbyNotificationController"

    const-string/jumbo v8, "childRow.setUserExpanded()"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/bixby/policy/BixbyNotificationController;->setUserExpanded(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Z

    const-string/jumbo v7, "NotificationPanel"

    const-string/jumbo v8, "Expanded Noti"

    const-string/jumbo v9, "Exist"

    const-string/jumbo v10, "no"

    sget-object v11, Lcom/android/systemui/statusbar/phone/bixby/data/NotificationNlgInfo;->NONE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    invoke-static {v7, v8, v9, v10, v11}, Lcom/android/systemui/statusbar/phone/bixby/data/NotificationNlgInfo;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;)V

    goto/16 :goto_1

    :cond_7
    const-string/jumbo v7, "NotificationPanel"

    const-string/jumbo v8, "ordinalNumber"

    const-string/jumbo v9, "Match"

    const-string/jumbo v10, "no"

    sget-object v11, Lcom/android/systemui/statusbar/phone/bixby/data/NotificationNlgInfo;->NONE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    invoke-static {v7, v8, v9, v10, v11}, Lcom/android/systemui/statusbar/phone/bixby/data/NotificationNlgInfo;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;)V

    goto/16 :goto_1
.end method
