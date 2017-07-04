.class Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo$Attribute;
.super Ljava/lang/Object;
.source "NlgRequestInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Attribute"
.end annotation


# instance fields
.field public name:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

.field public value:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo$Attribute;->this$0:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo$Attribute;->name:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo$Attribute;->value:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo$Attribute;-><init>(Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
