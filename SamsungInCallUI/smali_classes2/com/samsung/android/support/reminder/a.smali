.class public Lcom/samsung/android/support/reminder/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/reminder/a;->a:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/samsung/android/support/reminder/a;->b:Z

    iput-boolean v1, p0, Lcom/samsung/android/support/reminder/a;->c:Z

    iput-boolean v1, p0, Lcom/samsung/android/support/reminder/a;->d:Z

    return-void
.end method


# virtual methods
.method a()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/reminder/a;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public a(J)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/reminder/a;->a:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/reminder/a;->c:Z

    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/reminder/a;->d:Z

    return-void
.end method

.method b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/reminder/a;->b:Z

    return v0
.end method

.method c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/reminder/a;->c:Z

    return v0
.end method

.method d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/reminder/a;->d:Z

    return v0
.end method
