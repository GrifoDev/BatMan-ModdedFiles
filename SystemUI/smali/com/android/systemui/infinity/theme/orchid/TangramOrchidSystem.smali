.class public Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;
.super Lcom/android/systemui/infinity/tangram/TangramSystem;
.source "TangramOrchidSystem.java"


# static fields
.field private static final PSD_VERTEX_DATA:[[F

.field private static final VERTEX_DATA:[[F


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0x18

    const/16 v0, 0x9

    new-array v0, v0, [[F

    new-array v1, v3, [F

    fill-array-data v1, :array_0

    aput-object v1, v0, v4

    new-array v1, v3, [F

    fill-array-data v1, :array_1

    aput-object v1, v0, v5

    new-array v1, v3, [F

    fill-array-data v1, :array_2

    aput-object v1, v0, v6

    new-array v1, v3, [F

    fill-array-data v1, :array_3

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_4

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_5

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_6

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_7

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_8

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->PSD_VERTEX_DATA:[[F

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    new-array v1, v6, [I

    sget-object v2, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->PSD_VERTEX_DATA:[[F

    array-length v2, v2

    aput v2, v1, v4

    aput v3, v1, v5

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    sput-object v0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->VERTEX_DATA:[[F

    return-void

    nop

    :array_0
    .array-data 4
        0x449c0000    # 1248.0f
        0x436a0000    # 234.0f
        0x4583e800    # 4221.0f
        0x44390000    # 740.0f
        0x444e0000    # 824.0f
        0x41800000    # 16.0f
        0x456d5000    # 3797.0f
        0x44028000    # 522.0f
        0x44c62000    # 1585.0f
        0x43eb8000    # 471.0f
        0x458e7000    # 4558.0f
        0x44744000    # 977.0f
        0x44c62000    # 1585.0f
        0x439f8000    # 319.0f
        0x458e7000    # 4558.0f
        0x444e4000    # 825.0f
        0x44878000    # 1084.0f
        0x41800000    # 16.0f
        0x457d9000    # 4057.0f
        0x44028000    # 522.0f
        0x444e0000    # 824.0f
        0x41800000    # 16.0f
        0x456d5000    # 3797.0f
        0x44028000    # 522.0f
    .end array-data

    :array_1
    .array-data 4
        0x44816000    # 1035.0f
        0x43b58000    # 363.0f
        0x452bf000    # 2751.0f
        0x44350000    # 724.0f
        0x441c0000    # 624.0f
        0x43340000    # 180.0f
        0x45124000    # 2340.0f
        0x44074000    # 541.0f
        0x44b4e000    # 1447.0f
        0x442a0000    # 680.0f
        0x4545b000    # 3163.0f
        0x44822000    # 1041.0f
        0x44b4e000    # 1447.0f
        0x44088000    # 546.0f
        0x4545b000    # 3163.0f
        0x4462c000    # 907.0f
        0x441c0000    # 624.0f
        0x42380000    # 46.0f
        0x45124000    # 2340.0f
        0x43cb8000    # 407.0f
        0x441c0000    # 624.0f
        0x43340000    # 180.0f
        0x45124000    # 2340.0f
        0x44074000    # 541.0f
    .end array-data

    :array_2
    .array-data 4
        0x44698000    # 934.0f
        0x43d38000    # 423.0f
        0x444d4000    # 821.0f
        0x44130000    # 588.0f
        0x43430000    # 195.0f
        0x422c0000    # 43.0f
        0x42a40000    # 82.0f
        0x43500000    # 208.0f
        0x44d14000    # 1674.0f
        0x446dc000    # 951.0f
        0x44c32000    # 1561.0f
        0x448b8000    # 1116.0f
        0x44d14000    # 1674.0f
        0x44488000    # 802.0f
        0x44c32000    # 1561.0f
        0x4471c000    # 967.0f
        0x43430000    # 195.0f
        -0x3d2e0000    # -105.0f
        0x42a40000    # 82.0f
        0x42700000    # 60.0f
        0x43430000    # 195.0f
        0x422c0000    # 43.0f
        0x42a40000    # 82.0f
        0x43500000    # 208.0f
    .end array-data

    :array_3
    .array-data 4
        0x44846000    # 1059.0f
        0x43fa8000    # 501.0f
        0x456d5000    # 3797.0f
        0x440cc000    # 563.0f
        0x43de0000    # 444.0f
        0x43938000    # 295.0f
        0x4546e000    # 3182.0f
        0x43b28000    # 357.0f
        0x44d14000    # 1674.0f
        0x4481e000    # 1039.0f
        0x4589e000    # 4412.0f
        0x4489a000    # 1101.0f
        0x44d14000    # 1674.0f
        0x44558000    # 854.0f
        0x4589e000    # 4412.0f
        0x44650000    # 916.0f
        0x43de0000    # 444.0f
        0x42dc0000    # 110.0f
        0x4546e000    # 3182.0f
        0x432c0000    # 172.0f
        0x43de0000    # 444.0f
        0x43938000    # 295.0f
        0x4546e000    # 3182.0f
        0x43b28000    # 357.0f
    .end array-data

    :array_4
    .array-data 4
        0x44474000    # 797.0f
        0x4418c000    # 611.0f
        0x450f2000    # 2290.0f
        0x44344000    # 721.0f
        -0x3d600000    # -80.0f
        0x438e8000    # 285.0f
        0x44b0a000    # 1413.0f
        0x43c58000    # 395.0f
        0x44d14000    # 1674.0f
        0x44a6a000    # 1333.0f
        0x4545f000    # 3167.0f
        0x44b46000    # 1443.0f
        0x44d14000    # 1674.0f
        0x44688000    # 930.0f
        0x4545f000    # 3167.0f
        0x44820000    # 1040.0f
        -0x3d600000    # -80.0f
        -0x3d240000    # -110.0f
        0x44b0a000    # 1413.0f
        0x0
        -0x3d600000    # -80.0f
        0x438e8000    # 285.0f
        0x44b0a000    # 1413.0f
        0x43c58000    # 395.0f
    .end array-data

    :array_5
    .array-data 4
        0x442d0000    # 692.0f
        0x44518000    # 838.0f
        0x4473c000    # 975.0f
        0x44744000    # 977.0f
        0x42c40000    # 98.0f
        0x4426c000    # 667.0f
        0x43be8000    # 381.0f
        0x44498000    # 806.0f
        0x44a0a000    # 1285.0f
        0x44ac8000    # 1380.0f
        0x44c40000    # 1568.0f
        0x44bde000    # 1519.0f
        0x44a0a000    # 1285.0f
        0x447c8000    # 1010.0f
        0x44c40000    # 1568.0f
        0x448fa000    # 1149.0f
        0x42c40000    # 98.0f
        0x43948000    # 297.0f
        0x43be8000    # 381.0f
        0x43da0000    # 436.0f
        0x42c40000    # 98.0f
        0x4426c000    # 667.0f
        0x43be8000    # 381.0f
        0x44498000    # 806.0f
    .end array-data

    :array_6
    .array-data 4
        0x442c0000    # 688.0f
        0x4482e000    # 1047.0f
        0x45731000    # 3889.0f
        0x448b6000    # 1115.0f
        -0x3e480000    # -23.0f
        0x44c98000    # 1612.0f
        0x4546a000    # 3178.0f
        0x44d20000    # 1680.0f
        0x44af0000    # 1400.0f
        0x44c98000    # 1612.0f
        0x458fc800    # 4601.0f
        0x44d20000    # 1680.0f
        0x44af0000    # 1400.0f
        0x44a64000    # 1330.0f
        0x458fc800    # 4601.0f
        0x44aec000    # 1398.0f
        -0x3e480000    # -23.0f
        0x43f10000    # 482.0f
        0x4546a000    # 3178.0f
        0x44098000    # 550.0f
        -0x3e480000    # -23.0f
        0x44c98000    # 1612.0f
        0x4546a000    # 3178.0f
        0x44d20000    # 1680.0f
    .end array-data

    :array_7
    .array-data 4
        0x44300000    # 704.0f
        0x44a68000    # 1332.0f
        0x45154000    # 2388.0f
        0x4489a000    # 1101.0f
        -0x3d420000    # -95.0f
        0x44eee000    # 1911.0f
        0x44c6a000    # 1589.0f
        0x44d20000    # 1680.0f
        0x44bac000    # 1494.0f
        0x44eee000    # 1911.0f
        0x4546a000    # 3178.0f
        0x44d20000    # 1680.0f
        0x44bac000    # 1494.0f
        0x44d3e000    # 1695.0f
        0x4546a000    # 3178.0f
        0x44b70000    # 1464.0f
        -0x3d420000    # -95.0f
        0x443a4000    # 745.0f
        0x44c6a000    # 1589.0f
        0x44008000    # 514.0f
        -0x3d420000    # -95.0f
        0x44eee000    # 1911.0f
        0x44c6a000    # 1589.0f
        0x44d20000    # 1680.0f
    .end array-data

    :array_8
    .array-data 4
        0x442f0000    # 700.0f
        0x44a7c000    # 1342.0f
        0x4446c000    # 795.0f
        0x448ee000    # 1143.0f
        -0x3d420000    # -95.0f
        0x44eae000    # 1879.0f
        0x0
        0x44d20000    # 1680.0f
        0x44bac000    # 1494.0f
        0x44eae000    # 1879.0f
        0x44c6a000    # 1589.0f
        0x44d20000    # 1680.0f
        0x44bac000    # 1494.0f
        0x44db6000    # 1755.0f
        0x44c6a000    # 1589.0f
        0x44c28000    # 1556.0f
        -0x3d420000    # -95.0f
        0x44494000    # 805.0f
        0x0
        0x44178000    # 606.0f
        -0x3d420000    # -95.0f
        0x44eae000    # 1879.0f
        0x0
        0x44d20000    # 1680.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/infinity/tangram/TangramSystem;-><init>(Landroid/content/Context;)V

    const v0, 0x3f4ccccd    # 0.8f

    iput v0, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->speedAcc:F

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->plusXDirectionForInitAnimation:F

    const v0, -0x4170a3d7    # -0.28f

    iput v0, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->plusTangramAlpha:F

    return-void
.end method


# virtual methods
.method protected calculateFrame()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->checkIsDoneShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->showEasing:F

    invoke-virtual {p0, v0}, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->setTangramEasing(F)V

    invoke-virtual {p0}, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->moveProgress()V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->tiltEasing:F

    invoke-virtual {p0, v0}, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->setTangramEasing(F)V

    iget-boolean v0, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->isLeft:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->moveRight()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->moveLeft()V

    goto :goto_0
.end method

.method protected getTextureMapData()Lcom/android/systemui/infinity/tangram/TangramMapData;
    .locals 11

    const v10, 0x458fc800    # 4601.0f

    const/high16 v9, 0x45390000    # 2960.0f

    const/high16 v8, 0x44d20000    # 1680.0f

    const/high16 v7, 0x44b40000    # 1440.0f

    const/high16 v6, 0x3f000000    # 0.5f

    new-instance v0, Lcom/android/systemui/infinity/tangram/TangramMapData;

    invoke-direct {v0}, Lcom/android/systemui/infinity/tangram/TangramMapData;-><init>()V

    const v3, 0x7f020292

    iput v3, v0, Lcom/android/systemui/infinity/tangram/TangramMapData;->mapId:I

    iput v10, v0, Lcom/android/systemui/infinity/tangram/TangramMapData;->mapWidth:F

    iput v8, v0, Lcom/android/systemui/infinity/tangram/TangramMapData;->mapHeight:F

    iput v9, v0, Lcom/android/systemui/infinity/tangram/TangramMapData;->previewHeight:F

    iput v7, v0, Lcom/android/systemui/infinity/tangram/TangramMapData;->previewWidth:F

    sget-object v3, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->VERTEX_DATA:[[F

    iput-object v3, v0, Lcom/android/systemui/infinity/tangram/TangramMapData;->VERTEX_DATA:[[F

    const/4 v1, 0x0

    :goto_0
    sget-object v3, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->PSD_VERTEX_DATA:[[F

    array-length v3, v3

    if-ge v1, v3, :cond_5

    const/4 v2, 0x0

    :goto_1
    sget-object v3, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->PSD_VERTEX_DATA:[[F

    aget-object v3, v3, v1

    array-length v3, v3

    if-ge v2, v3, :cond_4

    rem-int/lit8 v3, v2, 0x4

    if-nez v3, :cond_0

    iget-object v3, v0, Lcom/android/systemui/infinity/tangram/TangramMapData;->VERTEX_DATA:[[F

    aget-object v3, v3, v1

    sget-object v4, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->PSD_VERTEX_DATA:[[F

    aget-object v4, v4, v1

    aget v4, v4, v2

    div-float/2addr v4, v7

    sub-float/2addr v4, v6

    aput v4, v3, v2

    :cond_0
    rem-int/lit8 v3, v2, 0x4

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    iget-object v3, v0, Lcom/android/systemui/infinity/tangram/TangramMapData;->VERTEX_DATA:[[F

    aget-object v3, v3, v1

    sget-object v4, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->PSD_VERTEX_DATA:[[F

    aget-object v4, v4, v1

    aget v4, v4, v2

    div-float/2addr v4, v9

    sub-float v4, v6, v4

    const v5, 0x40038e39

    mul-float/2addr v4, v5

    aput v4, v3, v2

    :cond_1
    rem-int/lit8 v3, v2, 0x4

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    iget-object v3, v0, Lcom/android/systemui/infinity/tangram/TangramMapData;->VERTEX_DATA:[[F

    aget-object v3, v3, v1

    sget-object v4, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->PSD_VERTEX_DATA:[[F

    aget-object v4, v4, v1

    aget v4, v4, v2

    div-float/2addr v4, v10

    aput v4, v3, v2

    :cond_2
    rem-int/lit8 v3, v2, 0x4

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    iget-object v3, v0, Lcom/android/systemui/infinity/tangram/TangramMapData;->VERTEX_DATA:[[F

    aget-object v3, v3, v1

    sget-object v4, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->PSD_VERTEX_DATA:[[F

    aget-object v4, v4, v1

    aget v4, v4, v2

    div-float/2addr v4, v8

    aput v4, v3, v2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    const/4 v3, 0x3

    iput v3, v0, Lcom/android/systemui/infinity/tangram/TangramMapData;->objectType:I

    return-object v0
.end method
