.class public abstract Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;
.super Lcom/qualcomm/qcrilhook/BaseQmiTypes$QmiBase;
.source "BaseQmiTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcrilhook/BaseQmiTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BaseQmiItemType"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/BaseQmiTypes$QmiBase;-><init>()V

    return-void
.end method

.method public static parseTlv([B)[B
    .locals 5

    invoke-static {p0}, Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;->createByteBuffer([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public abstract getSize()I
.end method

.method public abstract toByteArray()[B
.end method

.method public toTlv(S)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;->getSize()I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    invoke-static {v2}, Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    :try_start_0
    invoke-static {p1}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->parseByte(S)B

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;->getSize()I

    move-result v2

    invoke-static {v2}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->parseShort(I)S

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v1

    new-instance v2, Ljava/security/InvalidParameterException;

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
