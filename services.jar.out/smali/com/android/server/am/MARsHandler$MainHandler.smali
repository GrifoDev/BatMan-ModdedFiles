.class public Lcom/android/server/am/MARsHandler$MainHandler;
.super Landroid/os/Handler;
.source "MARsHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MARsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MainHandler"
.end annotation


# instance fields
.field extras:Landroid/os/Bundle;

.field final synthetic this$0:Lcom/android/server/am/MARsHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/am/MARsHandler;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/am/MARsHandler$MainHandler;->this$0:Lcom/android/server/am/MARsHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 23

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->this$0:Lcom/android/server/am/MARsHandler;

    iget-object v2, v2, Lcom/android/server/am/MARsHandler;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Lcom/android/server/am/MARsPolicyManager;->onUpdatePackages(Z)V

    goto :goto_0

    :pswitch_1
    const-string/jumbo v2, "MARsHandler"

    const-string/jumbo v21, "handle MARS_MH_TRIGGER_POLICY_MSG...."

    move-object/from16 v0, v21

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v21, "policy-num"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v21, "trigger-reason"

    const-string/jumbo v22, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    if-eqz v19, :cond_0

    const/4 v2, 0x2

    move/from16 v0, v19

    if-ne v0, v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->this$0:Lcom/android/server/am/MARsHandler;

    iget-object v2, v2, Lcom/android/server/am/MARsHandler;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v2}, Lcom/android/server/am/MARsPolicyManager;->getFreecessEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->this$0:Lcom/android/server/am/MARsHandler;

    iget-object v2, v2, Lcom/android/server/am/MARsHandler;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    iget-boolean v2, v2, Lcom/android/server/am/MARsPolicyManager;->mFirstTimeExcutingPolicy:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->this$0:Lcom/android/server/am/MARsHandler;

    iget-object v2, v2, Lcom/android/server/am/MARsHandler;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MARsHandler$MainHandler;->this$0:Lcom/android/server/am/MARsHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/MARsHandler;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    invoke-virtual/range {v21 .. v22}, Lcom/android/server/am/MARsPolicyManager;->getPolicy(I)Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v21

    const-string/jumbo v22, "Freecess"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v2, v0, v1}, Lcom/android/server/am/MARsPolicyManager;->executePolicy(Lcom/android/server/am/MARsPolicyManager$Policy;Ljava/lang/String;)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->this$0:Lcom/android/server/am/MARsHandler;

    iget-object v2, v2, Lcom/android/server/am/MARsHandler;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MARsHandler$MainHandler;->this$0:Lcom/android/server/am/MARsHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/MARsHandler;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/am/MARsPolicyManager;->getPolicy(I)Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Lcom/android/server/am/MARsPolicyManager;->executePolicy(Lcom/android/server/am/MARsPolicyManager$Policy;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v21, "policy-num"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v21, "emergencyKillForce"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v14

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->this$0:Lcom/android/server/am/MARsHandler;

    iget-object v2, v2, Lcom/android/server/am/MARsHandler;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    move/from16 v0, v19

    invoke-virtual {v2, v0, v14}, Lcom/android/server/am/MARsPolicyManager;->forceRunPolicyForMemoryNotEnough(IZ)V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v21, "policy-num"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v21, "packageList"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v17

    if-eqz v19, :cond_0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->this$0:Lcom/android/server/am/MARsHandler;

    iget-object v2, v2, Lcom/android/server/am/MARsHandler;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    move/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Lcom/android/server/am/MARsPolicyManager;->forceRunPolicyForSpecificPackage(ILjava/util/ArrayList;)V

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v21, "policy-num"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v21, "trigger-reason"

    const-string/jumbo v22, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v21, "userId"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MARsHandler$MainHandler;->this$0:Lcom/android/server/am/MARsHandler;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/MARsHandler;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getUserId()I

    move-result v22

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v21, "packageList"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v17

    if-eqz v17, :cond_0

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->this$0:Lcom/android/server/am/MARsHandler;

    iget-object v2, v2, Lcom/android/server/am/MARsHandler;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v6}, Lcom/android/server/am/MARsPolicyManager;->updateUDSPackages(Ljava/util/ArrayList;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->this$0:Lcom/android/server/am/MARsHandler;

    iget-object v2, v2, Lcom/android/server/am/MARsHandler;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MARsHandler$MainHandler;->this$0:Lcom/android/server/am/MARsHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/MARsHandler;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/am/MARsPolicyManager;->getPolicy(I)Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Lcom/android/server/am/MARsPolicyManager;->executePolicy(Lcom/android/server/am/MARsPolicyManager$Policy;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v21, "pkgName"

    const-string/jumbo v22, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v21, "policy-num"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v21, "userId"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MARsHandler$MainHandler;->this$0:Lcom/android/server/am/MARsHandler;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/MARsHandler;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getUserId()I

    move-result v22

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->this$0:Lcom/android/server/am/MARsHandler;

    iget-object v2, v2, Lcom/android/server/am/MARsHandler;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v2, v0, v1, v6}, Lcom/android/server/am/MARsPolicyManager;->cancelPolicy(Ljava/lang/String;II)V

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v21, "packageList"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v21, "policy-num"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v21, "userId"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MARsHandler$MainHandler;->this$0:Lcom/android/server/am/MARsHandler;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/MARsHandler;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getUserId()I

    move-result v22

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-eqz v17, :cond_0

    const/4 v15, 0x0

    :goto_1
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v15, v2, :cond_0

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->this$0:Lcom/android/server/am/MARsHandler;

    iget-object v2, v2, Lcom/android/server/am/MARsHandler;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v2, v0, v1, v6}, Lcom/android/server/am/MARsPolicyManager;->cancelPolicy(Ljava/lang/String;II)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    :pswitch_7
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v21, "policy-num"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v21, "trigger-reason"

    const-string/jumbo v22, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v21, "userId"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MARsHandler$MainHandler;->this$0:Lcom/android/server/am/MARsHandler;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/MARsHandler;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getUserId()I

    move-result v22

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v21, "packageList"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v17

    if-eqz v17, :cond_0

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->this$0:Lcom/android/server/am/MARsHandler;

    iget-object v2, v2, Lcom/android/server/am/MARsHandler;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v6}, Lcom/android/server/am/MARsPolicyManager;->updateSBikePackages(Ljava/util/ArrayList;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->this$0:Lcom/android/server/am/MARsHandler;

    iget-object v2, v2, Lcom/android/server/am/MARsHandler;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MARsHandler$MainHandler;->this$0:Lcom/android/server/am/MARsHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/MARsHandler;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/am/MARsPolicyManager;->getPolicy(I)Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Lcom/android/server/am/MARsPolicyManager;->executePolicy(Lcom/android/server/am/MARsPolicyManager$Policy;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_8
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v21, "pkgName"

    const-string/jumbo v22, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v21, "action"

    const-string/jumbo v22, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v21, "isReInstall"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v21, "userId"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MARsHandler$MainHandler;->this$0:Lcom/android/server/am/MARsHandler;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/MARsHandler;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getUserId()I

    move-result v22

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->this$0:Lcom/android/server/am/MARsHandler;

    iget-object v2, v2, Lcom/android/server/am/MARsHandler;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v2, v0, v11, v1, v6}, Lcom/android/server/am/MARsPolicyManager;->onPackageStatusChange(Ljava/lang/String;Ljava/lang/String;ZI)V

    goto/16 :goto_0

    :pswitch_9
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v21, "changedTime"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->this$0:Lcom/android/server/am/MARsHandler;

    iget-object v2, v2, Lcom/android/server/am/MARsHandler;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v2, v12, v13}, Lcom/android/server/am/MARsPolicyManager;->onAppUsedForTimeChanged(J)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->this$0:Lcom/android/server/am/MARsHandler;

    iget-object v2, v2, Lcom/android/server/am/MARsHandler;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Lcom/android/server/am/MARsPolicyManager;->onUpdatePackages(Z)V

    goto/16 :goto_0

    :pswitch_a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v21, "pkgName"

    const-string/jumbo v22, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v21, "userId"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MARsHandler$MainHandler;->this$0:Lcom/android/server/am/MARsHandler;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/MARsHandler;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getUserId()I

    move-result v22

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->this$0:Lcom/android/server/am/MARsHandler;

    iget-object v2, v2, Lcom/android/server/am/MARsHandler;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v6}, Lcom/android/server/am/MARsPolicyManager;->onAlertToastWindowStarted(Ljava/lang/String;I)V

    goto/16 :goto_0

    :pswitch_b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v21, "pkgName"

    const-string/jumbo v22, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v21, "userId"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MARsHandler$MainHandler;->this$0:Lcom/android/server/am/MARsHandler;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/MARsHandler;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getUserId()I

    move-result v22

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->this$0:Lcom/android/server/am/MARsHandler;

    iget-object v2, v2, Lcom/android/server/am/MARsHandler;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v6}, Lcom/android/server/am/MARsPolicyManager;->onNotificationBarClicked(Ljava/lang/String;I)V

    goto/16 :goto_0

    :pswitch_c
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v21, "packageName"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v21, "userId"

    const/16 v22, -0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-eqz v18, :cond_0

    const/4 v2, -0x1

    if-eq v6, v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->this$0:Lcom/android/server/am/MARsHandler;

    iget-object v2, v2, Lcom/android/server/am/MARsHandler;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v6}, Lcom/android/server/am/MARsPolicyManager;->cancelJobSchedulerPackage(Ljava/lang/String;I)V

    goto/16 :goto_0

    :pswitch_d
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v21, "policy"

    const/16 v22, -0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v21, "packageName"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v21, "packageVersion"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v21, "userId"

    const/16 v22, -0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v21, "skipReason"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v21, "caller"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v21, "hostingType"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v21, "componentName"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->this$0:Lcom/android/server/am/MARsHandler;

    iget-object v2, v2, Lcom/android/server/am/MARsHandler;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/am/MARsPolicyManager;->sendBigDataInfoFromMARstoHQM(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method
