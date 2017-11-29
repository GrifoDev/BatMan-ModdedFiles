.class public Lcom/android/launcher3/common/model/DefaultLayoutParser$AppShortcutParser;
.super Lcom/android/launcher3/common/model/DefaultLayoutParser$FolderTagInfo;
.source "DefaultLayoutParser.java"

# interfaces
.implements Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/common/model/DefaultLayoutParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "AppShortcutParser"
.end annotation


# instance fields
.field protected mIsRestore:Z

.field final synthetic this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;


# direct methods
.method protected constructor <init>(Lcom/android/launcher3/common/model/DefaultLayoutParser;)V
    .locals 1

    iput-object p1, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppShortcutParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/common/model/DefaultLayoutParser$FolderTagInfo;-><init>(Lcom/android/launcher3/common/model/DefaultLayoutParser$1;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppShortcutParser;->mIsRestore:Z

    return-void
.end method


# virtual methods
.method protected getComponent(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 1

    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p2, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected invalidPackageOrClass(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J
    .locals 2

    const-string v0, "DefaultLayoutParser"

    const-string v1, "Skipping invalid <favorite> with no component"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public parseAndAdd(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J
    .locals 24

    const-string v21, "packageName"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v21, "className"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_e

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_e

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14, v7}, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppShortcutParser;->getComponent(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v8

    if-nez v8, :cond_0

    const-wide/16 v22, -0x1

    :goto_0
    return-wide v22

    :cond_0
    const-string v17, ""

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppShortcutParser;->mIsRestore:Z

    move/from16 v21, v0

    if-nez v21, :cond_2

    invoke-static {v14, v7}, Lcom/android/launcher3/common/model/AutoInstallsLayout;->isAutoInstallApp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppShortcutParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    move-object/from16 v21, v0

    const-string v22, "restored"

    const/16 v23, 0x2

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v11, 0x1

    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppShortcutParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->access$200(Lcom/android/launcher3/common/model/DefaultLayoutParser;)Z

    move-result v21

    if-eqz v21, :cond_8

    const-wide/16 v22, -0x1

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppShortcutParser;->mIsRestore:Z

    move/from16 v21, v0

    if-nez v21, :cond_3

    invoke-static {}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->access$100()Ljava/util/HashMap;

    move-result-object v21

    if-eqz v21, :cond_3

    invoke-static {}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->access$100()Ljava/util/HashMap;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3

    invoke-static {}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->access$100()Ljava/util/HashMap;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/launcher3/common/model/DefaultLayoutParser$IconTitleValue;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppShortcutParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    move-object/from16 v21, v0

    const-string v22, "restored"

    const/16 v23, 0x20

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppShortcutParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    move-object/from16 v21, v0

    const-string v22, "icon"

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$IconTitleValue;->icon:[B

    move-object/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$IconTitleValue;->title:Ljava/lang/String;

    move-object/from16 v17, v0

    const/4 v11, 0x1

    const-string v21, "DefaultLayoutParser"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "update omc title and icon "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$IconTitleValue;->iconPackage:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " title = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$IconTitleValue;->title:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppShortcutParser;->mIsPostPosition:Z

    move/from16 v21, v0

    if-nez v21, :cond_4

    const-string v21, "true"

    const-string v22, "postPosition"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_6

    :cond_4
    const/16 v20, 0x1

    :goto_2
    if-eqz v20, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppShortcutParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->isPostPositionInsertCondition(Landroid/content/ComponentName;)Z

    move-result v21

    if-eqz v21, :cond_1

    const-string v21, "x"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v21, "y"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v21, "screen"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    const-string v21, "componentName"

    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v21, "itemType"

    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v21, "isHomeAdd"

    const/16 v22, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppShortcutParser;->mFolderTitle:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_7

    const-string v21, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppShortcutParser;->mFolderTitle:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_7

    const-string v21, "isHomePreloadedFolder"

    const/16 v22, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v21, "homeFolderName"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppShortcutParser;->mFolderTitle:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppShortcutParser;->mFolderScreen:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppShortcutParser;->mFolderCellX:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppShortcutParser;->mFolderCellY:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_5

    const-string v21, "homeIndex"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppShortcutParser;->mFolderScreen:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v21, "homeCellX"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppShortcutParser;->mFolderCellX:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v21, "homeCellY"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppShortcutParser;->mFolderCellY:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppShortcutParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/launcher3/common/customer/PostPositionController;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/customer/PostPositionController;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/launcher3/common/customer/PostPositionController;->getProvider()Lcom/android/launcher3/common/customer/PostPositionProvider;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Lcom/android/launcher3/common/customer/PostPositionProvider;->dbInsertOrUpdate(Landroid/content/ContentValues;)J

    const-wide/16 v22, -0x1

    goto/16 :goto_0

    :cond_6
    const/16 v20, 0x0

    goto/16 :goto_2

    :cond_7
    if-eqz v16, :cond_5

    if-eqz v5, :cond_5

    if-eqz v6, :cond_5

    const-string v21, "homeIndex"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v21, "homeCellX"

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v21, "homeCellY"

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_3

    :cond_8
    const-string v21, "hidden"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppShortcutParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    move-object/from16 v21, v0

    const-string v22, "hidden"

    const/16 v23, 0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppShortcutParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    move-object/from16 v21, v0

    const-string v22, "screen"

    const/16 v23, -0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppShortcutParser;->mIsRestore:Z

    move/from16 v21, v0

    if-nez v21, :cond_a

    if-eqz v11, :cond_c

    :cond_a
    const/16 v18, 0x0

    :cond_b
    :goto_4
    new-instance v21, Landroid/content/Intent;

    const-string v22, "android.intent.action.MAIN"

    const/16 v23, 0x0

    invoke-direct/range {v21 .. v23}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v22, "android.intent.category.LAUNCHER"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v21

    const/high16 v22, 0x10200000

    invoke-virtual/range {v21 .. v22}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppShortcutParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    move-object/from16 v2, v17

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v10, v3}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->addShortcut(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)J

    move-result-wide v22

    goto/16 :goto_0

    :cond_c
    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppShortcutParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    move-result-object v12

    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v12, v14, v0}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_d
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_b

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    invoke-virtual {v4}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v22

    if-eqz v22, :cond_d

    invoke-virtual {v4}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_d

    const/16 v18, 0x0

    goto :goto_4

    :cond_e
    invoke-virtual/range {p0 .. p2}, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppShortcutParser;->invalidPackageOrClass(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v22

    goto/16 :goto_0
.end method
