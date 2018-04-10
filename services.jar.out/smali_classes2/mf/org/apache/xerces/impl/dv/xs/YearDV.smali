.class public Lmf/org/apache/xerces/impl/dv/xs/YearDV;
.super Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;
.source "YearDV.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;-><init>()V

    return-void
.end method


# virtual methods
.method protected dateToString(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iget v1, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->year:I

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/YearDV;->append(Ljava/lang/StringBuffer;II)V

    iget v1, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->utc:I

    int-to-char v1, v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/YearDV;->append(Ljava/lang/StringBuffer;II)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getActualValue(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/dv/xs/YearDV;->parse(Ljava/lang/String;)Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string/jumbo v3, "gYear"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string/jumbo v3, "cvc-datatype-valid.1.2.1"

    invoke-direct {v1, v3, v2}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
.end method

.method protected getXMLGregorianCalendar(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)Lmf/javax/xml/datatype/XMLGregorianCalendar;
    .locals 9

    const/high16 v2, -0x80000000

    sget-object v0, Lmf/org/apache/xerces/impl/dv/xs/YearDV;->datatypeFactory:Lmf/javax/xml/datatype/DatatypeFactory;

    iget v1, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->unNormYear:I

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->hasTimeZone()Z

    move-result v3

    if-nez v3, :cond_0

    move v8, v2

    :goto_0
    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    move v7, v2

    invoke-virtual/range {v0 .. v8}, Lmf/javax/xml/datatype/DatatypeFactory;->newXMLGregorianCalendar(IIIIIIII)Lmf/javax/xml/datatype/XMLGregorianCalendar;

    move-result-object v0

    return-object v0

    :cond_0
    iget v3, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->timezoneHr:I

    mul-int/lit8 v3, v3, 0x3c

    iget v4, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->timezoneMin:I

    add-int v8, v3, v4

    goto :goto_0
.end method

.method protected parse(Ljava/lang/String;)Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/xs/SchemaDateTimeException;
        }
    .end annotation

    const/4 v10, 0x4

    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x0

    new-instance v0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    invoke-direct {v0, p1, p0}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;-><init>(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v4, 0x0

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2d

    if-eq v5, v6, :cond_2

    :goto_0
    invoke-virtual {p0, p1, v4, v1}, Lmf/org/apache/xerces/impl/dv/xs/YearDV;->findUTCSign(Ljava/lang/String;II)I

    move-result v3

    if-eq v3, v8, :cond_3

    move v5, v3

    :goto_1
    sub-int v2, v5, v4

    if-lt v2, v10, :cond_4

    if-gt v2, v10, :cond_5

    :cond_0
    if-eq v3, v8, :cond_6

    invoke-virtual {p0, p1, v3}, Lmf/org/apache/xerces/impl/dv/xs/YearDV;->parseIntYear(Ljava/lang/String;I)I

    move-result v5

    iput v5, v0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->year:I

    invoke-virtual {p0, p1, v0, v3, v1}, Lmf/org/apache/xerces/impl/dv/xs/YearDV;->getTimeZone(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;II)V

    :goto_2
    iput v9, v0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->month:I

    iput v9, v0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/dv/xs/YearDV;->validateDateTime(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)V

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/dv/xs/YearDV;->saveUnnormalized(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)V

    iget v5, v0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->utc:I

    if-nez v5, :cond_7

    :cond_1
    :goto_3
    iput v7, v0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->position:I

    return-object v0

    :cond_2
    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    move v5, v1

    goto :goto_1

    :cond_4
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "Year must have \'CCYY\' format"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_5
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x30

    if-ne v5, v6, :cond_0

    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "Leading zeros are required if the year value would otherwise have fewer than four digits; otherwise they are forbidden"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_6
    invoke-virtual {p0, p1, v1}, Lmf/org/apache/xerces/impl/dv/xs/YearDV;->parseIntYear(Ljava/lang/String;I)I

    move-result v5

    iput v5, v0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->year:I

    goto :goto_2

    :cond_7
    iget v5, v0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->utc:I

    const/16 v6, 0x5a

    if-eq v5, v6, :cond_1

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/dv/xs/YearDV;->normalize(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)V

    goto :goto_3
.end method
