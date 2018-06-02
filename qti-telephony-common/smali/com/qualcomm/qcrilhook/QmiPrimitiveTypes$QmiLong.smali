.class public Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiLong;
.super Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;
.source "QmiPrimitiveTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QmiLong"
.end annotation


# instance fields
.field private mVal:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiLong;->mVal:J

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;-><init>()V

    iput-wide p1, p0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiLong;->mVal:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;-><init>()V

    :try_start_0
    invoke-static {p1}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiLong;->mVal:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/InvalidParameterException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>([B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;-><init>()V

    array-length v1, p1

    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    new-instance v1, Ljava/security/InvalidParameterException;

    invoke-direct {v1}, Ljava/security/InvalidParameterException;-><init>()V

    throw v1

    :cond_0
    invoke-static {p1}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiLong;->createByteBuffer([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiLong;->mVal:J

    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public toByteArray()[B
    .locals 4

    invoke-virtual {p0}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiLong;->getSize()I

    move-result v1

    invoke-static {v1}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiLong;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-wide v2, p0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiLong;->mVal:J

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "val="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiLong;->mVal:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringValue()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiLong;->getSize()I

    move-result v1

    invoke-static {v1}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiLong;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-wide v2, p0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiLong;->mVal:J

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    new-instance v1, Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
