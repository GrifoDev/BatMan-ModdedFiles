.class public abstract Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;
.super Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;
.source "AbstractDateTimeDV.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;
    }
.end annotation


# static fields
.field protected static final DAY:I = 0x1

.field private static final DEBUG:Z = false

.field protected static final MONTH:I = 0x1

.field protected static final YEAR:I = 0x7d0

.field protected static final datatypeFactory:Lmf/javax/xml/datatype/DatatypeFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmf/org/apache/xerces/jaxp/datatype/DatatypeFactoryImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/jaxp/datatype/DatatypeFactoryImpl;-><init>()V

    sput-object v0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->datatypeFactory:Lmf/javax/xml/datatype/DatatypeFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;-><init>()V

    return-void
.end method

.method private append3(Ljava/lang/StringBuffer;D)V
    .locals 12

    const/16 v11, 0x30

    const/16 v10, 0x2e

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    const/16 v8, 0x45

    invoke-virtual {v1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v8, -0x1

    if-eq v3, v8, :cond_0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpg-double v8, p2, v8

    if-gez v8, :cond_4

    add-int/lit8 v8, v3, 0x2

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {p0, v1, v8, v9}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->parseInt(Ljava/lang/String;II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    const-string/jumbo v8, "0."

    invoke-virtual {p1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v6, 0x1

    :goto_0
    if-ge v6, v5, :cond_1

    invoke-virtual {p1, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    :catch_0
    move-exception v2

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    :cond_1
    add-int/lit8 v4, v3, -0x1

    :goto_1
    if-lez v4, :cond_2

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v11, :cond_2

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_2
    if-gt v6, v4, :cond_8

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v10, :cond_3

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_4
    add-int/lit8 v8, v3, 0x1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {p0, v1, v8, v9}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->parseInt(Ljava/lang/String;II)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    add-int/lit8 v7, v5, 0x2

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v3, :cond_7

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v10, :cond_5

    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :catch_1
    move-exception v2

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    :cond_5
    if-eq v6, v7, :cond_6

    :goto_6
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5

    :cond_6
    invoke-virtual {p1, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_6

    :cond_7
    sub-int v6, v7, v3

    :goto_7
    if-lez v6, :cond_8

    invoke-virtual {p1, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v6, v6, -0x1

    goto :goto_7

    :cond_8
    return-void
.end method

.method private cloneDate(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)V
    .locals 2

    iget v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->year:I

    iput v0, p2, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->year:I

    iget v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->month:I

    iput v0, p2, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->month:I

    iget v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    iput v0, p2, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    iget v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->hour:I

    iput v0, p2, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->hour:I

    iget v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->minute:I

    iput v0, p2, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->minute:I

    iget-wide v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->second:D

    iput-wide v0, p2, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->second:D

    iget v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->utc:I

    iput v0, p2, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->utc:I

    iget v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->timezoneHr:I

    iput v0, p2, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->timezoneHr:I

    iget v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->timezoneMin:I

    iput v0, p2, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->timezoneMin:I

    return-void
.end method

.method private isLeapYear(I)Z
    .locals 2

    const/4 v1, 0x0

    rem-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_0

    :goto_0
    return v1

    :cond_0
    rem-int/lit8 v0, p1, 0x64

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    rem-int/lit16 v0, p1, 0x190

    if-eqz v0, :cond_1

    goto :goto_0
.end method


# virtual methods
.method protected final append(Ljava/lang/StringBuffer;D)V
    .locals 2

    const-wide/16 v0, 0x0

    cmpg-double v0, p2, v0

    if-gez v0, :cond_0

    const/16 v0, 0x2d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    neg-double p2, p2

    :cond_0
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    cmpg-double v0, p2, v0

    if-gez v0, :cond_1

    const/16 v0, 0x30

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->append2(Ljava/lang/StringBuffer;D)V

    return-void
.end method

.method protected final append(Ljava/lang/StringBuffer;II)V
    .locals 3

    const/16 v2, 0x30

    const/16 v1, 0xa

    const/high16 v0, -0x80000000

    if-eq p2, v0, :cond_0

    if-ltz p2, :cond_1

    :goto_0
    const/4 v0, 0x4

    if-eq p3, v0, :cond_2

    const/4 v0, 0x2

    if-eq p3, v0, :cond_6

    if-nez p2, :cond_8

    :goto_1
    return-void

    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    return-void

    :cond_1
    const/16 v0, 0x2d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    neg-int p2, p2

    goto :goto_0

    :cond_2
    if-lt p2, v1, :cond_3

    const/16 v0, 0x64

    if-lt p2, v0, :cond_4

    const/16 v0, 0x3e8

    if-lt p2, v0, :cond_5

    :goto_2
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_3
    const-string/jumbo v0, "000"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_4
    const-string/jumbo v0, "00"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_5
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_6
    if-lt p2, v1, :cond_7

    :goto_3
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_7
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_8
    int-to-char v0, p2

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method protected final append2(Ljava/lang/StringBuffer;D)V
    .locals 4

    double-to-int v0, p2

    int-to-double v2, v0

    cmpl-double v1, p2, v2

    if-nez v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->append3(Ljava/lang/StringBuffer;D)V

    goto :goto_0
.end method

.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    check-cast p2, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->compareDates(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Z)S

    move-result v0

    return v0
.end method

.method protected compareDates(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Z)S
    .locals 10

    const/4 v9, 0x1

    const/4 v8, -0x1

    const/16 v7, -0xe

    const/4 v6, 0x2

    const/4 v5, 0x0

    iget v3, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->utc:I

    iget v4, p2, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->utc:I

    if-eq v3, v4, :cond_0

    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p0}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;-><init>(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;)V

    iget v3, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->utc:I

    const/16 v4, 0x5a

    if-eq v3, v4, :cond_1

    iget v3, p2, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->utc:I

    const/16 v4, 0x5a

    if-eq v3, v4, :cond_4

    return v6

    :cond_0
    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->compareOrder(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)S

    move-result v3

    return v3

    :cond_1
    invoke-direct {p0, p2, v2}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->cloneDate(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)V

    const/16 v3, 0xe

    iput v3, v2, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->timezoneHr:I

    iput v5, v2, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->timezoneMin:I

    const/16 v3, 0x2b

    iput v3, v2, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->utc:I

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->normalize(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)V

    invoke-virtual {p0, p1, v2}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->compareOrder(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)S

    move-result v0

    if-eq v0, v8, :cond_2

    invoke-direct {p0, p2, v2}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->cloneDate(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)V

    iput v7, v2, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->timezoneHr:I

    iput v5, v2, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->timezoneMin:I

    const/16 v3, 0x2d

    iput v3, v2, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->utc:I

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->normalize(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)V

    invoke-virtual {p0, p1, v2}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->compareOrder(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)S

    move-result v1

    if-eq v1, v9, :cond_3

    return v6

    :cond_2
    return v0

    :cond_3
    return v1

    :cond_4
    invoke-direct {p0, p1, v2}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->cloneDate(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)V

    iput v7, v2, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->timezoneHr:I

    iput v5, v2, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->timezoneMin:I

    const/16 v3, 0x2d

    iput v3, v2, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->utc:I

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->normalize(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)V

    invoke-virtual {p0, v2, p2}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->compareOrder(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)S

    move-result v0

    if-eq v0, v8, :cond_5

    invoke-direct {p0, p1, v2}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->cloneDate(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)V

    const/16 v3, 0xe

    iput v3, v2, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->timezoneHr:I

    iput v5, v2, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->timezoneMin:I

    const/16 v3, 0x2b

    iput v3, v2, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->utc:I

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->normalize(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)V

    invoke-virtual {p0, v2, p2}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->compareOrder(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)S

    move-result v1

    if-eq v1, v9, :cond_6

    return v6

    :cond_5
    return v0

    :cond_6
    return v1
.end method

.method protected compareOrder(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)S
    .locals 6

    const/4 v5, -0x1

    const/4 v4, 0x1

    iget v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->position:I

    if-lt v0, v4, :cond_2

    :cond_0
    iget v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->position:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_4

    :cond_1
    iget v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    iget v1, p2, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    if-lt v0, v1, :cond_6

    iget v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    iget v1, p2, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    if-gt v0, v1, :cond_7

    iget v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->hour:I

    iget v1, p2, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->hour:I

    if-lt v0, v1, :cond_8

    iget v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->hour:I

    iget v1, p2, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->hour:I

    if-gt v0, v1, :cond_9

    iget v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->minute:I

    iget v1, p2, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->minute:I

    if-lt v0, v1, :cond_a

    iget v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->minute:I

    iget v1, p2, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->minute:I

    if-gt v0, v1, :cond_b

    iget-wide v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->second:D

    iget-wide v2, p2, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->second:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_c

    return v5

    :cond_2
    iget v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->year:I

    iget v1, p2, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->year:I

    if-lt v0, v1, :cond_3

    iget v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->year:I

    iget v1, p2, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->year:I

    if-le v0, v1, :cond_0

    return v4

    :cond_3
    return v5

    :cond_4
    iget v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->month:I

    iget v1, p2, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->month:I

    if-lt v0, v1, :cond_5

    iget v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->month:I

    iget v1, p2, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->month:I

    if-le v0, v1, :cond_1

    return v4

    :cond_5
    return v5

    :cond_6
    return v5

    :cond_7
    return v4

    :cond_8
    return v5

    :cond_9
    return v4

    :cond_a
    return v5

    :cond_b
    return v4

    :cond_c
    iget-wide v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->second:D

    iget-wide v2, p2, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->second:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_d

    return v4

    :cond_d
    iget v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->utc:I

    iget v1, p2, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->utc:I

    if-lt v0, v1, :cond_e

    iget v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->utc:I

    iget v1, p2, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->utc:I

    if-gt v0, v1, :cond_f

    const/4 v0, 0x0

    return v0

    :cond_e
    return v5

    :cond_f
    return v4
.end method

.method protected dateToString(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)Ljava/lang/String;
    .locals 6

    const/16 v5, 0x3a

    const/16 v4, 0x2d

    const/4 v3, 0x2

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iget v1, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->year:I

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->append(Ljava/lang/StringBuffer;II)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget v1, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->month:I

    invoke-virtual {p0, v0, v1, v3}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->append(Ljava/lang/StringBuffer;II)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget v1, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    invoke-virtual {p0, v0, v1, v3}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->append(Ljava/lang/StringBuffer;II)V

    const/16 v1, 0x54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget v1, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->hour:I

    invoke-virtual {p0, v0, v1, v3}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->append(Ljava/lang/StringBuffer;II)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget v1, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->minute:I

    invoke-virtual {p0, v0, v1, v3}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->append(Ljava/lang/StringBuffer;II)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-wide v2, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->second:D

    invoke-virtual {p0, v0, v2, v3}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->append(Ljava/lang/StringBuffer;D)V

    iget v1, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->utc:I

    int-to-char v1, v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->append(Ljava/lang/StringBuffer;II)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected fQuotient(II)I
    .locals 2

    int-to-float v0, p1

    int-to-float v1, p2

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method protected fQuotient(III)I
    .locals 2

    sub-int v0, p1, p2

    sub-int v1, p3, p2

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->fQuotient(II)I

    move-result v0

    return v0
.end method

.method protected findUTCSign(Ljava/lang/String;II)I
    .locals 3

    move v1, p2

    :goto_0
    if-ge v1, p3, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x5a

    if-ne v0, v2, :cond_1

    :cond_0
    return v1

    :cond_1
    const/16 v2, 0x2b

    if-eq v0, v2, :cond_0

    const/16 v2, 0x2d

    if-eq v0, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, -0x1

    return v2
.end method

.method public getAllowedFacets()S
    .locals 1

    const/16 v0, 0x9f8

    return v0
.end method

.method protected getDate(Ljava/lang/String;IILmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->getYearMonth(Ljava/lang/String;IILmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)I

    move-result p2

    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_0

    add-int/lit8 v1, v0, 0x2

    invoke-virtual {p0, p1, v0, v1}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->parseInt(Ljava/lang/String;II)I

    move-result v2

    iput v2, p4, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    return v1

    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "CCYY-MM must be followed by \'-\' sign"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected getDuration(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)Lmf/javax/xml/datatype/Duration;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final getFractionalSecondsAsBigDecimal(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)Ljava/math/BigDecimal;
    .locals 7

    const/4 v6, 0x0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-wide v4, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->unNormSecond:D

    invoke-direct {p0, v1, v4, v5}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->append3(Ljava/lang/StringBuffer;D)V

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v4

    if-eqz v4, :cond_1

    return-object v0

    :cond_0
    return-object v6

    :cond_1
    return-object v6
.end method

.method protected getTime(Ljava/lang/String;IILmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    const/16 v4, 0x3a

    add-int/lit8 v1, p2, 0x2

    invoke-virtual {p0, p1, p2, v1}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->parseInt(Ljava/lang/String;II)I

    move-result v3

    iput v3, p4, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->hour:I

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_0

    move p2, v2

    add-int/lit8 v1, v2, 0x2

    invoke-virtual {p0, p1, p2, v1}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->parseInt(Ljava/lang/String;II)I

    move-result v3

    iput v3, p4, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->minute:I

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_1

    invoke-virtual {p0, p1, p2, p3}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->findUTCSign(Ljava/lang/String;II)I

    move-result v0

    move p2, v2

    if-ltz v0, :cond_2

    move v1, v0

    :goto_0
    invoke-virtual {p0, p1, p2, v1}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->parseSecond(Ljava/lang/String;II)D

    move-result-wide v4

    iput-wide v4, p4, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->second:D

    if-gtz v0, :cond_3

    :goto_1
    return-void

    :cond_0
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Error in parsing time zone"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Error in parsing time zone"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    move v1, p3

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1, p4, v0, p3}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->getTimeZone(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;II)V

    goto :goto_1
.end method

.method protected getTimeZone(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    const/4 v5, 0x0

    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iput v3, p2, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->utc:I

    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5a

    if-eq v3, v4, :cond_0

    add-int/lit8 v3, p4, -0x6

    if-le p3, v3, :cond_2

    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Error in parsing time zone"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    add-int/lit8 p3, p3, 0x1

    if-gt p4, p3, :cond_1

    return-void

    :cond_1
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Error in parsing time zone"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_4

    const/4 v0, 0x1

    :goto_0
    add-int/lit8 p3, p3, 0x1

    add-int/lit8 v1, p3, 0x2

    invoke-virtual {p0, p1, p3, v1}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->parseInt(Ljava/lang/String;II)I

    move-result v3

    mul-int/2addr v3, v0

    iput v3, p2, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->timezoneHr:I

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3a

    if-ne v3, v4, :cond_5

    add-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, p1, v2, v3}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->parseInt(Ljava/lang/String;II)I

    move-result v3

    mul-int/2addr v3, v0

    iput v3, p2, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->timezoneMin:I

    add-int/lit8 v3, v2, 0x2

    if-ne v3, p4, :cond_6

    iget v3, p2, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->timezoneHr:I

    if-eqz v3, :cond_7

    :cond_3
    iput-boolean v5, p2, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->normalized:Z

    :goto_1
    return-void

    :cond_4
    const/4 v0, -0x1

    goto :goto_0

    :cond_5
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Error in parsing time zone"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_6
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Error in parsing time zone"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_7
    iget v3, p2, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->timezoneMin:I

    if-nez v3, :cond_3

    goto :goto_1
.end method

.method protected getXMLGregorianCalendar(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)Lmf/javax/xml/datatype/XMLGregorianCalendar;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getYearMonth(Ljava/lang/String;IILmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    const/4 v3, 0x4

    const/16 v4, 0x2d

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v4, :cond_1

    :goto_0
    invoke-virtual {p0, p1, p2, p3, v4}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->indexOf(Ljava/lang/String;IIC)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    sub-int v1, v0, p2

    if-lt v1, v3, :cond_3

    if-gt v1, v3, :cond_4

    :cond_0
    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->parseIntYear(Ljava/lang/String;I)I

    move-result v2

    iput v2, p4, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->year:I

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_5

    add-int/lit8 v0, v0, 0x1

    move p2, v0

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, p1, p2, v0}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->parseInt(Ljava/lang/String;II)I

    move-result v2

    iput v2, p4, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->month:I

    return v0

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Year separator is missing or misplaced"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Year must have \'CCYY\' format"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-ne v2, v3, :cond_0

    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Leading zeros are required if the year value would otherwise have fewer than four digits; otherwise they are forbidden"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "CCYY must be followed by \'-\' sign"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected indexOf(Ljava/lang/String;IIC)I
    .locals 2

    move v0, p2

    :goto_0
    if-ge v0, p3, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, p4, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public isIdentical(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5

    const/4 v4, 0x0

    instance-of v2, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    if-nez v2, :cond_1

    :cond_0
    return v4

    :cond_1
    instance-of v2, p2, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    if-eqz v2, :cond_0

    move-object v0, p1

    check-cast v0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    move-object v1, p2

    check-cast v1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    iget v2, v0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->timezoneHr:I

    iget v3, v1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->timezoneHr:I

    if-eq v2, v3, :cond_3

    :cond_2
    return v4

    :cond_3
    iget v2, v0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->timezoneMin:I

    iget v3, v1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->timezoneMin:I

    if-ne v2, v3, :cond_2

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method protected final isNextCharUTCSign(Ljava/lang/String;II)Z
    .locals 3

    const/4 v2, 0x0

    if-lt p2, p3, :cond_0

    return v2

    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    return v1

    :cond_2
    const/16 v1, 0x2b

    if-eq v0, v1, :cond_1

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_1

    return v2
.end method

.method protected maxDayInMonthFor(II)I
    .locals 1

    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    :cond_0
    const/16 v0, 0x1e

    return v0

    :cond_1
    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    const/16 v0, 0x9

    if-eq p2, v0, :cond_0

    const/16 v0, 0xb

    if-eq p2, v0, :cond_0

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/16 v0, 0x1f

    return v0

    :cond_2
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->isLeapYear(I)Z

    move-result v0

    if-nez v0, :cond_3

    const/16 v0, 0x1c

    return v0

    :cond_3
    const/16 v0, 0x1d

    return v0
.end method

.method protected mod(III)I
    .locals 1

    mul-int v0, p3, p2

    sub-int v0, p1, v0

    return v0
.end method

.method protected modulo(III)I
    .locals 3

    sub-int v0, p1, p2

    sub-int v1, p3, p2

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->fQuotient(II)I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->mod(III)I

    move-result v2

    add-int/2addr v2, p2

    return v2
.end method

.method protected normalize(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)V
    .locals 9

    const/16 v7, 0x18

    const/16 v8, 0xd

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v1, -0x1

    iget v3, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->minute:I

    iget v6, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->timezoneMin:I

    mul-int/lit8 v6, v6, -0x1

    add-int v2, v3, v6

    const/16 v3, 0x3c

    invoke-virtual {p0, v2, v3}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->fQuotient(II)I

    move-result v0

    const/16 v3, 0x3c

    invoke-virtual {p0, v2, v3, v0}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->mod(III)I

    move-result v3

    iput v3, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->minute:I

    iget v3, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->hour:I

    iget v6, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->timezoneHr:I

    mul-int/lit8 v6, v6, -0x1

    add-int/2addr v3, v6

    add-int v2, v3, v0

    invoke-virtual {p0, v2, v7}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->fQuotient(II)I

    move-result v0

    invoke-virtual {p0, v2, v7, v0}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->mod(III)I

    move-result v3

    iput v3, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->hour:I

    iget v3, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    add-int/2addr v3, v0

    iput v3, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    :cond_0
    :goto_0
    iget v3, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->year:I

    iget v6, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->month:I

    invoke-virtual {p0, v3, v6}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->maxDayInMonthFor(II)I

    move-result v2

    iget v3, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    if-lt v3, v5, :cond_1

    iget v3, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    if-gt v3, v2, :cond_3

    const/16 v3, 0x5a

    iput v3, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->utc:I

    return-void

    :cond_1
    iget v3, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    iget v6, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->year:I

    iget v7, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->month:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p0, v6, v7}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->maxDayInMonthFor(II)I

    move-result v6

    add-int/2addr v3, v6

    iput v3, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    const/4 v0, -0x1

    :goto_1
    iget v3, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->month:I

    add-int v2, v3, v0

    invoke-virtual {p0, v2, v5, v8}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->modulo(III)I

    move-result v3

    iput v3, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->month:I

    iget v3, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->year:I

    invoke-virtual {p0, v2, v5, v8}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->fQuotient(III)I

    move-result v6

    add-int/2addr v3, v6

    iput v3, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->year:I

    iget v3, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->year:I

    if-nez v3, :cond_0

    iget v3, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->timezoneHr:I

    if-gez v3, :cond_4

    :cond_2
    move v3, v5

    :goto_2
    iput v3, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->year:I

    goto :goto_0

    :cond_3
    iget v3, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    sub-int/2addr v3, v2

    iput v3, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    iget v3, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->timezoneMin:I

    if-ltz v3, :cond_2

    move v3, v4

    goto :goto_2
.end method

.method protected parseInt(Ljava/lang/String;II)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/16 v4, 0xa

    const/4 v5, 0x0

    const/4 v0, 0x0

    const v2, -0x7fffffff

    const v3, -0xccccccc

    move v1, p2

    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->getDigit(C)I

    move-result v0

    if-ltz v0, :cond_1

    if-lt v5, v3, :cond_2

    mul-int/lit8 v5, v5, 0xa

    const v6, -0x7fffffff

    add-int/2addr v6, v0

    if-lt v5, v6, :cond_3

    sub-int/2addr v5, v0

    add-int/lit8 v1, v1, 0x1

    if-lt v1, p3, :cond_0

    neg-int v6, v5

    return v6

    :cond_1
    new-instance v6, Ljava/lang/NumberFormatException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "\'"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\' has wrong format"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_2
    new-instance v6, Ljava/lang/NumberFormatException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "\'"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\' has wrong format"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_3
    new-instance v6, Ljava/lang/NumberFormatException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "\'"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\' has wrong format"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method protected parseIntYear(Ljava/lang/String;I)I
    .locals 11

    const/4 v8, 0x0

    const/16 v6, 0xa

    const/4 v7, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x2d

    if-eq v8, v9, :cond_0

    const v3, -0x7fffffff

    :goto_0
    div-int/lit8 v4, v3, 0xa

    move v2, v1

    :goto_1
    if-ge v2, p2, :cond_4

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->getDigit(C)I

    move-result v0

    if-ltz v0, :cond_1

    if-lt v7, v4, :cond_2

    mul-int/lit8 v7, v7, 0xa

    add-int v8, v3, v0

    if-lt v7, v8, :cond_3

    sub-int/2addr v7, v0

    move v2, v1

    goto :goto_1

    :cond_0
    const/4 v5, 0x1

    const/high16 v3, -0x80000000

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v8, Ljava/lang/NumberFormatException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "\'"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\' has wrong format"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_2
    new-instance v8, Ljava/lang/NumberFormatException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "\'"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\' has wrong format"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_3
    new-instance v8, Ljava/lang/NumberFormatException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "\'"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\' has wrong format"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_4
    if-nez v5, :cond_5

    neg-int v8, v7

    return v8

    :cond_5
    const/4 v8, 0x1

    if-gt v2, v8, :cond_6

    new-instance v8, Ljava/lang/NumberFormatException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "\'"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\' has wrong format"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_6
    return v7
.end method

.method protected parseSecond(Ljava/lang/String;II)D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/4 v1, -0x1

    move v2, p2

    :goto_0
    if-ge v2, p3, :cond_3

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x2e

    if-eq v0, v3, :cond_1

    const/16 v3, 0x39

    if-le v0, v3, :cond_2

    :cond_0
    new-instance v3, Ljava/lang/NumberFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\' has wrong format"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    move v1, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/16 v3, 0x30

    if-lt v0, v3, :cond_0

    goto :goto_1

    :cond_3
    const/4 v3, -0x1

    if-eq v1, v3, :cond_5

    add-int/lit8 v3, p2, 0x2

    if-eq v3, v1, :cond_7

    :cond_4
    new-instance v3, Ljava/lang/NumberFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\' has wrong format"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_5
    add-int/lit8 v3, p2, 0x2

    if-ne v3, p3, :cond_6

    :goto_2
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    return-wide v4

    :cond_6
    new-instance v3, Ljava/lang/NumberFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\' has wrong format"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_7
    add-int/lit8 v3, v1, 0x1

    if-eq v3, p3, :cond_4

    goto :goto_2
.end method

.method protected parseTimeZone(Ljava/lang/String;IILmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    if-lt p2, p3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->isNextCharUTCSign(Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, p4, p2, p3}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->getTimeZone(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;II)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Error in month parsing"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected resetDateObj(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)V
    .locals 3

    const/4 v2, 0x0

    iput v2, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->year:I

    iput v2, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->month:I

    iput v2, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    iput v2, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->hour:I

    iput v2, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->minute:I

    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->second:D

    iput v2, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->utc:I

    iput v2, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->timezoneHr:I

    iput v2, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->timezoneMin:I

    return-void
.end method

.method protected saveUnnormalized(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)V
    .locals 2

    iget v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->year:I

    iput v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->unNormYear:I

    iget v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->month:I

    iput v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->unNormMonth:I

    iget v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    iput v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->unNormDay:I

    iget v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->hour:I

    iput v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->unNormHour:I

    iget v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->minute:I

    iput v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->unNormMinute:I

    iget-wide v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->second:D

    iput-wide v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->unNormSecond:D

    return-void
.end method

.method protected validateDateTime(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)V
    .locals 9

    const/16 v5, 0xc

    const/16 v8, -0xe

    const-wide/16 v6, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->year:I

    if-eqz v2, :cond_1

    iget v2, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->month:I

    if-ge v2, v0, :cond_2

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "The month must have values 1 to 12"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "The year \"0000\" is an illegal year value"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v2, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->month:I

    if-gt v2, v5, :cond_0

    iget v2, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    iget v3, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->year:I

    iget v4, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->month:I

    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->maxDayInMonthFor(II)I

    move-result v3

    if-le v2, v3, :cond_4

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "The day must have values 1 to 31"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget v2, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    if-lt v2, v0, :cond_3

    iget v2, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->hour:I

    const/16 v3, 0x17

    if-le v2, v3, :cond_7

    :cond_5
    iget v2, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->hour:I

    const/16 v3, 0x18

    if-eq v2, v3, :cond_a

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Hour must have values 0-23, unless 24:00:00"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    iget v2, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->hour:I

    if-ltz v2, :cond_5

    :cond_8
    :goto_0
    iget v2, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->minute:I

    const/16 v3, 0x3b

    if-le v2, v3, :cond_b

    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Minute must have values 0-59"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iget v2, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->minute:I

    if-nez v2, :cond_6

    iget-wide v2, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->second:D

    cmpl-double v2, v2, v6

    if-nez v2, :cond_6

    iput v1, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->hour:I

    iget v2, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    iget v3, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->year:I

    iget v4, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->month:I

    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->maxDayInMonthFor(II)I

    move-result v3

    if-le v2, v3, :cond_8

    iput v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    iget v2, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->month:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->month:I

    if-le v2, v5, :cond_8

    iput v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->month:I

    iget v2, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->year:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->year:I

    if-nez v2, :cond_8

    iput v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->year:I

    goto :goto_0

    :cond_b
    iget v2, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->minute:I

    if-ltz v2, :cond_9

    iget-wide v2, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->second:D

    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_d

    :goto_1
    if-nez v0, :cond_c

    iget-wide v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->second:D

    cmpg-double v0, v0, v6

    if-gez v0, :cond_e

    :cond_c
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Second must have values 0-59"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    move v0, v1

    goto :goto_1

    :cond_e
    iget v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->timezoneHr:I

    const/16 v1, 0xe

    if-le v0, v1, :cond_10

    :cond_f
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Time zone should have range -14:00 to +14:00"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    iget v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->timezoneHr:I

    if-lt v0, v8, :cond_f

    iget v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->timezoneHr:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_13

    :cond_11
    iget v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->timezoneMin:I

    if-nez v0, :cond_14

    :goto_2
    iget v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->timezoneMin:I

    const/16 v1, 0x3b

    if-le v0, v1, :cond_15

    :cond_12
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Minute must have values 0-59"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    iget v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->timezoneHr:I

    if-eq v0, v8, :cond_11

    goto :goto_2

    :cond_14
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Time zone should have range -14:00 to +14:00"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    iget v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->timezoneMin:I

    const/16 v1, -0x3b

    if-lt v0, v1, :cond_12

    return-void
.end method
