.class public Lcom/android/incallui/util/SecOpenThemeUtils;
.super Ljava/lang/Object;


# static fields
.field public static final INTENT_EXTRA_THEME_FONT_CLOCK_TYPE:Ljava/lang/String; = "clock"

.field public static final INTENT_EXTRA_THEME_FONT_NUMERIC_TYPE:Ljava/lang/String; = "numeric"

.field public static final INTENT_EXTRA_THEME_FONT_SYSTEM_TYPE:Ljava/lang/String; = "system"

.field public static final INTENT_FONT_THEME_CHANGED:Ljava/lang/String; = "FONT_THEME_CHANGED"

.field private static final OPENTHEMPACKAGE:Ljava/lang/String; = "current_sec_active_themepackage"

.field public static final PREF_CLOCK_FONT_LOCATION:Ljava/lang/String; = "clock_font_location"

.field public static final PREF_NUMERIC_FONT_LOCATION:Ljava/lang/String; = "numeric_font_location"

.field public static final PREF_SYSTEM_FONT_LOCATION:Ljava/lang/String; = "system_font_location"

.field public static final TAG:Ljava/lang/String; = "SecOpenThemeUtils"

.field public static final TAG_PHOTO_CONTAINER:I = 0x1

.field private static final openTheme:[Ljava/lang/String;

.field public static final photo_container_masking_type_OVAL:I = 0x1

.field public static final photo_container_masking_type_RECTANGLE:I = 0x2

.field public static final photo_container_masking_type_ROUND_RECTANGLE:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.samsung.festival.chinadefault"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.samsung.www.Sunrise"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.samsung.www.Indie"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.samsung.www.GoldPlatinum"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.samsung.www.PinkRuby"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/incallui/util/SecOpenThemeUtils;->openTheme:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContactsDefaultImage(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 3

    const/4 v2, 0x0

    rem-int/lit8 v0, p1, 0x4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    packed-switch v0, :pswitch_data_0

    const v0, 0x7f02012e

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    const v0, 0x7f02012f

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    const v0, 0x7f020130

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    const v0, 0x7f020131

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    const v0, 0x7f020132

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getContactsDefaultImageShape(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f006f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-static {p1, p2}, Lcom/android/incallui/util/GraphicResourceUtils;->getCircledDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    invoke-static {p1, p2}, Lcom/android/incallui/util/GraphicResourceUtils;->getCircledDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-static {p1, p2}, Lcom/android/incallui/util/GraphicResourceUtils;->getRectDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-static {p1, p2}, Lcom/android/incallui/util/GraphicResourceUtils;->getRoundRectDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getCurrentTheme(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "current_sec_active_themepackage"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCustomTheme(Landroid/content/Context;)Z
    .locals 5

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/android/incallui/util/SecOpenThemeUtils;->getCurrentTheme(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "SecOpenThemeUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "packageName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    :goto_1
    sget-object v3, Lcom/android/incallui/util/SecOpenThemeUtils;->openTheme:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    sget-object v3, Lcom/android/incallui/util/SecOpenThemeUtils;->openTheme:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isThemeApplied(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/android/incallui/util/SecOpenThemeUtils;->getCurrentTheme(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setCoverBackgroundResource(Landroid/content/Context;)I
    .locals 3

    const v2, 0x7f020297

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0070

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static setCoverEmergencyBackgroundResource(Landroid/content/Context;)I
    .locals 3

    const v2, 0x7f02029c

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0070

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static setCoverScreenSmartCallBackgroundResource(Landroid/content/Context;I)I
    .locals 6

    const v1, 0x7f0202c8

    const v0, 0x7f0202c2

    const v2, 0x7f0202bc

    const v3, 0x7f0202b4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0070

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    move v0, v3

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    packed-switch p1, :pswitch_data_2

    move v0, v3

    goto :goto_0

    :pswitch_2
    move v0, v1

    goto :goto_0

    :pswitch_3
    move v0, v2

    goto :goto_0

    :pswitch_4
    packed-switch p1, :pswitch_data_3

    const v0, 0x7f0202b6

    goto :goto_0

    :pswitch_5
    const v0, 0x7f0202c4

    goto :goto_0

    :pswitch_6
    const v0, 0x7f0202ca

    goto :goto_0

    :pswitch_7
    const v0, 0x7f0202be

    goto :goto_0

    :pswitch_8
    packed-switch p1, :pswitch_data_4

    const v0, 0x7f0202b8

    goto :goto_0

    :pswitch_9
    const v0, 0x7f0202c6

    goto :goto_0

    :pswitch_a
    const v0, 0x7f0202cc

    goto :goto_0

    :pswitch_b
    const v0, 0x7f0202c0

    goto :goto_0

    :pswitch_c
    move v0, v1

    goto :goto_0

    :pswitch_d
    move v0, v2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_c
        :pswitch_d
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public static setCoverYpBackgroundResource(Landroid/content/Context;)I
    .locals 3

    const v0, 0x7f020298

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0070

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const v0, 0x7f020299

    goto :goto_0

    :pswitch_2
    const v0, 0x7f02029a

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static setFullScreenBackgroundResource(Landroid/content/Context;)I
    .locals 3

    const v0, 0x7f020296

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0070

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const v0, 0x7f0202a9

    goto :goto_0

    :pswitch_2
    const v0, 0x7f0202ae

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static setFullScreenEmergencyBackgroundResource(Landroid/content/Context;)I
    .locals 3

    const v0, 0x7f02029b

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0070

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const v0, 0x7f02029d

    goto :goto_0

    :pswitch_2
    const v0, 0x7f02029e

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static setFullScreenPhotoView(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0070

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-static {p1, p2}, Lcom/android/incallui/util/GraphicResourceUtils;->getCircledDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :pswitch_0
    invoke-static {p1, p2}, Lcom/android/incallui/util/GraphicResourceUtils;->getCircledDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-static {p1, p2}, Lcom/android/incallui/util/GraphicResourceUtils;->getRectDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-static {p1, p2}, Lcom/android/incallui/util/GraphicResourceUtils;->getRoundRectDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static setFullScreenResumeBackgroundResource(Landroid/content/Context;)I
    .locals 3

    const v0, 0x7f0202aa

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0070

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const v0, 0x7f0202ab

    goto :goto_0

    :pswitch_2
    const v0, 0x7f0202ac

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static setFullScreenSmartCallBackgroundResource(Landroid/content/Context;I)I
    .locals 6

    const v1, 0x7f0202c7

    const v0, 0x7f0202c1

    const v2, 0x7f0202bb

    const v3, 0x7f0202b3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0070

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    move v0, v3

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    packed-switch p1, :pswitch_data_2

    move v0, v3

    goto :goto_0

    :pswitch_2
    move v0, v1

    goto :goto_0

    :pswitch_3
    move v0, v2

    goto :goto_0

    :pswitch_4
    packed-switch p1, :pswitch_data_3

    const v0, 0x7f0202b5

    goto :goto_0

    :pswitch_5
    const v0, 0x7f0202c3

    goto :goto_0

    :pswitch_6
    const v0, 0x7f0202c9

    goto :goto_0

    :pswitch_7
    const v0, 0x7f0202bd

    goto :goto_0

    :pswitch_8
    packed-switch p1, :pswitch_data_4

    const v0, 0x7f0202b7

    goto :goto_0

    :pswitch_9
    const v0, 0x7f0202c5

    goto :goto_0

    :pswitch_a
    const v0, 0x7f0202cb

    goto :goto_0

    :pswitch_b
    const v0, 0x7f0202bf

    goto :goto_0

    :pswitch_c
    move v0, v1

    goto :goto_0

    :pswitch_d
    move v0, v2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_c
        :pswitch_d
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public static setPhotoIDShape(Landroid/content/Context;Landroid/view/View;IZ)V
    .locals 10

    const v9, 0x7f02029f

    const v8, 0x7f020293

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    rem-int/lit8 v0, p2, 0x4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f006f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const-string v3, "SecOpenThemeUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OpenTheme: setPhotoIDShape()-index:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "), fromManageConferenceCallList?: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", masking type: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_2

    packed-switch v2, :pswitch_data_0

    invoke-virtual {v1, v8, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    :goto_1
    const-string v2, "SecOpenThemeUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OpenTheme: setPhotoIDShape()-photo container color: ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0e015d

    invoke-virtual {v1, v4, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :pswitch_0
    invoke-virtual {v1, v8, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    goto :goto_1

    :pswitch_1
    const v0, 0x7f020294

    invoke-virtual {v1, v0, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    goto :goto_1

    :pswitch_2
    const v0, 0x7f020295

    invoke-virtual {v1, v0, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    goto :goto_1

    :cond_2
    packed-switch v2, :pswitch_data_1

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    goto :goto_1

    :pswitch_3
    invoke-virtual {v1, v9, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    goto :goto_1

    :pswitch_4
    const v0, 0x7f0202a1

    invoke-virtual {v1, v0, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    goto :goto_1

    :pswitch_5
    const v0, 0x7f0202a2

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static setPopupBackgroundResource(Landroid/content/Context;)I
    .locals 3

    const v0, 0x7f0202a3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0070

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const v0, 0x7f0202a4

    goto :goto_0

    :pswitch_2
    const v0, 0x7f0202a5

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static setPopupSmartBackgroundResource(Landroid/content/Context;Z)I
    .locals 3

    const v0, 0x7f0202b0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0070

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-eqz p1, :cond_0

    const v0, 0x7f0202cd

    :goto_0
    :pswitch_0
    return v0

    :cond_0
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_1
    const v0, 0x7f0202b1

    goto :goto_0

    :pswitch_2
    const v0, 0x7f0202b2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static setPopupYpBackgroundResource(Landroid/content/Context;)I
    .locals 3

    const v0, 0x7f0202a6

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0070

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const v0, 0x7f0202a7

    goto :goto_0

    :pswitch_2
    const v0, 0x7f0202a8

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static setQuickPanelBackgroundColor(I)I
    .locals 1

    rem-int/lit8 v0, p0, 0x4

    packed-switch v0, :pswitch_data_0

    const v0, 0x7f0e015d

    :goto_0
    return v0

    :pswitch_0
    const v0, 0x7f0e015e

    goto :goto_0

    :pswitch_1
    const v0, 0x7f0e015f

    goto :goto_0

    :pswitch_2
    const v0, 0x7f0e0160

    goto :goto_0

    :pswitch_3
    const v0, 0x7f0e0161

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static setQuickPanelDefaultImage(I)I
    .locals 1

    rem-int/lit8 v0, p0, 0x4

    packed-switch v0, :pswitch_data_0

    const v0, 0x7f02012e

    :goto_0
    return v0

    :pswitch_0
    const v0, 0x7f02012f

    goto :goto_0

    :pswitch_1
    const v0, 0x7f020130

    goto :goto_0

    :pswitch_2
    const v0, 0x7f020131

    goto :goto_0

    :pswitch_3
    const v0, 0x7f020132

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static setQuickPanelPhotoBackgroundResource(Landroid/content/Context;)I
    .locals 3

    const v0, 0x7f0202e1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0070

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const v0, 0x7f0202df

    goto :goto_0

    :pswitch_2
    const v0, 0x7f0202e0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static setQuickPanelPhotoIdMask(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0070

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-static {p1, p2}, Lcom/android/incallui/util/GraphicResourceUtils;->getCircledBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    invoke-static {p1, p2}, Lcom/android/incallui/util/GraphicResourceUtils;->getCircledBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-static {p1, p2}, Lcom/android/incallui/util/GraphicResourceUtils;->getRectBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-static {p1, p2}, Lcom/android/incallui/util/GraphicResourceUtils;->getRoundRectBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
