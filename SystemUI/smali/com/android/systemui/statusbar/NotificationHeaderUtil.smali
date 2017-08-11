.class public Lcom/android/systemui/statusbar/NotificationHeaderUtil;
.super Ljava/lang/Object;
.source "NotificationHeaderUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/NotificationHeaderUtil$1;,
        Lcom/android/systemui/statusbar/NotificationHeaderUtil$2;,
        Lcom/android/systemui/statusbar/NotificationHeaderUtil$3;,
        Lcom/android/systemui/statusbar/NotificationHeaderUtil$4;,
        Lcom/android/systemui/statusbar/NotificationHeaderUtil$DataExtractor;,
        Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;,
        Lcom/android/systemui/statusbar/NotificationHeaderUtil$IconComparator;,
        Lcom/android/systemui/statusbar/NotificationHeaderUtil$ResultApplicator;,
        Lcom/android/systemui/statusbar/NotificationHeaderUtil$TextViewComparator;,
        Lcom/android/systemui/statusbar/NotificationHeaderUtil$ViewComparator;,
        Lcom/android/systemui/statusbar/NotificationHeaderUtil$VisibilityApplicator;
    }
.end annotation


# static fields
.field private static final mGreyApplicator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$ResultApplicator;

.field private static final sGreyComparator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$IconComparator;

.field private static final sIconExtractor:Lcom/android/systemui/statusbar/NotificationHeaderUtil$DataExtractor;

.field private static final sIconVisibilityComparator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$IconComparator;

.field private static final sTextViewComparator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$TextViewComparator;

.field private static final sVisibilityApplicator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$VisibilityApplicator;


# instance fields
.field private final mComparators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;",
            ">;"
        }
    .end annotation
.end field

.field private final mDividers:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;


# direct methods
.method static synthetic -get0()Lcom/android/systemui/statusbar/NotificationHeaderUtil$TextViewComparator;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->sTextViewComparator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$TextViewComparator;

    return-object v0
.end method

.method static synthetic -get1()Lcom/android/systemui/statusbar/NotificationHeaderUtil$VisibilityApplicator;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->sVisibilityApplicator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$VisibilityApplicator;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$TextViewComparator;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$TextViewComparator;-><init>(Lcom/android/systemui/statusbar/NotificationHeaderUtil$TextViewComparator;)V

    sput-object v0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->sTextViewComparator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$TextViewComparator;

    new-instance v0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$VisibilityApplicator;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$VisibilityApplicator;-><init>(Lcom/android/systemui/statusbar/NotificationHeaderUtil$VisibilityApplicator;)V

    sput-object v0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->sVisibilityApplicator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$VisibilityApplicator;

    new-instance v0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$1;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$1;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->sIconExtractor:Lcom/android/systemui/statusbar/NotificationHeaderUtil$DataExtractor;

    new-instance v0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$2;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$2;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->sIconVisibilityComparator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$IconComparator;

    new-instance v0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$3;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$3;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->sGreyComparator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$IconComparator;

    new-instance v0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$4;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$4;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mGreyApplicator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$ResultApplicator;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mComparators:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mDividers:Ljava/util/HashSet;

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mComparators:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    sget-object v3, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->sIconExtractor:Lcom/android/systemui/statusbar/NotificationHeaderUtil$DataExtractor;

    sget-object v4, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->sIconVisibilityComparator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$IconComparator;

    sget-object v5, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->sVisibilityApplicator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$VisibilityApplicator;

    const v2, 0x1020006

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;-><init>(Lcom/android/systemui/statusbar/ExpandableNotificationRow;ILcom/android/systemui/statusbar/NotificationHeaderUtil$DataExtractor;Lcom/android/systemui/statusbar/NotificationHeaderUtil$ViewComparator;Lcom/android/systemui/statusbar/NotificationHeaderUtil$ResultApplicator;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mComparators:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    sget-object v3, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->sIconExtractor:Lcom/android/systemui/statusbar/NotificationHeaderUtil$DataExtractor;

    sget-object v4, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->sGreyComparator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$IconComparator;

    sget-object v5, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mGreyApplicator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$ResultApplicator;

    const v2, 0x1020448

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;-><init>(Lcom/android/systemui/statusbar/ExpandableNotificationRow;ILcom/android/systemui/statusbar/NotificationHeaderUtil$DataExtractor;Lcom/android/systemui/statusbar/NotificationHeaderUtil$ViewComparator;Lcom/android/systemui/statusbar/NotificationHeaderUtil$ResultApplicator;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mComparators:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    new-instance v4, Lcom/android/systemui/statusbar/NotificationHeaderUtil$5;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$5;-><init>(Lcom/android/systemui/statusbar/NotificationHeaderUtil;)V

    sget-object v5, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->sVisibilityApplicator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$VisibilityApplicator;

    const v2, 0x102044f

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;-><init>(Lcom/android/systemui/statusbar/ExpandableNotificationRow;ILcom/android/systemui/statusbar/NotificationHeaderUtil$DataExtractor;Lcom/android/systemui/statusbar/NotificationHeaderUtil$ViewComparator;Lcom/android/systemui/statusbar/NotificationHeaderUtil$ResultApplicator;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mComparators:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    const v2, 0x1020449

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->forTextView(Lcom/android/systemui/statusbar/ExpandableNotificationRow;I)Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mComparators:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    const v2, 0x102044b

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->forTextView(Lcom/android/systemui/statusbar/ExpandableNotificationRow;I)Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mDividers:Ljava/util/HashSet;

    const v1, 0x102044a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mDividers:Ljava/util/HashSet;

    const v1, 0x102044c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private sanitizeChild(Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_0

    const v1, 0x1020448

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/NotificationHeaderView;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->sanitizeHeader(Landroid/view/NotificationHeaderView;)V

    :cond_0
    return-void
.end method

.method private sanitizeHeader(Landroid/view/NotificationHeaderView;)V
    .locals 16

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/NotificationHeaderView;->getChildCount()I

    move-result v2

    const v12, 0x10200a7

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/NotificationHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/4 v3, 0x0

    const/4 v4, 0x1

    :goto_0
    add-int/lit8 v12, v2, -0x1

    if-ge v4, v12, :cond_3

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/NotificationHeaderView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v12, v1, Landroid/widget/TextView;

    if-eqz v12, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-eq v12, v13, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mDividers:Ljava/util/HashSet;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-eq v1, v9, :cond_1

    const/4 v3, 0x1

    :cond_3
    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v12

    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Notification;->showsTime()Z

    move-result v12

    if-eqz v12, :cond_7

    :cond_4
    const/4 v10, 0x0

    :goto_1
    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    new-instance v6, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    invoke-direct {v6, v12}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    if-nez v3, :cond_8

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v6, v12, v13, v14, v15}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginsRelative(IIII)V

    :goto_2
    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v12, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    invoke-virtual {v9, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v5, 0x0

    const/4 v4, 0x1

    :goto_3
    add-int/lit8 v12, v2, -0x1

    if-ge v4, v12, :cond_e

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/NotificationHeaderView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mDividers:Ljava/util/HashSet;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    const/4 v11, 0x0

    add-int/lit8 v4, v4, 0x1

    :goto_4
    add-int/lit8 v12, v2, -0x1

    if-ge v4, v12, :cond_5

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/NotificationHeaderView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mDividers:Ljava/util/HashSet;

    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    add-int/lit8 v4, v4, -0x1

    :cond_5
    :goto_5
    if-eqz v11, :cond_c

    const/4 v12, 0x0

    :goto_6
    invoke-virtual {v1, v12}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_7
    const/16 v10, 0x8

    goto :goto_1

    :cond_8
    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x10503ba

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v6, v8, v12, v13, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginsRelative(IIII)V

    goto :goto_2

    :cond_9
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-eq v12, v13, :cond_b

    instance-of v12, v7, Landroid/widget/TextView;

    if-eqz v12, :cond_b

    if-eqz v5, :cond_a

    const/4 v11, 0x1

    :goto_8
    move-object v5, v7

    goto :goto_5

    :cond_a
    const/4 v11, 0x0

    goto :goto_8

    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_c
    const/16 v12, 0x8

    goto :goto_6

    :cond_d
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-eq v12, v13, :cond_6

    instance-of v12, v1, Landroid/widget/TextView;

    if-eqz v12, :cond_6

    move-object v5, v1

    goto :goto_7

    :cond_e
    return-void
.end method

.method private sanitizeHeaderViews(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->sanitizeHeader(Landroid/view/NotificationHeaderView;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->sanitizeChild(Landroid/view/View;)V

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getHeadsUpChild()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->sanitizeChild(Landroid/view/View;)V

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getExpandedChild()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->sanitizeChild(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public restoreNotificationHeader(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mComparators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mComparators:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->apply(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->sanitizeHeaderViews(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    return-void
.end method

.method public updateChildrenHeaderAppearance()V
    .locals 5

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationChildren()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mComparators:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mComparators:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->init()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    const/4 v0, 0x0

    :goto_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mComparators:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mComparators:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;

    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->compareToHeader(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_5

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    const/4 v0, 0x0

    :goto_4
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mComparators:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_4

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mComparators:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;

    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->apply(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->sanitizeHeaderViews(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    return-void
.end method
