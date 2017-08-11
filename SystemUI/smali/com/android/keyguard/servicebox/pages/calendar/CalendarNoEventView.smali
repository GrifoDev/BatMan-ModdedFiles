.class public Lcom/android/keyguard/servicebox/pages/calendar/CalendarNoEventView;
.super Landroid/widget/LinearLayout;
.source "CalendarNoEventView.java"


# instance fields
.field private mContentView:Landroid/widget/TextView;

.field private mIconView:Lcom/altamirasoft/path_animation/PathLineAnimationView;

.field private mOpenCalendarView:Landroid/widget/Button;

.field private mStatusCallback:Lcom/android/keyguard/servicebox/KeyguardStatusCallback;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/servicebox/pages/calendar/CalendarNoEventView;)Lcom/android/keyguard/servicebox/KeyguardStatusCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarNoEventView;->mStatusCallback:Lcom/android/keyguard/servicebox/KeyguardStatusCallback;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/servicebox/pages/calendar/CalendarNoEventView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarNoEventView;->closeWindow()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private closeWindow()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarNoEventView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;

    move-result-object v0

    const-string/jumbo v1, "servicebox_calendar"

    invoke-virtual {v0, v1}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->hideFloatingView(Ljava/lang/String;)V

    return-void
.end method

.method private getOnPathAnimatorListener()Lcom/altamirasoft/path_animation/PathAnimatorListener;
    .locals 3

    const/16 v2, 0x9

    invoke-static {}, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->newInstance()Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    move-result-object v0

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->setDefaultDuration(I)Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    move-result-object v0

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->setDuration([I)Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    move-result-object v0

    new-array v1, v2, [I

    fill-array-data v1, :array_1

    invoke-virtual {v0, v1}, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->setDelay([I)Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->setDefaultDirection(I)Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarNoEventView;->getSineOut80()Landroid/view/animation/PathInterpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->setDefaultInterpolator(Landroid/animation/TimeInterpolator;)Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->getAnimatorListener()Lcom/altamirasoft/path_animation/PathAnimatorListener;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 4
        0x1f4
        0x258
        0x258
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
    .end array-data

    :array_1
    .array-data 4
        0x190
        0x1f4
        0x258
        0x190
        0x190
        0x190
        0x1f4
        0x1f4
        0x1f4
    .end array-data
.end method

.method private getOnPathListener(I)Lcom/altamirasoft/path_animation/PathListener;
    .locals 3

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarNoEventView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$dimen;->servicebox_today_event_no_events_icon_line_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-static {v0, p1, v1}, Lcom/altamirasoft/path_animation/PaintLineModelFactory;->newInstance(IILandroid/graphics/Paint$Cap;)Lcom/altamirasoft/path_animation/PaintLineModelFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/altamirasoft/path_animation/PaintLineModelFactory;->getListener()Lcom/altamirasoft/path_animation/PathListener;

    move-result-object v1

    return-object v1
.end method

.method private getSineOut80()Landroid/view/animation/PathInterpolator;
    .locals 4

    const v3, 0x3e2e147b    # 0.17f

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e4ccccd    # 0.2f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    return-object v0
.end method

.method private initViews()V
    .locals 2

    sget v0, Lcom/android/keyguard/R$id;->servicebox_no_events_content:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarNoEventView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarNoEventView;->mContentView:Landroid/widget/TextView;

    sget v0, Lcom/android/keyguard/R$id;->servicebox_no_events_button:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarNoEventView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarNoEventView;->mOpenCalendarView:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarNoEventView;->mOpenCalendarView:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarNoEventView;->mOpenCalendarView:Landroid/widget/Button;

    new-instance v1, Lcom/android/keyguard/servicebox/pages/calendar/CalendarNoEventView$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarNoEventView$1;-><init>(Lcom/android/keyguard/servicebox/pages/calendar/CalendarNoEventView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    sget v0, Lcom/android/keyguard/R$id;->servicebox_no_events_icon:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarNoEventView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/altamirasoft/path_animation/PathLineAnimationView;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarNoEventView;->mIconView:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarNoEventView;->mIconView:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarNoEventView;->mIconView:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    sget v1, Lcom/android/keyguard/R$raw;->calendar_noitem:I

    invoke-virtual {v0, v1}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->setSVG(I)V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarNoEventView;->mIconView:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarNoEventView;->getOnPathAnimatorListener()Lcom/altamirasoft/path_animation/PathAnimatorListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->setOnPathAnimatorListener(Lcom/altamirasoft/path_animation/PathAnimatorListener;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarNoEventView;->updateViews()V

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarNoEventView;->updateViewStyleOnWhiteWallpaper()V

    return-void
.end method

.method private startSubAnimations()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarNoEventView;->mIconView:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarNoEventView;->mIconView:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    invoke-virtual {v0}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->start()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarNoEventView;->updateViews()V

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarNoEventView;->startSubAnimations()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarNoEventView;->initViews()V

    return-void
.end method

.method public setStatusCallback(Lcom/android/keyguard/servicebox/KeyguardStatusCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarNoEventView;->mStatusCallback:Lcom/android/keyguard/servicebox/KeyguardStatusCallback;

    return-void
.end method

.method public updateViewStyleOnWhiteWallpaper()V
    .locals 8

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarNoEventView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/keyguard/util/SettingsHelper;->isWhiteKeyguardWallpaper()Z

    move-result v3

    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarNoEventView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/keyguard/util/ViewStyleUtils;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/ViewStyleUtils;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarNoEventView;->mOpenCalendarView:Landroid/widget/Button;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarNoEventView;->mOpenCalendarView:Landroid/widget/Button;

    invoke-virtual {v4, v5, v7}, Lcom/android/keyguard/util/ViewStyleUtils;->updateViewStyle(Landroid/widget/TextView;I)V

    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarNoEventView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/keyguard/util/ViewStyleUtils;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/ViewStyleUtils;

    move-result-object v5

    iget-object v6, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarNoEventView;->mOpenCalendarView:Landroid/widget/Button;

    invoke-virtual {v5, v6}, Lcom/android/keyguard/util/ViewStyleUtils;->updateButtonOuterlineColor(Landroid/widget/TextView;)V

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarNoEventView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/keyguard/R$dimen;->keyguard_emergency_button_inner_padding:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarNoEventView;->mOpenCalendarView:Landroid/widget/Button;

    invoke-virtual {v5, v1, v7, v1, v7}, Landroid/widget/Button;->setPadding(IIII)V

    :cond_0
    const/4 v2, 0x0

    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarNoEventView;->mContentView:Landroid/widget/TextView;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarNoEventView;->mContentView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    const/4 v2, 0x1

    :cond_1
    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarNoEventView;->mContentView:Landroid/widget/TextView;

    if-eqz v5, :cond_3

    if-eqz v2, :cond_5

    const/4 v0, 0x0

    invoke-virtual {v4}, Lcom/android/keyguard/util/ViewStyleUtils;->getCurrentLookType()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_2

    invoke-virtual {v4}, Lcom/android/keyguard/util/ViewStyleUtils;->getCurrentLookType()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_4

    :cond_2
    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarNoEventView;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/keyguard/R$color;->theme_todays_no_events_text_color_big_white:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getColor(I)I

    move-result v0

    :goto_0
    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarNoEventView;->mContentView:Landroid/widget/TextView;

    invoke-virtual {v4, v5, v7}, Lcom/android/keyguard/util/ViewStyleUtils;->updateViewStyle(Landroid/widget/TextView;I)V

    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarNoEventView;->mContentView:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarNoEventView;->mIconView:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarNoEventView;->mIconView:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    invoke-direct {p0, v0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarNoEventView;->getOnPathListener(I)Lcom/altamirasoft/path_animation/PathListener;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->setOnPathListener(Lcom/altamirasoft/path_animation/PathListener;)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarNoEventView;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/keyguard/R$color;->theme_todays_no_events_text_color_big:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getColor(I)I

    move-result v0

    goto :goto_0

    :cond_5
    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarNoEventView;->mContentView:Landroid/widget/TextView;

    invoke-virtual {v4, v5, v7}, Lcom/android/keyguard/util/ViewStyleUtils;->updateViewStyle(Landroid/widget/TextView;I)V

    goto :goto_1
.end method

.method public updateViews()V
    .locals 6

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarNoEventView;->mContentView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarNoEventView;->mContentView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarNoEventView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->servicebox_event_no_events:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarNoEventView;->mOpenCalendarView:Landroid/widget/Button;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarNoEventView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->servicebox_event_calendar:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarNoEventView;->mOpenCalendarView:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarNoEventView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->servicebox_event_open_ss:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
