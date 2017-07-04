.class Lcom/android/incallui/ContactInfoCache$FindInfoCallback;
.super Ljava/lang/Object;
.source "ContactInfoCache.java"

# interfaces
.implements Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/ContactInfoCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FindInfoCallback"
.end annotation


# instance fields
.field private final mIsIncoming:Z

.field private final mReuseCache:Z

.field final synthetic this$0:Lcom/android/incallui/ContactInfoCache;


# direct methods
.method public constructor <init>(Lcom/android/incallui/ContactInfoCache;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/ContactInfoCache$FindInfoCallback;->this$0:Lcom/android/incallui/ContactInfoCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/android/incallui/ContactInfoCache$FindInfoCallback;->mIsIncoming:Z

    iput-boolean p3, p0, Lcom/android/incallui/ContactInfoCache$FindInfoCallback;->mReuseCache:Z

    return-void
.end method


# virtual methods
.method public onQueryComplete(ILjava/lang/Object;Lcom/android/incallui/CallerInfo;)V
    .locals 10

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p2, :cond_0

    invoke-static {}, Lcom/android/incallui/ContactInfoCache;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FindInfoCallback : onQueryComplete : cookie is null..."

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    move-object v8, p2

    check-cast v8, Lcom/android/incallui/Call;

    invoke-static {}, Lcom/android/incallui/ContactInfoCache;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FindInfoCallback : onQueryComplete - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-boolean v2, p3, Lcom/android/incallui/CallerInfo;->queryCompleted:Z

    iget-boolean v3, p0, Lcom/android/incallui/ContactInfoCache$FindInfoCallback;->mReuseCache:Z

    iput-boolean v3, p3, Lcom/android/incallui/CallerInfo;->reuseCache:Z

    iget-object v3, p0, Lcom/android/incallui/ContactInfoCache$FindInfoCallback;->this$0:Lcom/android/incallui/ContactInfoCache;

    check-cast p2, Lcom/android/incallui/Call;

    iget-boolean v4, p0, Lcom/android/incallui/ContactInfoCache$FindInfoCallback;->mIsIncoming:Z

    invoke-static {v3, p2, p3, v4, v2}, Lcom/android/incallui/ContactInfoCache;->access$100(Lcom/android/incallui/ContactInfoCache;Lcom/android/incallui/Call;Lcom/android/incallui/CallerInfo;ZZ)V

    invoke-virtual {v8}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v8}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/SecCall;->getFakeSmartCall()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "spam_call_enable"

    invoke-virtual {v8}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/SecCall;->getFakeSmartCallSetting()Z

    move-result v5

    if-eqz v5, :cond_1

    move v1, v2

    :cond_1
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {v8, v2}, Lcom/android/incallui/Call;->setSmartCallSearching(Z)V

    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallController;->getInstance()Lcom/android/incallui/smartcall/SmartCallController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/smartcall/SmartCallController;->notifyListenersOfSmartQueryStart()V

    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallController;->getInstance()Lcom/android/incallui/smartcall/SmartCallController;

    move-result-object v1

    invoke-virtual {v8}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/android/incallui/smartcall/SmartCallController;->startQuery(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    const-string v1, "support_spam_call"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/incallui/util/SpamCallUtils;->getisSpam()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p3, Lcom/android/incallui/CallerInfo;->contactExists:Z

    if-nez v1, :cond_3

    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallController;->getInstance()Lcom/android/incallui/smartcall/SmartCallController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/smartcall/SmartCallController;->notifyListenersOfSmartInfoQueryComplete()V

    :cond_3
    iget-boolean v1, p0, Lcom/android/incallui/ContactInfoCache$FindInfoCallback;->mReuseCache:Z

    if-nez v1, :cond_b

    const-string v1, "geo_description_disable"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p3, Lcom/android/incallui/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "feature_spr"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    iget-object v1, p0, Lcom/android/incallui/ContactInfoCache$FindInfoCallback;->this$0:Lcom/android/incallui/ContactInfoCache;

    invoke-static {v1}, Lcom/android/incallui/ContactInfoCache;->access$200(Lcom/android/incallui/ContactInfoCache;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v8}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p3, Lcom/android/incallui/CallerInfo;->queryNumber:Ljava/lang/String;

    invoke-static {v1, v3, v4}, Lcom/android/incallui/CallerInfoUtils;->updateGeoDescriptionAsync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "show_local_time"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/incallui/ContactInfoCache$FindInfoCallback;->this$0:Lcom/android/incallui/ContactInfoCache;

    invoke-static {v1}, Lcom/android/incallui/ContactInfoCache;->access$200(Lcom/android/incallui/ContactInfoCache;)Landroid/content/Context;

    move-result-object v1

    iget-object v3, p3, Lcom/android/incallui/CallerInfo;->queryNumber:Ljava/lang/String;

    invoke-virtual {p3, v1, v3}, Lcom/android/incallui/CallerInfo;->updateLocalTime(Landroid/content/Context;Ljava/lang/String;)V

    :cond_5
    :goto_2
    const-string v1, "callprotect_enable"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p3}, Lcom/android/incallui/CallerInfo;->isEmergencyNumber()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p3}, Lcom/android/incallui/CallerInfo;->isVoiceMailNumber()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {}, Lcom/whitepages/nameid/NameIDHelper;->isBound()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/android/incallui/ContactInfoCache;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v3, "FindInfoCallback done : CallProtectAsyncQueryHandler startquery"

    invoke-static {v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/whitepages/nameid/CallProtectAsyncQueryHandler;->getInstance()Lcom/whitepages/nameid/CallProtectAsyncQueryHandler;

    move-result-object v1

    iget-wide v4, p3, Lcom/android/incallui/CallerInfo;->rawId:J

    invoke-virtual {v8}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v5, v3}, Lcom/whitepages/nameid/CallProtectAsyncQueryHandler;->startQuery(JLjava/lang/String;)V

    :cond_6
    iget-boolean v1, p3, Lcom/android/incallui/CallerInfo;->contactExists:Z

    if-nez v1, :cond_c

    invoke-static {}, Lcom/android/incallui/ContactInfoCache;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FindInfoCallback done : contactExists "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p3, Lcom/android/incallui/CallerInfo;->contactExists:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_3
    iget-object v1, p3, Lcom/android/incallui/CallerInfo;->phoneNumber:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/android/incallui/ContactInfoCache$FindInfoCallback;->mIsIncoming:Z

    iget-boolean v3, p3, Lcom/android/incallui/CallerInfo;->contactExists:Z

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/ContactAgentUtils;->startContactAgentAsync(Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    :cond_7
    const-string v3, "support_smart_call"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-boolean v3, p3, Lcom/android/incallui/CallerInfo;->contactExists:Z

    if-nez v3, :cond_a

    invoke-virtual {p3}, Lcom/android/incallui/CallerInfo;->isVoiceMailNumber()Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v3, p3, Lcom/android/incallui/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/incallui/ContactInfoCache$FindInfoCallback;->this$0:Lcom/android/incallui/ContactInfoCache;

    invoke-static {v3}, Lcom/android/incallui/ContactInfoCache;->access$200(Lcom/android/incallui/ContactInfoCache;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v8, v3}, Lcom/android/incallui/Call;->isVideoCall(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_a

    invoke-static {v8}, Lcom/android/incallui/util/CallTypeUtils;->checkEmergencyCall(Lcom/android/incallui/Call;)Z

    move-result v3

    if-nez v3, :cond_a

    invoke-static {v8}, Lcom/android/incallui/smartcall/SmartCallUtil;->isSmartCallInfoExist(Lcom/android/incallui/Call;)Z

    move-result v3

    if-nez v3, :cond_a

    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isEmergencyMode()Z

    move-result v3

    if-nez v3, :cond_8

    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isUltraPowerSavingMode()Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_8
    move v9, v2

    :goto_4
    invoke-static {}, Lcom/android/incallui/ContactInfoCache;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FindInfoCallback : mSpamEnable : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallUtil;->isSpamEnable()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallUtil;->isSpamEnable()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v9, :cond_2

    invoke-virtual {v8}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/incallui/ContactInfoCache;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v3, "FindInfoCallback : SmartCallController - startQuery"

    invoke-static {v1, v3, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v8, v2}, Lcom/android/incallui/Call;->setSmartCallSearching(Z)V

    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallController;->getInstance()Lcom/android/incallui/smartcall/SmartCallController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/smartcall/SmartCallController;->notifyListenersOfSmartQueryStart()V

    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallController;->getInstance()Lcom/android/incallui/smartcall/SmartCallController;

    move-result-object v1

    invoke-virtual {v8}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/android/incallui/smartcall/SmartCallController;->startQuery(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_9
    move v9, v1

    goto :goto_4

    :cond_a
    invoke-virtual {v8, v1}, Lcom/android/incallui/Call;->setSmartCallSearching(Z)V

    const-string v1, "support_smart_call"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p3, Lcom/android/incallui/CallerInfo;->contactExists:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/ContactInfoCache$FindInfoCallback;->this$0:Lcom/android/incallui/ContactInfoCache;

    invoke-static {v1}, Lcom/android/incallui/ContactInfoCache;->access$300(Lcom/android/incallui/ContactInfoCache;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v8}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->smartCallInfo:Lcom/android/incallui/smartcall/SmartCallInfo;

    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallController;->getInstance()Lcom/android/incallui/smartcall/SmartCallController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/smartcall/SmartCallController;->notifyListenersOfSmartInfoQueryComplete()V

    goto/16 :goto_1

    :cond_b
    const-string v1, "phone_number_locator"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "show_local_time"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/incallui/ContactInfoCache$FindInfoCallback;->this$0:Lcom/android/incallui/ContactInfoCache;

    invoke-static {v1}, Lcom/android/incallui/ContactInfoCache;->access$200(Lcom/android/incallui/ContactInfoCache;)Landroid/content/Context;

    move-result-object v1

    iget-object v3, p3, Lcom/android/incallui/CallerInfo;->queryNumber:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/android/incallui/util/LocationTimeUtils;->getLocalTime(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/incallui/ContactInfoCache$FindInfoCallback;->this$0:Lcom/android/incallui/ContactInfoCache;

    invoke-static {v1}, Lcom/android/incallui/ContactInfoCache;->access$200(Lcom/android/incallui/ContactInfoCache;)Landroid/content/Context;

    move-result-object v1

    iget-object v3, p3, Lcom/android/incallui/CallerInfo;->queryNumber:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/android/incallui/util/LocationTimeUtils;->isInternational(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/incallui/ContactInfoCache$FindInfoCallback;->this$0:Lcom/android/incallui/ContactInfoCache;

    invoke-static {v1}, Lcom/android/incallui/ContactInfoCache;->access$200(Lcom/android/incallui/ContactInfoCache;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v8}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p3, Lcom/android/incallui/CallerInfo;->queryNumber:Ljava/lang/String;

    invoke-static {v1, v3, v4}, Lcom/android/incallui/CallerInfoUtils;->updateGeoDescriptionAsync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_c
    invoke-static {}, Lcom/android/incallui/ContactInfoCache;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v3, "FindInfoCallback done : OrgAsyncHandler startquery"

    invoke-static {v1, v3, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/OrgAsyncHandler;->getInstance()Lcom/android/incallui/OrgAsyncHandler;

    move-result-object v1

    iget-wide v2, p3, Lcom/android/incallui/CallerInfo;->rawId:J

    invoke-virtual {v8}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v4

    iget v5, p3, Lcom/android/incallui/CallerInfo;->queryUserID:I

    iget-wide v6, p3, Lcom/android/incallui/CallerInfo;->userType:J

    invoke-virtual/range {v1 .. v7}, Lcom/android/incallui/OrgAsyncHandler;->startQuery(JLjava/lang/String;IJ)V

    goto/16 :goto_3
.end method
