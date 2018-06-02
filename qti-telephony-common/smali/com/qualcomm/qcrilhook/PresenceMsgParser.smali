.class public Lcom/qualcomm/qcrilhook/PresenceMsgParser;
.super Ljava/lang/Object;
.source "PresenceMsgParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;,
        Lcom/qualcomm/qcrilhook/PresenceMsgParser$ListHeaderInfo;,
        Lcom/qualcomm/qcrilhook/PresenceMsgParser$MediaCapabilities;,
        Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;
    }
.end annotation


# static fields
.field private static LOG_TAG:Ljava/lang/String;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/qualcomm/qcrilhook/PresenceMsgParser;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "PresenceMsgParser"

    sput-object v0, Lcom/qualcomm/qcrilhook/PresenceMsgParser;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static parseEnablerState(Ljava/nio/ByteBuffer;)I
    .locals 6

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    invoke-static {v3}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(B)S

    move-result v3

    int-to-byte v1, v3

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    invoke-static {v3}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(S)I

    move-result v3

    int-to-short v0, v3

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    invoke-static {v3}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(I)J

    move-result-wide v4

    long-to-int v2, v4

    return v2
.end method

.method static parseEnablerStateInd(Ljava/nio/ByteBuffer;)I
    .locals 6

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    invoke-static {v3}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(B)S

    move-result v3

    int-to-byte v1, v3

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    invoke-static {v3}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(S)I

    move-result v3

    int-to-short v0, v3

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    invoke-static {v3}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(I)J

    move-result-wide v4

    long-to-int v2, v4

    return v2
.end method

.method static parseGetEventReport(Ljava/nio/ByteBuffer;)I
    .locals 4

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    invoke-static {v3}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(B)S

    move-result v3

    int-to-byte v1, v3

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    invoke-static {v3}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(S)I

    move-result v3

    int-to-short v0, v3

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    invoke-static {v3}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(B)S

    move-result v3

    int-to-byte v2, v3

    return v2
.end method

.method static parseGetNotifyReq(Ljava/nio/ByteBuffer;)I
    .locals 4

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    invoke-static {v3}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(B)S

    move-result v3

    int-to-byte v1, v3

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    invoke-static {v3}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(S)I

    move-result v3

    int-to-short v0, v3

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    invoke-static {v3}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(B)S

    move-result v3

    int-to-byte v2, v3

    return v2
.end method

.method static parseNotifyUpdate(Ljava/nio/ByteBuffer;II)Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;",
            ">;"
        }
    .end annotation

    const/4 v12, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x10

    const/4 v2, 0x0

    sget-object v9, Lcom/qualcomm/qcrilhook/PresenceMsgParser;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "notifyUpdate(), Thread="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-lez p1, :cond_1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v9

    invoke-static {v9}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(B)S

    move-result v8

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v9

    invoke-static {v9}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(S)I

    move-result v5

    sparse-switch v8, :sswitch_data_0

    :goto_1
    add-int/lit8 v9, v5, 0x3

    sub-int/2addr p1, v9

    goto :goto_0

    :sswitch_0
    new-array v3, v5, [B

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v5, :cond_0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v9

    aput-byte v9, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_0
    aget-byte v9, v3, v12

    invoke-static {v9}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(B)S

    move-result v2

    sget-object v9, Lcom/qualcomm/qcrilhook/PresenceMsgParser;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "callId = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :sswitch_1
    sget-object v9, Lcom/qualcomm/qcrilhook/PresenceMsgParser;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v10, "NOTIFY_DETAIL_TYPE"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;

    invoke-direct {v7, p0, v5}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;-><init>(Ljava/nio/ByteBuffer;I)V

    invoke-static {v7}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->-wrap0(Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;)Ljava/util/ArrayList;

    move-result-object v6

    sget-object v9, Lcom/qualcomm/qcrilhook/PresenceMsgParser;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "parsed contact info "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :cond_1
    const/4 v9, 0x0

    return-object v9

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x10 -> :sswitch_0
    .end sparse-switch
.end method

.method static parseNotifyUpdateXML(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    invoke-static {v4}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(B)S

    move-result v4

    int-to-byte v3, v4

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    invoke-static {v4}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(S)I

    move-result v4

    int-to-short v2, v4

    new-array v0, v2, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    aput-byte v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    return-object v4
.end method

.method static parsePublishTrigger(Ljava/nio/ByteBuffer;)I
    .locals 6

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    invoke-static {v3}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(B)S

    move-result v3

    int-to-byte v1, v3

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    invoke-static {v3}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(S)I

    move-result v3

    int-to-short v0, v3

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    invoke-static {v3}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(I)J

    move-result-wide v4

    long-to-int v2, v4

    return v2
.end method
