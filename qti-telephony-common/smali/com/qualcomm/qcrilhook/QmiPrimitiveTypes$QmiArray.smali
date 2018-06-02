.class public Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;
.super Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;
.source "QmiPrimitiveTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QmiArray"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;",
        ">",
        "Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;"
    }
.end annotation


# instance fields
.field private mArrayLength:S

.field private mNumOfElements:S

.field private mVal:[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private vLenSize:S


# direct methods
.method public constructor <init>([Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;Ljava/lang/Class;S)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;",
            "Ljava/lang/Class",
            "<TT;>;S)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;-><init>()V

    const/4 v1, 0x0

    iput-short v1, p0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;->mNumOfElements:S

    :try_start_0
    iput-object p1, p0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;->mVal:[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    array-length v1, p1

    int-to-short v1, v1

    iput-short v1, p0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;->mArrayLength:S

    iput-short p3, p0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;->vLenSize:S
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

.method public constructor <init>([Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;Ljava/lang/Class;SS)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;",
            "Ljava/lang/Class",
            "<TT;>;SS)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;-><init>()V

    const/4 v1, 0x0

    iput-short v1, p0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;->mNumOfElements:S

    :try_start_0
    iput-object p1, p0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;->mVal:[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    array-length v1, p1

    int-to-short v1, v1

    iput-short v1, p0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;->mArrayLength:S

    iput-short p3, p0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;->vLenSize:S

    iput-short p4, p0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;->mNumOfElements:S
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

.method public constructor <init>([Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;SLjava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;S",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;-><init>()V

    const/4 v1, 0x0

    iput-short v1, p0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;->mNumOfElements:S

    :try_start_0
    iput-object p1, p0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;->mVal:[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    array-length v1, p1

    int-to-short v1, v1

    iput-short v1, p0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;->mArrayLength:S

    const/16 v1, 0xff

    if-le p2, v1, :cond_0

    const/4 v1, 0x2

    iput-short v1, p0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;->vLenSize:S

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x1

    iput-short v1, p0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;->vLenSize:S
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/InvalidParameterException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getSize()I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-short v2, p0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;->mArrayLength:S

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;->mVal:[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;->getSize()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-short v2, p0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;->vLenSize:S

    add-int/2addr v2, v0

    return v2
.end method

.method public toByteArray()[B
    .locals 5

    invoke-virtual {p0}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;->getSize()I

    move-result v3

    invoke-static {v3}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v2, 0x0

    iget-short v3, p0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;->mNumOfElements:S

    if-eqz v3, :cond_0

    iget-short v3, p0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;->mArrayLength:S

    iget-short v4, p0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;->mNumOfElements:S

    div-int/2addr v3, v4

    int-to-short v2, v3

    :goto_0
    iget-short v3, p0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;->vLenSize:S

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    :goto_1
    const/4 v1, 0x0

    :goto_2
    iget-short v3, p0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;->mArrayLength:S

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;->mVal:[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_0
    iget-short v2, p0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;->mArrayLength:S

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->parseByte(S)B

    move-result v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    return-object v3
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_0
    iget-short v2, p0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;->mArrayLength:S

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;->mVal:[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
