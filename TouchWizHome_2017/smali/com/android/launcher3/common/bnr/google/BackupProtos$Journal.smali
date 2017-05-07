.class public final Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;
.super Lcom/google/protobuf/nano/MessageNano;
.source "BackupProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/common/bnr/google/BackupProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Journal"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;


# instance fields
.field public appVersion:I

.field public backupVersion:I

.field public bytes:J

.field public key:[Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;

.field public profile:Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;

.field public rows:I

.field public t:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->clear()Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;

    return-void
.end method

.method public static emptyArray()[Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;
    .locals 2

    sget-object v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->_emptyArray:[Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;

    if-nez v0, :cond_1

    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->_emptyArray:[Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;

    sput-object v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->_emptyArray:[Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->_emptyArray:[Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;

    invoke-direct {v0}, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    new-instance v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;

    invoke-direct {v0}, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->appVersion:I

    iput-wide v2, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->t:J

    iput-wide v2, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->bytes:J

    iput v0, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->rows:I

    invoke-static {}, Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;->emptyArray()[Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->key:[Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->backupVersion:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->profile:Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->cachedSize:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 9

    const/4 v8, 0x1

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v2

    iget v3, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->appVersion:I

    invoke-static {v8, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    const/4 v3, 0x2

    iget-wide v4, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->t:J

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v2, v3

    iget-wide v4, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->bytes:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    iget-wide v4, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->bytes:J

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v2, v3

    :cond_0
    iget v3, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->rows:I

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    iget v4, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->rows:I

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->key:[Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->key:[Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;

    array-length v3, v3

    if-lez v3, :cond_3

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->key:[Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;

    array-length v3, v3

    if-ge v1, v3, :cond_3

    iget-object v3, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->key:[Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;

    aget-object v0, v3, v1

    if-eqz v0, :cond_2

    const/4 v3, 0x5

    invoke-static {v3, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget v3, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->backupVersion:I

    if-eq v3, v8, :cond_4

    const/4 v3, 0x6

    iget v4, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->backupVersion:I

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    :cond_4
    iget-object v3, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->profile:Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;

    if-eqz v3, :cond_5

    const/4 v3, 0x7

    iget-object v4, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->profile:Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_5
    return v2
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    invoke-static {p1, v3}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->appVersion:I

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->t:J

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->bytes:J

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->rows:I

    goto :goto_0

    :sswitch_5
    const/16 v5, 0x2a

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->key:[Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;

    if-nez v5, :cond_2

    move v1, v4

    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;

    if-eqz v1, :cond_1

    iget-object v5, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->key:[Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    new-instance v5, Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;

    invoke-direct {v5}, Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    iget-object v5, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->key:[Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;

    array-length v1, v5

    goto :goto_1

    :cond_3
    new-instance v5, Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;

    invoke-direct {v5}, Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput-object v2, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->key:[Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->backupVersion:I

    goto :goto_0

    :sswitch_7
    iget-object v5, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->profile:Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;

    if-nez v5, :cond_4

    new-instance v5, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;

    invoke-direct {v5}, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;-><init>()V

    iput-object v5, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->profile:Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;

    :cond_4
    iget-object v5, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->profile:Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
        0x3a -> :sswitch_7
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x1

    iget v2, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->appVersion:I

    invoke-virtual {p1, v6, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    const/4 v2, 0x2

    iget-wide v4, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->t:J

    invoke-virtual {p1, v2, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    iget-wide v2, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->bytes:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    iget-wide v4, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->bytes:J

    invoke-virtual {p1, v2, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_0
    iget v2, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->rows:I

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    iget v3, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->rows:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->key:[Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->key:[Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;

    array-length v2, v2

    if-lez v2, :cond_3

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->key:[Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->key:[Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;

    aget-object v0, v2, v1

    if-eqz v0, :cond_2

    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->backupVersion:I

    if-eq v2, v6, :cond_4

    const/4 v2, 0x6

    iget v3, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->backupVersion:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_4
    iget-object v2, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->profile:Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;

    if-eqz v2, :cond_5

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->profile:Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_5
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
