.class public Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;
.super Landroid/widget/LinearLayout;
.source "ContextMenuLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field disableList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;",
            ">;"
        }
    .end annotation
.end field

.field mAppItem:Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

.field mContextMenuView:Landroid/view/View;

.field mTargetView:Landroid/view/View;

.field mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

.field private mType:I

.field secureFolderList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;",
            ">;"
        }
    .end annotation
.end field

.field uninstallList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->disableList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->uninstallList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->secureFolderList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->disableList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->uninstallList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->secureFolderList:Ljava/util/ArrayList;

    return-void
.end method

.method private setupAppsContextMenuLayout()V
    .locals 8

    const/4 v7, 0x0

    const/16 v6, 0x8

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mContextMenuView:Landroid/view/View;

    const v5, 0x7f1304ee

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mContextMenuView:Landroid/view/View;

    const v5, 0x7f1304f0

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mContextMenuView:Landroid/view/View;

    const v5, 0x7f1304f1

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v4, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->INSTANCE:Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mAppItem:Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->canUninstallable(Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mContextMenuView:Landroid/view/View;

    const v5, 0x7f1304ef

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v4, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->INSTANCE:Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mAppItem:Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->canAddToSecureFolderItem(Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    sget-object v4, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->INSTANCE:Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mAppItem:Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->canDisableable(Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setupKeyBoardLayout()V
    .locals 4

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mContextMenuView:Landroid/view/View;

    const v3, 0x7f1304fa

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mContextMenuView:Landroid/view/View;

    const v3, 0x7f1304fb

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setupMoreMenuContextMenuLayout()V
    .locals 6

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mContextMenuView:Landroid/view/View;

    const v5, 0x7f1304f2

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mContextMenuView:Landroid/view/View;

    const v5, 0x7f1304f3

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mContextMenuView:Landroid/view/View;

    const v5, 0x7f1304f4

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mContextMenuView:Landroid/view/View;

    const v5, 0x7f1304f5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setupScreenCaptureLayout()V
    .locals 5

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mContextMenuView:Landroid/view/View;

    const v4, 0x7f1304f6

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mContextMenuView:Landroid/view/View;

    const v4, 0x7f1304f7

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mContextMenuView:Landroid/view/View;

    const v4, 0x7f1304f8

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->setContextMenuOpen(Z)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->setVisibility(I)V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x6f

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v3, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    return v1

    :cond_2
    iget v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/16 v1, 0x52

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->dismiss()V

    return v3
.end method

.method public getTargetView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mTargetView:Landroid/view/View;

    return-object v0
.end method

.method public isAppsContextMenu()Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mType:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mType:I

    if-ne v2, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mType:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public isDeskPanelContextMenu()Z
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mType:I

    const/16 v2, 0x64

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mType:I

    const/16 v2, 0x65

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mType:I

    const/16 v2, 0x66

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mType:I

    const/16 v2, 0x67

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mType:I

    const/16 v2, 0x68

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mType:I

    const/16 v2, 0x69

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mType:I

    const/16 v2, 0x6a

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public makeContactUsIntent()Landroid/content/Intent;
    .locals 10

    const-string/jumbo v0, "70u8ijy998"

    const-string/jumbo v1, "Samsung DeX"

    const-string/jumbo v3, "com.samsung.android.samsungdex"

    const-string/jumbo v4, "voc://view/contactUs"

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.VIEW"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string/jumbo v5, "packageName"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "appId"

    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "appName"

    invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "faqUrl"

    const-string/jumbo v6, "https://help.content.samsung.com/csweb/auth/gosupport.do?serviceCd=sdex&targetUrl=%s&chnlCd=ODC&_common_country=%s&_common_lang=%s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const-string/jumbo v8, "/faq/searchFaq.do"

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->getDeviceCountry()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->getDeviceMUSELanguage()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v2
.end method

.method public makeContextView(ILcom/android/systemui/statusbar/phone/taskbar/data/AppItem;Landroid/view/View;)V
    .locals 34

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->removeAllViews()V

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mType:I

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mAppItem:Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    const v32, 0x7f0401a2

    const/16 v33, 0x0

    invoke-static/range {v31 .. v33}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mContextMenuView:Landroid/view/View;

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mTargetView:Landroid/view/View;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mType:I

    move/from16 v31, v0

    sparse-switch v31, :sswitch_data_0

    :cond_0
    :goto_0
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v31, -0x2

    const/16 v32, -0x2

    move/from16 v0, v31

    move/from16 v1, v32

    invoke-direct {v13, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mContextMenuView:Landroid/view/View;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1, v13}, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :sswitch_0
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->setupAppsContextMenuLayout()V

    goto :goto_0

    :sswitch_1
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->setupMoreMenuContextMenuLayout()V

    goto :goto_0

    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mContextMenuView:Landroid/view/View;

    move-object/from16 v31, v0

    const v32, 0x7f1304eb

    invoke-virtual/range {v31 .. v32}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    const/16 v31, 0x0

    move/from16 v0, v31

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mContextMenuView:Landroid/view/View;

    move-object/from16 v31, v0

    const v32, 0x7f1304ec

    invoke-virtual/range {v31 .. v32}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mAppItem:Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mCanAddToShortcut:Z

    move/from16 v31, v0

    if-nez v31, :cond_2

    const/16 v31, 0x8

    move/from16 v0, v31

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mContextMenuView:Landroid/view/View;

    move-object/from16 v31, v0

    const v32, 0x7f1304ed

    invoke-virtual/range {v31 .. v32}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContent:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;

    move-object/from16 v31, v0

    if-eqz v31, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContent:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;

    move-object/from16 v31, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->user:Landroid/os/UserHandle;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v32

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v33

    invoke-virtual/range {v31 .. v33}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->checkSameComponentShortcutExisted(ILandroid/content/ComponentName;)Z

    move-result v31

    if-eqz v31, :cond_1

    const/16 v31, 0x8

    move/from16 v0, v31

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mContextMenuView:Landroid/view/View;

    move-object/from16 v31, v0

    const v32, 0x7f1304e8

    invoke-virtual/range {v31 .. v32}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    const/16 v31, 0x0

    move/from16 v0, v31

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mContextMenuView:Landroid/view/View;

    move-object/from16 v31, v0

    const v32, 0x7f1304ea

    invoke-virtual/range {v31 .. v32}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mContextMenuView:Landroid/view/View;

    move-object/from16 v31, v0

    const v32, 0x7f1304e9

    invoke-virtual/range {v31 .. v32}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/TextView;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :sswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mContextMenuView:Landroid/view/View;

    move-object/from16 v31, v0

    const v32, 0x7f1304e5

    invoke-virtual/range {v31 .. v32}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    const/16 v31, 0x0

    move/from16 v0, v31

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mContextMenuView:Landroid/view/View;

    move-object/from16 v31, v0

    const v32, 0x7f1304e6

    invoke-virtual/range {v31 .. v32}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/TextView;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mContextMenuView:Landroid/view/View;

    move-object/from16 v31, v0

    const v32, 0x7f1304e7

    invoke-virtual/range {v31 .. v32}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/TextView;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :sswitch_5
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->setupScreenCaptureLayout()V

    goto/16 :goto_0

    :sswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->isDeskAllNotificationViewVisible()Z

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mContextMenuView:Landroid/view/View;

    move-object/from16 v31, v0

    const v32, 0x7f130159

    invoke-virtual/range {v31 .. v32}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    const/16 v31, 0x0

    move/from16 v0, v31

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v31, 0x7f13015a

    move/from16 v0, v31

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v6, :cond_4

    const/16 v31, 0x8

    :goto_2
    move-object/from16 v0, v27

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const v31, 0x7f13015b

    move/from16 v0, v31

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v6, :cond_5

    const/16 v31, 0x0

    :goto_3
    move-object/from16 v0, v22

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const v31, 0x7f13015c

    move/from16 v0, v31

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v31, 0x7f13015d

    move/from16 v0, v31

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v31, 0x7f13015e

    move/from16 v0, v31

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mType:I

    move/from16 v31, v0

    const/16 v32, 0x65

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_3

    const/16 v31, 0x8

    move-object/from16 v0, v20

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    const v31, 0x7f13015f

    move/from16 v0, v31

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mType:I

    move/from16 v31, v0

    const/16 v32, 0x66

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_0

    const/16 v31, 0x8

    move-object/from16 v0, v21

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_4
    const/16 v31, 0x0

    goto/16 :goto_2

    :cond_5
    const/16 v31, 0x8

    goto/16 :goto_3

    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->isDeskNotificationViewVisible()Z

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mContextMenuView:Landroid/view/View;

    move-object/from16 v31, v0

    const v32, 0x7f130160

    invoke-virtual/range {v31 .. v32}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    const/16 v31, 0x0

    move/from16 v0, v31

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v31, 0x7f130161

    move/from16 v0, v31

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v5, :cond_6

    const/16 v31, 0x8

    :goto_4
    move-object/from16 v0, v26

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const v31, 0x7f130162

    move/from16 v0, v31

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v5, :cond_7

    const/16 v31, 0x0

    :goto_5
    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const v31, 0x7f130163

    move/from16 v0, v31

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v31, 0x7f130164

    move/from16 v0, v31

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :cond_6
    const/16 v31, 0x0

    goto :goto_4

    :cond_7
    const/16 v31, 0x8

    goto :goto_5

    :sswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mContextMenuView:Landroid/view/View;

    move-object/from16 v31, v0

    const v32, 0x7f130165

    invoke-virtual/range {v31 .. v32}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    const/16 v31, 0x0

    move/from16 v0, v31

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v31, 0x7f130166

    move/from16 v0, v31

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v31, 0x7f130167

    move/from16 v0, v31

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v31, 0x7f130168

    move/from16 v0, v31

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mType:I

    move/from16 v31, v0

    const/16 v32, 0x69

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_8

    const/16 v31, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_8
    const v31, 0x7f130169

    move/from16 v0, v31

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mType:I

    move/from16 v31, v0

    const/16 v32, 0x6a

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_0

    const/16 v31, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :sswitch_9
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->setupKeyBoardLayout()V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_9
        0x64 -> :sswitch_6
        0x65 -> :sswitch_6
        0x66 -> :sswitch_6
        0x67 -> :sswitch_7
        0x68 -> :sswitch_8
        0x69 -> :sswitch_8
        0x6a -> :sswitch_8
    .end sparse-switch
.end method

.method public makeContextViewForEditMode(ILjava/util/ArrayList;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;",
            ">;)V"
        }
    .end annotation

    const/4 v12, 0x0

    const/4 v11, -0x2

    const/16 v10, 0x8

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->removeAllViews()V

    iput p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mType:I

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->secureFolderList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->uninstallList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->disableList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    iput-object v12, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mTargetView:Landroid/view/View;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    sget-object v7, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->INSTANCE:Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;

    invoke-virtual {v7, v0}, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->canAddToSecureFolderItem(Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->secureFolderList:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    sget-object v7, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->INSTANCE:Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;

    invoke-virtual {v7, v0}, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->canUninstallable(Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->uninstallList:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    sget-object v7, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->INSTANCE:Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;

    invoke-virtual {v7, v0}, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->canDisableable(Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->disableList:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mContext:Landroid/content/Context;

    const v8, 0x7f0401a2

    invoke-static {v7, v8, v12}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mContextMenuView:Landroid/view/View;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mContextMenuView:Landroid/view/View;

    const v8, 0x7f1304ee

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mContextMenuView:Landroid/view/View;

    const v8, 0x7f1304f0

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mContextMenuView:Landroid/view/View;

    const v8, 0x7f1304f1

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mContextMenuView:Landroid/view/View;

    const v8, 0x7f1304ef

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->uninstallList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_4

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->disableList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_5

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->secureFolderList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_6

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mContextMenuView:Landroid/view/View;

    invoke-virtual {p0, v7, v4}, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_4
    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_5
    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_6
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3
.end method

.method public makeDexSettingsIntent()Landroid/content/Intent;
    .locals 4

    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.sec.android.app.desktoplauncher"

    const-string/jumbo v3, "com.android.launcher3.settings.DesktopSettingsActivity"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object v1
.end method

.method public makeForSamsungDexIntent()Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "samsungapps://CategoryList/0000005211"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const v1, 0x14000020

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method public makeMuseIntent()Landroid/content/Intent;
    .locals 4

    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.sec.android.app.desktoplauncher"

    const-string/jumbo v3, "com.android.launcher3.settings.HelpActivity"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11

    const/4 v8, 0x0

    const/4 v10, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->closeContextMenu()V

    return-void

    :sswitch_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mAppItem:Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    sget-object v6, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;->HOME_APPLICATION:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

    iput-object v6, v5, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mType:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mAppItem:Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mAppItem:Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    iget-wide v8, v7, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->container:J

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mAppItem:Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    iget v7, v7, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mScreen:I

    invoke-static {v5, v6, v8, v9, v7}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;JI)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0f0a33

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :sswitch_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mAppItem:Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    iget v6, v6, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mRunningTaskId:I

    invoke-static {v5, v6}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->removeTask(Landroid/content/Context;I)V

    goto :goto_0

    :sswitch_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mAppItem:Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mAppItem:Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    iget-object v7, v7, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->user:Landroid/os/UserHandle;

    invoke-virtual {v5, v6, v7}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->getLaunchIntent(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Intent;

    move-result-object v2

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {v5, p1, v2, v8}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    goto :goto_0

    :sswitch_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContent:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mAppItem:Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->removeItem(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;)Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mAppItem:Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    invoke-static {v5, v6}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;)V

    goto :goto_0

    :sswitch_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mAppItem:Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    invoke-static {v5, v6}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0f0a34

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :sswitch_5
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->getAllAppsLayout()Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mType:I

    if-ne v5, v10, :cond_1

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->uninstallList:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->callUninstallDialogForList(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mAppItem:Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->callUninstallDialog(Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;)V

    goto/16 :goto_0

    :sswitch_6
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->getAllAppsLayout()Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mType:I

    if-ne v5, v10, :cond_2

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->disableList:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->callDisableDialogForList(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    :cond_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mAppItem:Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->callDisableDialog(Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;)V

    goto/16 :goto_0

    :sswitch_7
    iget v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mType:I

    if-ne v5, v10, :cond_3

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->secureFolderList:Ljava/util/ArrayList;

    invoke-static {v5, v6}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->addToSecureFolder(Landroid/content/Context;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mAppItem:Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mContext:Landroid/content/Context;

    invoke-static {v5, v4}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->addToSecureFolder(Landroid/content/Context;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    :sswitch_8
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->makeForSamsungDexIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v5, p1, v6, v8}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {v5, v10}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->closeAppsView(Z)V

    goto/16 :goto_0

    :sswitch_9
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->makeDexSettingsIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v5, p1, v6, v8}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {v5, v10}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->closeAppsView(Z)V

    goto/16 :goto_0

    :sswitch_a
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->isContactUsAvailable(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->makeContactUsIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v5, p1, v6, v8}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    :goto_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {v5, v10}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->closeAppsView(Z)V

    goto/16 :goto_0

    :cond_4
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->makeMuseIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v5, p1, v6, v8}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    goto :goto_1

    :sswitch_b
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->doScreenCapture(I)V

    goto/16 :goto_0

    :sswitch_c
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {v5, v10}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->doScreenCapture(I)V

    goto/16 :goto_0

    :sswitch_d
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->launchNotificationSetting()V

    goto/16 :goto_0

    :sswitch_e
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->clearAllNotifications()V

    goto/16 :goto_0

    :sswitch_f
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {v5, v10}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->toggleDeskNotificationView(Z)V

    goto/16 :goto_0

    :sswitch_10
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->launchAppNotificationSetting()V

    goto/16 :goto_0

    :sswitch_11
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->launchAppInfo()V

    goto/16 :goto_0

    :sswitch_12
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->blockNotification()V

    goto/16 :goto_0

    :sswitch_13
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->clearNotification()V

    goto/16 :goto_0

    :sswitch_14
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    new-instance v5, Landroid/content/ComponentName;

    const-string/jumbo v6, "com.android.settings"

    const-string/jumbo v7, "com.android.settings.Settings$InputMethodAndLanguageSettingsActivity"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {v5, p1, v3, v8}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f13015a -> :sswitch_f
        0x7f13015b -> :sswitch_f
        0x7f13015c -> :sswitch_10
        0x7f13015d -> :sswitch_11
        0x7f13015e -> :sswitch_12
        0x7f13015f -> :sswitch_13
        0x7f130161 -> :sswitch_f
        0x7f130162 -> :sswitch_f
        0x7f130163 -> :sswitch_d
        0x7f130164 -> :sswitch_e
        0x7f130166 -> :sswitch_10
        0x7f130167 -> :sswitch_11
        0x7f130168 -> :sswitch_12
        0x7f130169 -> :sswitch_13
        0x7f1304e6 -> :sswitch_3
        0x7f1304e7 -> :sswitch_2
        0x7f1304e9 -> :sswitch_4
        0x7f1304ea -> :sswitch_1
        0x7f1304ec -> :sswitch_0
        0x7f1304ed -> :sswitch_1
        0x7f1304ef -> :sswitch_7
        0x7f1304f0 -> :sswitch_5
        0x7f1304f1 -> :sswitch_6
        0x7f1304f3 -> :sswitch_8
        0x7f1304f4 -> :sswitch_9
        0x7f1304f5 -> :sswitch_a
        0x7f1304f7 -> :sswitch_b
        0x7f1304f8 -> :sswitch_c
        0x7f1304fb -> :sswitch_14
    .end sparse-switch
.end method

.method public setTaskBarView(Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    return-void
.end method

.method public show()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->setVisibility(I)V

    return-void
.end method
