.class public Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "BluetoothExpListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDeviceListGroup:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mDiscoveryHelpMsgPreferenceGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

.field private mDividerHeight:I

.field private mExpandableListView:Landroid/widget/SemExpandableListView;

.field private mIsDataChanged:Z

.field public mIsOnProgressAddVI:Z

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field public mNeedUpdatePreference:Z

.field private mNoItemPreferenceGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

.field private mSelectedDeviceList:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

.field private mTypedArray:Landroid/content/res/TypedArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/SemExpandableListView;I)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    iput-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mTypedArray:Landroid/content/res/TypedArray;

    iput-boolean v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mIsDataChanged:Z

    iput-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mExpandableListView:Landroid/widget/SemExpandableListView;

    iput-boolean v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mIsOnProgressAddVI:Z

    iput-boolean v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mNeedUpdatePreference:Z

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mExpandableListView:Landroid/widget/SemExpandableListView;

    iput p3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDividerHeight:I

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->setDiscoveryHelpMsgPreferenceGroup()V

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->setNoItemPreferenceGroup()V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/internal/R$styleable;->Preference:[I

    const v2, 0x101008e

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mTypedArray:Landroid/content/res/TypedArray;

    return-void
.end method

.method private setDiscoveryHelpMsgPreferenceGroup()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDiscoveryHelpMsgPreferenceGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDiscoveryHelpMsgPreferenceGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDiscoveryHelpMsgPreferenceGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    const v1, 0x7f0401f8

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->setLayoutResource(I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDiscoveryHelpMsgPreferenceGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b1273

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->setTitle(Ljava/lang/String;)V

    const-string/jumbo v0, "BluetoothExpListAdapter"

    const-string/jumbo v1, "setDiscoveryHelpMsgPreference :: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDiscoveryHelpMsgPreferenceGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    const v1, 0x7f0401f9

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->setLayoutResource(I)V

    goto :goto_0
.end method

.method private setNoItemPreferenceGroup()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mNoItemPreferenceGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mNoItemPreferenceGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mNoItemPreferenceGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    const v1, 0x7f0401f2

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->setLayoutResource(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addPreferenceGroup(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mExpandableListView:Landroid/widget/SemExpandableListView;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/SemExpandableListView;->expandGroup(I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->notifyDataSetChanged()V

    const/4 v0, 0x1

    return v0
.end method

.method public getAvailableDeviceGroup()Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;
    .locals 3

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->isAvailableDeviceGroup(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public getChild(II)Lcom/android/settings/bluetooth/BluetoothDevicePreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    invoke-virtual {v0, p2}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getPreference(I)Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getChild(II)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getChild(II)Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    move-result-object v0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2

    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    move-object v7, p4

    if-nez p4, :cond_6

    const v3, 0x7f0401f3

    iget-object v8, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    instance-of v8, v8, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;

    if-nez v8, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    instance-of v8, v8, Lcom/android/settings/bluetooth/DevicePickerActivity;

    if-eqz v8, :cond_1

    :cond_0
    const v3, 0x7f0401f4

    :cond_1
    iget-object v8, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const/4 v9, 0x0

    invoke-virtual {v8, v3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    new-instance v1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;

    const/4 v8, 0x0

    invoke-direct {v1, v8}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;)V

    const v8, 0x1020006

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, v1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const v8, 0x1020016

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    const v8, 0x1020010

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const v8, 0x7f110633

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, v1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->details:Landroid/widget/ImageView;

    const v8, 0x7f110632

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, v1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->linearLayout:Landroid/widget/LinearLayout;

    const v8, 0x7f110148

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, v1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->divider:Landroid/view/View;

    invoke-virtual {v7, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getChild(II)Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    invoke-virtual {v5}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v8, "BluetoothExpListAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getChildView ::  preference = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "isBonded = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, v1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, v1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    const v10, 0x7f0f01e7

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :goto_1
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result v2

    iget-object v9, v1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    if-eqz v2, :cond_9

    const/4 v8, 0x0

    :goto_2
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v8, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    instance-of v8, v8, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;

    if-eqz v8, :cond_2

    if-eqz v2, :cond_a

    iget-object v8, v1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v9, v1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v9

    const/16 v10, 0x66

    invoke-virtual {v9, v10}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_2
    :goto_3
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getConnectionSummary()I

    move-result v6

    if-eqz v6, :cond_b

    iget-object v8, v1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, v1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_4
    iget-object v8, v1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v5}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v8

    const/16 v9, 0xc

    if-ne v8, v9, :cond_3

    iget-object v8, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    instance-of v8, v8, Lcom/android/settings/bluetooth/DevicePickerActivity;

    if-eqz v8, :cond_c

    :cond_3
    iget-object v8, v1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->details:Landroid/widget/ImageView;

    if-eqz v8, :cond_4

    iget-object v8, v1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->linearLayout:Landroid/widget/LinearLayout;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_4
    :goto_5
    iget-object v8, v1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->divider:Landroid/view/View;

    if-eqz v8, :cond_5

    if-eqz p3, :cond_d

    iget-object v8, v1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->divider:Landroid/view/View;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    :goto_6
    return-object v7

    :cond_6
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;

    goto/16 :goto_0

    :cond_7
    iget-object v8, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    instance-of v8, v8, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;

    if-eqz v8, :cond_8

    iget-object v8, v1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    const v10, 0x7f0f01e9

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto/16 :goto_1

    :cond_8
    iget-object v8, v1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    const v10, 0x7f0f01e8

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto/16 :goto_1

    :cond_9
    const/4 v8, 0x1

    goto/16 :goto_2

    :cond_a
    iget-object v8, v1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v9, v1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v9

    const/16 v10, 0xff

    invoke-virtual {v9, v10}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_3

    :cond_b
    iget-object v8, v1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    :cond_c
    iget-object v8, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    instance-of v8, v8, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;

    if-nez v8, :cond_3

    iget-object v8, v1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->linearLayout:Landroid/widget/LinearLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v8, v1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->details:Landroid/widget/ImageView;

    if-eqz v8, :cond_4

    iget-object v8, v1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->details:Landroid/widget/ImageView;

    invoke-virtual {v8, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v8, v1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->details:Landroid/widget/ImageView;

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_5

    :cond_d
    iget-object v8, v1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->divider:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6
.end method

.method public getChildrenCount(I)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getPreferenceCount()I

    move-result v0

    return v0
.end method

.method public getCombinedChildId(JJ)J
    .locals 9

    long-to-int v1, p1

    long-to-int v4, p3

    invoke-virtual {p0, v1, v4}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getChild(II)Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getChildId()J

    move-result-wide v2

    const-wide/32 v4, 0x7fffffff

    and-long/2addr v4, p1

    const/16 v1, 0x20

    shl-long/2addr v4, v1

    const-wide/high16 v6, -0x8000000000000000L

    or-long/2addr v4, v6

    const-wide/16 v6, -0x1

    and-long/2addr v6, v2

    or-long/2addr v4, v6

    return-wide v4

    :cond_0
    const-string/jumbo v1, "BluetoothExpListAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getCombinedChildId :: child preference is null, groupId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", childId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, 0x0

    return-wide v4
.end method

.method public getCombinedGroupId(J)J
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/widget/BaseExpandableListAdapter;->getCombinedGroupId(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getGroup(I)Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    return-object v0
.end method

.method public bridge synthetic getGroup(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getGroup(I)Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupPosition(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 17

    move-object/from16 v13, p3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v15, "layout_inflater"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getGroup(I)Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    move-result-object v2

    const-string/jumbo v14, "BluetoothExpListAdapter"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "getGroupView :: groupPosition = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ",  getPreferenceCount = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v2}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getPreferenceCount()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " , isExpanded = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getLayoutResource()I

    move-result v14

    if-eqz v14, :cond_2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getLayoutResource()I

    move-result v14

    const/4 v15, 0x0

    invoke-virtual {v7, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->isPairedDeviceGroup(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getChildrenCount(I)I

    move-result v14

    if-nez v14, :cond_3

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    new-instance v5, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;

    const/4 v14, 0x0

    invoke-direct {v5, v14}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;)V

    invoke-virtual {v2}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getLayoutResource()I

    move-result v14

    const v15, 0x7f0401f2

    if-ne v14, v15, :cond_6

    const v14, 0x7f11062f

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    iput-object v14, v5, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->linearLayout:Landroid/widget/LinearLayout;

    const v14, 0x7f110630

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    iput-object v14, v5, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    const v14, 0x7f110631

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    iput-object v14, v5, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v13, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v14

    if-eqz v14, :cond_0

    iget-object v14, v5, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const/16 v15, 0x11

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setGravity(I)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    instance-of v14, v14, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0a0254

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0a0255

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0a0256

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v14, v5, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v14, v5, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v8, v9, v10, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;->setMarginsRelative(IIII)V

    iget-object v14, v5, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v14, v8}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v14, v4, v15, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMarginsRelative(IIII)V

    iget-object v14, v5, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v14, v12}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v14, v5, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    const v15, 0x7f0f01e1

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setTextAppearance(I)V

    iget-object v14, v5, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const v15, 0x7f0f01e2

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setTextAppearance(I)V

    :cond_1
    invoke-virtual/range {p4 .. p4}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    const/4 v6, 0x0

    :goto_2
    invoke-virtual/range {p4 .. p4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v14

    if-ge v6, v14, :cond_4

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v14

    sub-int v14, v3, v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDividerHeight:I

    sub-int v3, v14, v15

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    move-object/from16 v0, p4

    invoke-static {v7, v0}, Lcom/android/settings/Utils;->inflateCategoryHeader(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    goto/16 :goto_0

    :cond_3
    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    :cond_4
    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v13, v3}, Landroid/view/View;->setMinimumHeight(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getAvailableDeviceGroup()Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    move-result-object v14

    if-eqz v14, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getAvailableDeviceGroup()Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    move-result-object v14

    invoke-virtual {v14}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getPreferenceCount()I

    move-result v14

    if-nez v14, :cond_5

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    const v14, 0x7f11062e

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    new-instance v15, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$1;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;)V

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :goto_4
    return-object v13

    :cond_5
    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_6
    const v14, 0x1020016

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    iput-object v14, v5, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v13, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v14, v5, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getTitle()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    instance-of v14, v14, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;

    if-nez v14, :cond_7

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v14

    if-eqz v14, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    instance-of v14, v14, Lcom/android/settings/bluetooth/DevicePickerActivity;

    if-eqz v14, :cond_9

    :cond_7
    const v14, 0x7f11019d

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    const v14, 0x7f11064c

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v11, :cond_8

    invoke-virtual {v2}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->isProgress()Z

    move-result v14

    if-eqz v14, :cond_a

    const/4 v14, 0x0

    :goto_5
    invoke-virtual {v11, v14}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    if-eqz v1, :cond_9

    invoke-virtual {v2}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->isVisibleDivider()Z

    move-result v14

    if-eqz v14, :cond_b

    const/4 v14, 0x0

    :goto_6
    invoke-virtual {v1, v14}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    iget-object v14, v5, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    new-instance v15, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$2;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$2;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;)V

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_4

    :cond_a
    const/16 v14, 0x8

    goto :goto_5

    :cond_b
    const/16 v14, 0x8

    goto :goto_6
.end method

.method public getPairedDeviceGroup()Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;
    .locals 3

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->isPairedDeviceGroup(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public getSelectedDeviceList()Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mSelectedDeviceList:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    return-object v0
.end method

.method public getSortedFlatCount(ILcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)I
    .locals 3

    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getGroupPosition(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)I

    move-result v2

    invoke-static {v2, p1}, Landroid/widget/SemExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v0

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mExpandableListView:Landroid/widget/SemExpandableListView;

    invoke-virtual {v2, v0, v1}, Landroid/widget/SemExpandableListView;->getFlatListPosition(J)I

    move-result v2

    return v2
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isAvailableDeviceGroup(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)Z
    .locals 3

    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getTitle()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f0b13e9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isPairedDeviceGroup(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)Z
    .locals 3

    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getTitle()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f0b13e8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    invoke-super {p0}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public removeAll()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public removePreference(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mSelectedDeviceList:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->remove(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public removePreferenceGroup(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setDeviceListGroup(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mSelectedDeviceList:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    return-void
.end method

.method public setNoDeviceLayout(Z)Z
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDiscoveryHelpMsgPreferenceGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDiscoveryHelpMsgPreferenceGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->removePreferenceGroup(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mNoItemPreferenceGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->addPreferenceGroup(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)Z

    move-result v0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mNoItemPreferenceGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mNoItemPreferenceGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->removePreferenceGroup(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDiscoveryHelpMsgPreferenceGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->addPreferenceGroup(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)Z

    move-result v0

    return v0
.end method

.method public sortPreferenceGroup()V
    .locals 3

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getPreferenceList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public declared-synchronized updateDeviceListGroup(Z)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->sortPreferenceGroup()V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
