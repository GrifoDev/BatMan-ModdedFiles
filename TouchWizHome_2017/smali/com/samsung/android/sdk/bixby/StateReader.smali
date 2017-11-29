.class Lcom/samsung/android/sdk/bixby/StateReader;
.super Ljava/lang/Object;
.source "StateReader.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/State;
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v21, Lorg/json/JSONObject;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "specVer"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "specVer"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    const-string v2, "seqNum"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v2, "isExecuted"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v2, "appName"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v2, "stateId"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v2, "ruleId"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v2, "isResent"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "isResent"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const-string v2, "isLandingState"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const-string v2, "isLastState"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "isLastState"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    :goto_2
    const-string v2, "subIntent"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "subIntent"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    :goto_3
    const-string v2, "parameters"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v24

    const/16 v19, 0x0

    :goto_4
    invoke-virtual/range {v24 .. v24}, Lorg/json/JSONArray;->length()I

    move-result v2

    move/from16 v0, v19

    if-ge v0, v2, :cond_11

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v23

    new-instance v22, Lcom/samsung/android/sdk/bixby/data/Parameter;

    invoke-direct/range {v22 .. v22}, Lcom/samsung/android/sdk/bixby/data/Parameter;-><init>()V

    const-string v2, "slotType"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "slotType"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->setSlotType(Ljava/lang/String;)V

    :goto_5
    const-string v2, "slotName"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "slotName"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->setSlotName(Ljava/lang/String;)V

    :goto_6
    const-string v2, "slotValue"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "slotValue"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->setSlotValue(Ljava/lang/String;)V

    :goto_7
    const-string v2, "slotValueType"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "slotValueType"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->setSlotValueType(Ljava/lang/String;)V

    :goto_8
    const-string v2, "CH_ObjectType"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "CH_ObjectType"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->setCHObjectType(Ljava/lang/String;)V

    :goto_9
    const-string v2, "CH_Objects"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "CH_Objects"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    const/16 v20, 0x0

    :goto_a
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v2

    move/from16 v0, v20

    if-ge v0, v2, :cond_c

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    new-instance v17, Lcom/samsung/android/sdk/bixby/data/CHObject;

    invoke-direct/range {v17 .. v17}, Lcom/samsung/android/sdk/bixby/data/CHObject;-><init>()V

    const-string v2, "CH_Type"

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "CH_Type"

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/data/CHObject;->setCHType(Ljava/lang/String;)V

    :goto_b
    const-string v2, "CH_Value"

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "CH_Value"

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/data/CHObject;->setCHValue(Ljava/lang/String;)V

    :goto_c
    const-string v2, "CH_ValueType"

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "CH_ValueType"

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/data/CHObject;->setCHValueType(Ljava/lang/String;)V

    :goto_d
    invoke-interface/range {v16 .. v17}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v20, v20, 0x1

    goto :goto_a

    :cond_0
    const-string v3, "1.0"

    goto/16 :goto_0

    :cond_1
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_2
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    goto/16 :goto_2

    :cond_3
    const-string v12, ""

    goto/16 :goto_3

    :cond_4
    const-string v2, ""

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->setSlotType(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    :catch_0
    move-exception v18

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    :try_start_1
    const-string v2, ""

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->setSlotName(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_6
    const-string v2, ""

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->setSlotValue(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_7
    const-string v2, ""

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->setSlotValueType(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_8
    const-string v2, ""

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->setCHObjectType(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_9
    const-string v2, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/data/CHObject;->setCHType(Ljava/lang/String;)V

    goto :goto_b

    :cond_a
    const-string v2, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/data/CHObject;->setCHValue(Ljava/lang/String;)V

    goto :goto_c

    :cond_b
    const-string v2, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/data/CHObject;->setCHValueType(Ljava/lang/String;)V

    goto :goto_d

    :cond_c
    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/data/Parameter;->setCHObjects(Ljava/util/List;)V

    :goto_e
    const-string v2, "parameterName"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    const-string v2, "parameterName"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->setParameterName(Ljava/lang/String;)V

    :goto_f
    const-string v2, "parameterType"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    const-string v2, "parameterType"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->setParameterType(Ljava/lang/String;)V

    :goto_10
    const-string v2, "isMandatory"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    const-string v2, "isMandatory"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->setIsMandatory(Ljava/lang/Boolean;)V

    :goto_11
    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_4

    :cond_d
    const/4 v2, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->setCHObjects(Ljava/util/List;)V

    goto :goto_e

    :cond_e
    const-string v2, ""

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->setParameterName(Ljava/lang/String;)V

    goto :goto_f

    :cond_f
    const-string v2, ""

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->setParameterType(Ljava/lang/String;)V

    goto :goto_10

    :cond_10
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->setIsMandatory(Ljava/lang/Boolean;)V

    goto :goto_11

    :cond_11
    new-instance v2, Lcom/samsung/android/sdk/bixby/data/State;

    invoke-direct/range {v2 .. v13}, Lcom/samsung/android/sdk/bixby/data/State;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/List;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v2
.end method
