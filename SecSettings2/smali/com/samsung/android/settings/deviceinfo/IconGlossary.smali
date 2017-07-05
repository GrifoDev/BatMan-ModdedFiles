.class public Lcom/samsung/android/settings/deviceinfo/IconGlossary;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "IconGlossary.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x28

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 54

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/deviceinfo/IconGlossary;->getActivity()Landroid/app/Activity;

    move-result-object v15

    const v52, 0x7f040144

    const/16 v53, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v52

    move-object/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v50

    const v52, 0x7f110430

    move-object/from16 v0, v50

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v52, 0x7f110435

    move-object/from16 v0, v50

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    const v52, 0x7f110447

    move-object/from16 v0, v50

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    const v52, 0x7f110448

    move-object/from16 v0, v50

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    const v52, 0x7f110480

    move-object/from16 v0, v50

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/LinearLayout;

    const v52, 0x7f110483

    move-object/from16 v0, v50

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/LinearLayout;

    const v52, 0x7f110486

    move-object/from16 v0, v50

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/LinearLayout;

    const v52, 0x7f11044d

    move-object/from16 v0, v50

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    const v52, 0x7f110499

    move-object/from16 v0, v50

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v44

    check-cast v44, Landroid/widget/LinearLayout;

    const v52, 0x7f11049f

    move-object/from16 v0, v50

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v51

    check-cast v51, Landroid/widget/LinearLayout;

    const v52, 0x7f110466

    move-object/from16 v0, v50

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/LinearLayout;

    const v52, 0x7f11046d

    move-object/from16 v0, v50

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/LinearLayout;

    const v52, 0x7f110490

    move-object/from16 v0, v50

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/LinearLayout;

    const v52, 0x7f110472

    move-object/from16 v0, v50

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/LinearLayout;

    const v52, 0x7f11046b

    move-object/from16 v0, v50

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/LinearLayout;

    const v52, 0x7f11047b

    move-object/from16 v0, v50

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v35

    check-cast v35, Landroid/widget/LinearLayout;

    const v52, 0x7f110452

    move-object/from16 v0, v50

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    const v52, 0x7f110457

    move-object/from16 v0, v50

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    const v52, 0x7f110455

    move-object/from16 v0, v50

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    const v52, 0x7f110456

    move-object/from16 v0, v50

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    const v52, 0x7f110454

    move-object/from16 v0, v50

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    const v52, 0x7f11042f

    move-object/from16 v0, v50

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    const v52, 0x7f110497

    move-object/from16 v0, v50

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v43

    check-cast v43, Landroid/widget/LinearLayout;

    const v52, 0x7f1104a4

    move-object/from16 v0, v50

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v39

    check-cast v39, Landroid/widget/LinearLayout;

    const v52, 0x7f11049a

    move-object/from16 v0, v50

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/LinearLayout;

    const v52, 0x7f11049c

    move-object/from16 v0, v50

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v47

    check-cast v47, Landroid/widget/LinearLayout;

    const v52, 0x7f1104a3

    move-object/from16 v0, v50

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v45

    check-cast v45, Landroid/widget/LinearLayout;

    const v52, 0x7f11049b

    move-object/from16 v0, v50

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v42

    check-cast v42, Landroid/widget/LinearLayout;

    const v52, 0x7f11049d

    move-object/from16 v0, v50

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v49

    check-cast v49, Landroid/widget/LinearLayout;

    const v52, 0x7f110498

    move-object/from16 v0, v50

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v46

    check-cast v46, Landroid/widget/LinearLayout;

    const v52, 0x7f110482

    move-object/from16 v0, v50

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v34

    check-cast v34, Landroid/widget/TextView;

    const v52, 0x7f110460

    move-object/from16 v0, v50

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    const v52, 0x7f110462

    move-object/from16 v0, v50

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    const v52, 0x7f110464

    move-object/from16 v0, v50

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    const v52, 0x7f1104a0

    move-object/from16 v0, v50

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v48

    check-cast v48, Landroid/widget/TextView;

    const v52, 0x7f11046a

    move-object/from16 v0, v50

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/ImageView;

    const v52, 0x7f110471

    move-object/from16 v0, v50

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/ImageView;

    const v52, 0x7f11047a

    move-object/from16 v0, v50

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v36

    check-cast v36, Landroid/widget/ImageView;

    const v52, 0x7f11047e

    move-object/from16 v0, v50

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/ImageView;

    const v52, 0x7f110481

    move-object/from16 v0, v50

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/widget/ImageView;

    const v52, 0x7f110485

    move-object/from16 v0, v50

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/widget/ImageView;

    const v52, 0x7f110491

    move-object/from16 v0, v50

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/ImageView;

    const v52, 0x7f110493

    move-object/from16 v0, v50

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/ImageView;

    const v52, 0x7f110476

    move-object/from16 v0, v50

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v38

    check-cast v38, Landroid/widget/ImageView;

    const v52, 0x7f110453

    move-object/from16 v0, v50

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    const v52, 0x7f1104a5

    move-object/from16 v0, v50

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v41

    check-cast v41, Landroid/widget/ImageView;

    const v52, 0x7f110449

    move-object/from16 v0, v50

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/deviceinfo/IconGlossary;->getActivity()Landroid/app/Activity;

    move-result-object v52

    invoke-static/range {v52 .. v52}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v52

    if-nez v52, :cond_0

    const/16 v52, 0x8

    move/from16 v0, v52

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const-string/jumbo v52, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-nez v52, :cond_26

    if-eqz v26, :cond_1

    const/16 v52, 0x8

    move-object/from16 v0, v26

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    if-eqz v29, :cond_2

    const/16 v52, 0x8

    move-object/from16 v0, v29

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2
    if-eqz v37, :cond_3

    const/16 v52, 0x8

    move-object/from16 v0, v37

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_3
    if-eqz v9, :cond_4

    const/16 v52, 0x8

    move/from16 v0, v52

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_4
    if-eqz v44, :cond_5

    const/16 v52, 0x8

    move-object/from16 v0, v44

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_5
    if-eqz v21, :cond_6

    const/16 v52, 0x8

    move-object/from16 v0, v21

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_6
    if-eqz v24, :cond_7

    const/16 v52, 0x8

    move-object/from16 v0, v24

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_7
    if-eqz v23, :cond_8

    const/16 v52, 0x8

    move-object/from16 v0, v23

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_8
    if-eqz v20, :cond_9

    const/16 v52, 0x8

    move-object/from16 v0, v20

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_9
    if-eqz v34, :cond_a

    const v52, 0x7f0b1119

    move-object/from16 v0, v34

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_a
    if-eqz v17, :cond_b

    const v52, 0x7f0b113d

    move-object/from16 v0, v17

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_b
    if-eqz v19, :cond_c

    const v52, 0x7f0b113f

    move-object/from16 v0, v19

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_c
    if-eqz v18, :cond_d

    const v52, 0x7f0b1141

    move-object/from16 v0, v18

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_d
    if-eqz v22, :cond_e

    const v52, 0x7f0203f7

    move-object/from16 v0, v22

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_e
    if-eqz v25, :cond_f

    const v52, 0x7f0203fb

    move-object/from16 v0, v25

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_f
    if-eqz v36, :cond_10

    const v52, 0x7f02040e

    move-object/from16 v0, v36

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_10
    if-eqz v30, :cond_11

    const v52, 0x7f020408

    move-object/from16 v0, v30

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_11
    if-eqz v33, :cond_12

    const v52, 0x7f02040c

    move-object/from16 v0, v33

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_12
    if-eqz v31, :cond_13

    const v52, 0x7f02040a

    move-object/from16 v0, v31

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_13
    if-eqz v27, :cond_14

    const v52, 0x7f020400

    move-object/from16 v0, v27

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_14
    if-eqz v28, :cond_15

    const v52, 0x7f020404

    move-object/from16 v0, v28

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_15
    if-eqz v11, :cond_16

    const v52, 0x7f0200ee

    move/from16 v0, v52

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_16
    if-eqz v38, :cond_17

    const v52, 0x7f020414

    move-object/from16 v0, v38

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_17
    if-eqz v41, :cond_18

    const v52, 0x7f020439

    move-object/from16 v0, v41

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_18
    if-eqz v6, :cond_19

    const v52, 0x7f0200d4

    move/from16 v0, v52

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_19
    :goto_0
    const-string/jumbo v52, "com.samsung.android.personalpage.service"

    move-object/from16 v0, v52

    invoke-static {v15, v0}, Lcom/android/settings/Utils;->isPackageExists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v52

    if-nez v52, :cond_1a

    if-eqz v44, :cond_1a

    const/16 v52, 0x8

    move-object/from16 v0, v44

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1a
    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v52

    const v53, 0x7f0e0027

    invoke-virtual/range {v52 .. v53}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v52

    if-nez v52, :cond_1b

    const/16 v52, 0x8

    move-object/from16 v0, v32

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1b
    invoke-static {v15}, Lcom/android/settings/Utils;->isSmsCapable(Landroid/content/Context;)Z

    move-result v52

    if-nez v52, :cond_1c

    const/16 v52, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1c
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v52

    if-eqz v52, :cond_1d

    invoke-static {v15}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v52

    if-eqz v52, :cond_27

    :cond_1d
    invoke-static {}, Lcom/android/settings/Utils;->isSupportSmartBonding()Z

    move-result v52

    if-eqz v52, :cond_27

    :goto_1
    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v52

    const-string/jumbo v53, "android.hardware.nfc"

    invoke-virtual/range {v52 .. v53}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v52

    if-nez v52, :cond_1e

    const/16 v52, 0x8

    move/from16 v0, v52

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1e
    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v52

    const-string/jumbo v53, "com.sec.android.smartface.smart_stay"

    invoke-virtual/range {v52 .. v53}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v52

    if-nez v52, :cond_1f

    const/16 v52, 0x8

    move-object/from16 v0, v46

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1f
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v52

    const-string/jumbo v53, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-virtual/range {v52 .. v53}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v52

    if-nez v52, :cond_20

    const/16 v52, 0x8

    move-object/from16 v0, v45

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_20
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v52

    const-string/jumbo v53, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_FLASH_NOTIFICATION"

    invoke-virtual/range {v52 .. v53}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v52

    if-nez v52, :cond_21

    const/16 v52, 0x8

    move-object/from16 v0, v42

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_21
    const-string/jumbo v52, "com.samsung.android.app.advsounddetector"

    move-object/from16 v0, v52

    invoke-static {v15, v0}, Lcom/android/settings/Utils;->isPackageExists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v52

    if-nez v52, :cond_22

    const/16 v52, 0x8

    move-object/from16 v0, v47

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_22
    invoke-static {v15}, Lcom/android/settings/Utils;->isSDcardExists(Landroid/content/Context;)Z

    move-result v52

    if-nez v52, :cond_23

    const/16 v52, 0x8

    move/from16 v0, v52

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/16 v52, 0x8

    move/from16 v0, v52

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_23
    sget v52, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v53, 0x17

    move/from16 v0, v52

    move/from16 v1, v53

    if-lt v0, v1, :cond_24

    const/16 v52, 0x8

    move/from16 v0, v52

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/16 v52, 0x8

    move-object/from16 v0, v46

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_24
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v52

    if-nez v52, :cond_28

    const-string/jumbo v52, "com.sec.android.app.voicenote"

    move-object/from16 v0, v52

    invoke-static {v15, v0}, Lcom/android/settings/Utils;->isPackageExists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v52

    if-eqz v52, :cond_28

    :goto_2
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v52

    if-eqz v52, :cond_25

    if-eqz v48, :cond_25

    const v52, 0x7f0b115a

    move-object/from16 v0, v48

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_25
    move-object/from16 v52, v50

    check-cast v52, Landroid/widget/ScrollView;

    const/16 v53, 0x1

    invoke-virtual/range {v52 .. v53}, Landroid/widget/ScrollView;->semSetGoToTopEnabled(Z)V

    return-object v50

    :cond_26
    if-eqz v35, :cond_19

    const/16 v52, 0x8

    move-object/from16 v0, v35

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    :cond_27
    const/16 v52, 0x8

    move-object/from16 v0, v26

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    :cond_28
    const/16 v52, 0x8

    move-object/from16 v0, v49

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2
.end method
