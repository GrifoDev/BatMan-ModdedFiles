.class public Lcom/android/incallui/util/SecSubNumberDialogActivity;
.super Landroid/app/Activity;


# static fields
.field public static final HAS_MAIN:Ljava/lang/String; = "has_main"

.field public static final ITEMS:Ljava/lang/String; = "items"

.field public static final NUMBER:Ljava/lang/String; = "number"

.field public static final SIM_ID:Ljava/lang/String; = "sim_id"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private emptyDialog:Landroid/app/AlertDialog;

.field private hasMainNumber:Z

.field private itemDialog:Landroid/app/AlertDialog;

.field private mItems:[Ljava/lang/String;

.field private mNumber:Ljava/lang/String;

.field private mPosition:[Ljava/lang/String;

.field private mSimId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/incallui/util/SecSubNumberDialogActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/util/SecSubNumberDialogActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/util/SecSubNumberDialogActivity;->mSimId:I

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/incallui/util/SecSubNumberDialogActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/incallui/util/SecSubNumberDialogActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/util/SecSubNumberDialogActivity;->hasMainNumber:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/incallui/util/SecSubNumberDialogActivity;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/util/SecSubNumberDialogActivity;->mPosition:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/incallui/util/SecSubNumberDialogActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/util/SecSubNumberDialogActivity;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/incallui/util/SecSubNumberDialogActivity;)I
    .locals 1

    iget v0, p0, Lcom/android/incallui/util/SecSubNumberDialogActivity;->mSimId:I

    return v0
.end method

.method private showEmptyDialog()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090256

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090257

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/incallui/util/SecSubNumberDialogActivity$3;

    invoke-direct {v2, p0}, Lcom/android/incallui/util/SecSubNumberDialogActivity$3;-><init>(Lcom/android/incallui/util/SecSubNumberDialogActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/util/SecSubNumberDialogActivity;->emptyDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/incallui/util/SecSubNumberDialogActivity;->emptyDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    iget-object v0, p0, Lcom/android/incallui/util/SecSubNumberDialogActivity;->emptyDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showItemDialog()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/incallui/util/SecSubNumberDialogActivity;->mItems:[Ljava/lang/String;

    new-instance v2, Lcom/android/incallui/util/SecSubNumberDialogActivity$2;

    invoke-direct {v2, p0}, Lcom/android/incallui/util/SecSubNumberDialogActivity$2;-><init>(Lcom/android/incallui/util/SecSubNumberDialogActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09016a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/incallui/util/SecSubNumberDialogActivity$1;

    invoke-direct {v1, p0}, Lcom/android/incallui/util/SecSubNumberDialogActivity$1;-><init>(Lcom/android/incallui/util/SecSubNumberDialogActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/util/SecSubNumberDialogActivity;->itemDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/incallui/util/SecSubNumberDialogActivity;->itemDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    iget-object v0, p0, Lcom/android/incallui/util/SecSubNumberDialogActivity;->itemDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/util/SecSubNumberDialogActivity;->itemDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/util/SecSubNumberDialogActivity;->itemDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/android/incallui/util/SecSubNumberDialogActivity;->itemDialog:Landroid/app/AlertDialog;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/util/SecSubNumberDialogActivity;->emptyDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/util/SecSubNumberDialogActivity;->emptyDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/android/incallui/util/SecSubNumberDialogActivity;->emptyDialog:Landroid/app/AlertDialog;

    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->setSubNumberDialog(Lcom/android/incallui/util/SecSubNumberDialogActivity;)V

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    invoke-virtual {p0, v2, v2}, Lcom/android/incallui/util/SecSubNumberDialogActivity;->overridePendingTransition(II)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/incallui/util/SecSubNumberDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "number"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/util/SecSubNumberDialogActivity;->mNumber:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/incallui/util/SecSubNumberDialogActivity;->mNumber:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/util/SecSubNumberDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "sim_id"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/util/SecSubNumberDialogActivity;->mSimId:I

    invoke-virtual {p0}, Lcom/android/incallui/util/SecSubNumberDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "items"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/util/SecSubNumberDialogActivity;->mItems:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/incallui/util/SecSubNumberDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "has_main"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/util/SecSubNumberDialogActivity;->hasMainNumber:Z

    iget-object v0, p0, Lcom/android/incallui/util/SecSubNumberDialogActivity;->mItems:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/incallui/util/SecSubNumberDialogActivity;->mPosition:[Ljava/lang/String;

    iget-boolean v0, p0, Lcom/android/incallui/util/SecSubNumberDialogActivity;->hasMainNumber:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/util/SecSubNumberDialogActivity;->mPosition:[Ljava/lang/String;

    const-string v3, "0"

    aput-object v3, v0, v2

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/android/incallui/util/SecSubNumberDialogActivity;->mItems:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/util/SecSubNumberDialogActivity;->mPosition:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/incallui/util/SecSubNumberDialogActivity;->mItems:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v4, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    iget-object v3, p0, Lcom/android/incallui/util/SecSubNumberDialogActivity;->mItems:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/incallui/util/SecSubNumberDialogActivity;->mItems:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/util/SecSubNumberDialogActivity;->showItemDialog()V

    :goto_1
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->setSubNumberDialog(Lcom/android/incallui/util/SecSubNumberDialogActivity;)V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/util/SecSubNumberDialogActivity;->showEmptyDialog()V

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_0
.end method
