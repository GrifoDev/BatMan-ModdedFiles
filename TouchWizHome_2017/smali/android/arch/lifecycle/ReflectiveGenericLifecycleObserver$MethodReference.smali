.class Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$MethodReference;
.super Ljava/lang/Object;
.source "ReflectiveGenericLifecycleObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MethodReference"
.end annotation


# instance fields
.field final mCallType:I

.field final mMethod:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(ILjava/lang/reflect/Method;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$MethodReference;->mCallType:I

    iput-object p2, p0, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$MethodReference;->mMethod:Ljava/lang/reflect/Method;

    iget-object v0, p0, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$MethodReference;->mMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    check-cast v0, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$MethodReference;

    iget v3, p0, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$MethodReference;->mCallType:I

    iget v4, v0, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$MethodReference;->mCallType:I

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$MethodReference;->mMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$MethodReference;->mMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$MethodReference;->mCallType:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$MethodReference;->mMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
