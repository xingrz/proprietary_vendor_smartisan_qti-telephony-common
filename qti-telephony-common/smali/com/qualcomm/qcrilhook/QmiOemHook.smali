.class public Lcom/qualcomm/qcrilhook/QmiOemHook;
.super Landroid/os/Handler;
.source "QmiOemHook.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qcrilhook/QmiOemHook$1;
    }
.end annotation


# static fields
.field private static final DEFAULT_PHONE:I = 0x0

.field private static LOG_TAG:Ljava/lang/String; = null

.field private static final QMI_OEM_HOOK_UNSOL:I = 0x0

.field private static final RESERVED_SIZE:I = 0x8

.field private static final enableVLog:Z = true

.field private static mInstance:Lcom/qualcomm/qcrilhook/QmiOemHook;

.field private static mIsServiceConnected:Z

.field private static mRefCount:I

.field private static sReadyCbRegistrantList:Landroid/os/RegistrantList;

.field public static serviceRegistrantsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Short;",
            "Landroid/os/Registrant;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mQcRilOemHook:Lcom/qualcomm/qcrilhook/QcRilHook;

.field private mQcrilHookCb:Lcom/qualcomm/qcrilhook/QcRilHookCallback;

.field mResponseResult:I

.field public respByteBuf:Ljava/nio/ByteBuffer;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/qualcomm/qcrilhook/QmiOemHook;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1()Z
    .locals 1

    sget-boolean v0, Lcom/qualcomm/qcrilhook/QmiOemHook;->mIsServiceConnected:Z

    return v0
.end method

.method static synthetic -get2()Landroid/os/RegistrantList;
    .locals 1

    sget-object v0, Lcom/qualcomm/qcrilhook/QmiOemHook;->sReadyCbRegistrantList:Landroid/os/RegistrantList;

    return-object v0
.end method

.method static synthetic -set0(Z)Z
    .locals 0

    sput-boolean p0, Lcom/qualcomm/qcrilhook/QmiOemHook;->mIsServiceConnected:Z

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-string/jumbo v0, "QMI_OEMHOOK"

    sput-object v0, Lcom/qualcomm/qcrilhook/QmiOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/qualcomm/qcrilhook/QmiOemHook;->serviceRegistrantsMap:Ljava/util/HashMap;

    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    sput-object v0, Lcom/qualcomm/qcrilhook/QmiOemHook;->sReadyCbRegistrantList:Landroid/os/RegistrantList;

    sput v1, Lcom/qualcomm/qcrilhook/QmiOemHook;->mRefCount:I

    sput-boolean v1, Lcom/qualcomm/qcrilhook/QmiOemHook;->mIsServiceConnected:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput v2, p0, Lcom/qualcomm/qcrilhook/QmiOemHook;->mResponseResult:I

    new-instance v0, Lcom/qualcomm/qcrilhook/QmiOemHook$1;

    invoke-direct {v0, p0}, Lcom/qualcomm/qcrilhook/QmiOemHook$1;-><init>(Lcom/qualcomm/qcrilhook/QmiOemHook;)V

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/QmiOemHook;->mQcrilHookCb:Lcom/qualcomm/qcrilhook/QcRilHookCallback;

    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook;

    iget-object v1, p0, Lcom/qualcomm/qcrilhook/QmiOemHook;->mQcrilHookCb:Lcom/qualcomm/qcrilhook/QcRilHookCallback;

    invoke-direct {v0, p1, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;-><init>(Landroid/content/Context;Lcom/qualcomm/qcrilhook/QcRilHookCallback;)V

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/QmiOemHook;->mQcRilOemHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    const/4 v0, 0x0

    invoke-static {p0, v2, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->register(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput v2, p0, Lcom/qualcomm/qcrilhook/QmiOemHook;->mResponseResult:I

    new-instance v0, Lcom/qualcomm/qcrilhook/QmiOemHook$1;

    invoke-direct {v0, p0}, Lcom/qualcomm/qcrilhook/QmiOemHook$1;-><init>(Lcom/qualcomm/qcrilhook/QmiOemHook;)V

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/QmiOemHook;->mQcrilHookCb:Lcom/qualcomm/qcrilhook/QcRilHookCallback;

    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook;

    iget-object v1, p0, Lcom/qualcomm/qcrilhook/QmiOemHook;->mQcrilHookCb:Lcom/qualcomm/qcrilhook/QcRilHookCallback;

    invoke-direct {v0, p1, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;-><init>(Landroid/content/Context;Lcom/qualcomm/qcrilhook/QcRilHookCallback;)V

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/QmiOemHook;->mQcRilOemHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    const/4 v0, 0x0

    invoke-static {p0, v2, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->register(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method private createPayload(SS[S[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;)[B
    .locals 7

    const/4 v6, 0x0

    const/4 v2, 0x0

    if-eqz p4, :cond_0

    if-nez p3, :cond_2

    :cond_0
    sget-object v3, Lcom/qualcomm/qcrilhook/QmiOemHook;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "This message has no payload"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    add-int/lit8 v3, v2, 0xc

    invoke-static {v3}, Lcom/qualcomm/qcrilhook/BaseQmiTypes$QmiBase;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    sget-object v3, Lcom/qualcomm/qcrilhook/QmiOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "createPayload: serviceId= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " messageId= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p4, :cond_3

    if-eqz p3, :cond_3

    aget-object v3, p4, v6

    if-eqz v3, :cond_3

    const/4 v1, 0x0

    :goto_0
    array-length v3, p4

    if-ge v1, v3, :cond_3

    aget-object v3, p4, v1

    invoke-virtual {v3}, Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qcrilhook/QmiOemHook;->vLog(Ljava/lang/String;)V

    aget-object v3, p4, v1

    aget-short v4, p3, v1

    invoke-virtual {v3, v4}, Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;->toTlv(S)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    sget-object v3, Lcom/qualcomm/qcrilhook/QmiOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Intermediate buf in QmiOemHook sendQmiMessage Sync or Async = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p4, v1

    aget-short v6, p3, v1

    invoke-virtual {v5, v6}, Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;->toTlv(S)[B

    move-result-object v5

    invoke-static {v5}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    aget-object v3, p4, v6

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    :goto_1
    array-length v3, p4

    if-ge v1, v3, :cond_1

    aget-object v3, p4, v1

    invoke-virtual {v3}, Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;->getSize()I

    move-result v3

    add-int/lit8 v3, v3, 0x3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    sget-object v3, Lcom/qualcomm/qcrilhook/QmiOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Byte buf in QmiOemHook createPayload = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    return-object v3
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/qualcomm/qcrilhook/QmiOemHook;
    .locals 2

    const-class v1, Lcom/qualcomm/qcrilhook/QmiOemHook;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/qualcomm/qcrilhook/QmiOemHook;->mInstance:Lcom/qualcomm/qcrilhook/QmiOemHook;

    if-nez v0, :cond_0

    new-instance v0, Lcom/qualcomm/qcrilhook/QmiOemHook;

    invoke-direct {v0, p0}, Lcom/qualcomm/qcrilhook/QmiOemHook;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/qualcomm/qcrilhook/QmiOemHook;->mInstance:Lcom/qualcomm/qcrilhook/QmiOemHook;

    :cond_0
    sget v0, Lcom/qualcomm/qcrilhook/QmiOemHook;->mRefCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/qualcomm/qcrilhook/QmiOemHook;->mRefCount:I

    sget-object v0, Lcom/qualcomm/qcrilhook/QmiOemHook;->mInstance:Lcom/qualcomm/qcrilhook/QmiOemHook;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Landroid/os/Looper;)Lcom/qualcomm/qcrilhook/QmiOemHook;
    .locals 2

    const-class v1, Lcom/qualcomm/qcrilhook/QmiOemHook;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/qualcomm/qcrilhook/QmiOemHook;->mInstance:Lcom/qualcomm/qcrilhook/QmiOemHook;

    if-nez v0, :cond_0

    new-instance v0, Lcom/qualcomm/qcrilhook/QmiOemHook;

    invoke-direct {v0, p0, p1}, Lcom/qualcomm/qcrilhook/QmiOemHook;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    sput-object v0, Lcom/qualcomm/qcrilhook/QmiOemHook;->mInstance:Lcom/qualcomm/qcrilhook/QmiOemHook;

    :cond_0
    sget v0, Lcom/qualcomm/qcrilhook/QmiOemHook;->mRefCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/qualcomm/qcrilhook/QmiOemHook;->mRefCount:I

    sget-object v0, Lcom/qualcomm/qcrilhook/QmiOemHook;->mInstance:Lcom/qualcomm/qcrilhook/QmiOemHook;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static isValidQmiMessage(Lcom/qualcomm/qcrilhook/QmiOemHookConstants$ResponseType;I)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-object v2, Lcom/qualcomm/qcrilhook/QmiOemHookConstants$ResponseType;->IS_UNSOL:Lcom/qualcomm/qcrilhook/QmiOemHookConstants$ResponseType;

    if-ne p0, v2, :cond_1

    const v2, 0x8044c

    if-ne p1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const v2, 0x80064

    if-ne p1, v2, :cond_2

    :goto_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public static receive([BLandroid/os/Message;Lcom/qualcomm/qcrilhook/QmiOemHookConstants$ResponseType;I)Ljava/util/HashMap;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Landroid/os/Message;",
            "Lcom/qualcomm/qcrilhook/QmiOemHookConstants$ResponseType;",
            "I)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    sget-object v11, Lcom/qualcomm/qcrilhook/QmiOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "receive responseData = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {p0}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " message="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " responseType= "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    if-nez v6, :cond_0

    sget-object v11, Lcom/qualcomm/qcrilhook/QmiOemHook;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v12, "respByteBuf is null"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    return-object v11

    :cond_0
    sget-object v11, Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;->QMI_BYTE_ORDER:Ljava/nio/ByteOrder;

    invoke-virtual {v6, v11}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    sget-object v11, Lcom/qualcomm/qcrilhook/QmiOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "receive respByteBuf after ByteBuffer.wrap(payload) = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v13

    invoke-static {v13}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v11, Lcom/qualcomm/qcrilhook/QmiOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "receive respByteBuf = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    const/4 v9, -0x1

    const/4 v10, -0x1

    move-object/from16 v0, p2

    invoke-static {v0, v5}, Lcom/qualcomm/qcrilhook/QmiOemHook;->isValidQmiMessage(Lcom/qualcomm/qcrilhook/QmiOemHookConstants$ResponseType;I)Z

    move-result v11

    if-nez v11, :cond_1

    sget-object v11, Lcom/qualcomm/qcrilhook/QmiOemHook;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v12, "requestId NOT in QMI OemHook range, No further processing"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    return-object v11

    :cond_1
    if-lez v7, :cond_5

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v9

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    add-int/lit8 v8, v7, -0x4

    sget-object v11, Lcom/qualcomm/qcrilhook/QmiOemHookConstants$ResponseType;->IS_UNSOL:Lcom/qualcomm/qcrilhook/QmiOemHookConstants$ResponseType;

    move-object/from16 v0, p2

    if-eq v0, v11, :cond_2

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v11

    invoke-static {v11}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(S)I

    move-result v10

    add-int/lit8 v8, v8, -0x2

    :cond_2
    sget-object v11, Lcom/qualcomm/qcrilhook/QmiOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "receive requestId="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " responseSize="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " responseTlvSize="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " serviceId="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " messageId="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " successStatus = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " phoneId: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v11, 0x2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v11, 0x7

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v9}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v11, 0x8

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v11, 0x3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v11, 0x4

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v2, v11, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v11, 0x5

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v2, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v11, 0x6

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v2, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v11, 0x9

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v11, Lcom/qualcomm/qcrilhook/QmiOemHookConstants$ResponseType;->IS_UNSOL:Lcom/qualcomm/qcrilhook/QmiOemHookConstants$ResponseType;

    move-object/from16 v0, p2

    if-eq v0, v11, :cond_3

    sget-object v11, Lcom/qualcomm/qcrilhook/QmiOemHookConstants$ResponseType;->IS_ASYNC_RESPONSE:Lcom/qualcomm/qcrilhook/QmiOemHookConstants$ResponseType;

    move-object/from16 v0, p2

    if-ne v0, v11, :cond_6

    :cond_3
    new-instance v1, Landroid/os/AsyncResult;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v1, v11, v2, v12}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    sget-object v11, Lcom/qualcomm/qcrilhook/QmiOemHook;->serviceRegistrantsMap:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Registrant;

    if-eqz v4, :cond_4

    sget-object v11, Lcom/qualcomm/qcrilhook/QmiOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Notifying registrant for responseType = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    const/4 v11, 0x0

    return-object v11

    :cond_4
    sget-object v11, Lcom/qualcomm/qcrilhook/QmiOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Did not find the registered serviceId = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const/4 v11, 0x0

    return-object v11

    :cond_6
    return-object v2
.end method

.method public static registerOnReadyCb(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3

    sget-object v0, Lcom/qualcomm/qcrilhook/QmiOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Registering Service for OnQcRilHookReadyCb =  h = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/qualcomm/qcrilhook/QmiOemHook;->sReadyCbRegistrantList:Landroid/os/RegistrantList;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/qualcomm/qcrilhook/QmiOemHook;->sReadyCbRegistrantList:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/Registrant;

    invoke-direct {v2, p0, p1, p2}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static registerService(SLandroid/os/Handler;I)V
    .locals 5

    sget-object v0, Lcom/qualcomm/qcrilhook/QmiOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Registering Service Id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " h = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/qualcomm/qcrilhook/QmiOemHook;->serviceRegistrantsMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/qualcomm/qcrilhook/QmiOemHook;->serviceRegistrantsMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    new-instance v3, Landroid/os/Registrant;

    const/4 v4, 0x0

    invoke-direct {v3, p1, p2, v4}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static unregisterOnReadyCb(Landroid/os/Handler;)V
    .locals 2

    sget-object v1, Lcom/qualcomm/qcrilhook/QmiOemHook;->sReadyCbRegistrantList:Landroid/os/RegistrantList;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/qualcomm/qcrilhook/QmiOemHook;->sReadyCbRegistrantList:Landroid/os/RegistrantList;

    invoke-virtual {v0, p0}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static unregisterService(S)V
    .locals 3

    sget-object v1, Lcom/qualcomm/qcrilhook/QmiOemHook;->serviceRegistrantsMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/qualcomm/qcrilhook/QmiOemHook;->serviceRegistrantsMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private vLog(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/qualcomm/qcrilhook/QmiOemHook;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public declared-synchronized dispose()V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget v0, Lcom/qualcomm/qcrilhook/QmiOemHook;->mRefCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/qualcomm/qcrilhook/QmiOemHook;->mRefCount:I

    sget v0, Lcom/qualcomm/qcrilhook/QmiOemHook;->mRefCount:I

    if-nez v0, :cond_0

    const-string/jumbo v0, "dispose(): Unregistering QcRilHook and calling QcRilHook dispose"

    invoke-direct {p0, v0}, Lcom/qualcomm/qcrilhook/QmiOemHook;->vLog(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->unregister(Landroid/os/Handler;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/qualcomm/qcrilhook/QmiOemHook;->mIsServiceConnected:Z

    iget-object v0, p0, Lcom/qualcomm/qcrilhook/QmiOemHook;->mQcRilOemHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    invoke-virtual {v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->dispose()V

    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/qcrilhook/QmiOemHook;->mInstance:Lcom/qualcomm/qcrilhook/QmiOemHook;

    sget-object v0, Lcom/qualcomm/qcrilhook/QmiOemHook;->sReadyCbRegistrantList:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->removeCleared()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "dispose mRefCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/qualcomm/qcrilhook/QmiOemHook;->mRefCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qcrilhook/QmiOemHook;->vLog(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 2

    sget-object v0, Lcom/qualcomm/qcrilhook/QmiOemHook;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "is destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    sget-object v4, Lcom/qualcomm/qcrilhook/QmiOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Thread="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " received "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/qualcomm/qcrilhook/QmiOemHook;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "QMI_OEM_HOOK_UNSOL received"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [B

    iget v2, v1, Landroid/os/Message;->arg1:I

    sget-object v4, Lcom/qualcomm/qcrilhook/QmiOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "QMI_OEM_HOOK_UNSOL received phoneId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/qualcomm/qcrilhook/QmiOemHookConstants$ResponseType;->IS_UNSOL:Lcom/qualcomm/qcrilhook/QmiOemHookConstants$ResponseType;

    const/4 v5, 0x0

    invoke-static {v3, v5, v4, v2}, Lcom/qualcomm/qcrilhook/QmiOemHook;->receive([BLandroid/os/Message;Lcom/qualcomm/qcrilhook/QmiOemHookConstants$ResponseType;I)Ljava/util/HashMap;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public sendQmiMessage(I)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiNull;

    invoke-direct {v0}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiNull;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/qualcomm/qcrilhook/QmiOemHook;->sendQmiMessage(ISLcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;)[B

    move-result-object v0

    return-object v0
.end method

.method public sendQmiMessage(ISLcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-array v0, v1, [S

    aput-short p2, v0, v2

    new-array v1, v1, [Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    aput-object p3, v1, v2

    invoke-virtual {p0, p1, v0, v1}, Lcom/qualcomm/qcrilhook/QmiOemHook;->sendQmiMessage(I[S[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;)[B

    move-result-object v0

    return-object v0
.end method

.method public sendQmiMessage(I[S[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;)[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v5, p3

    if-ge v1, v5, :cond_0

    aget-object v5, p3, v1

    invoke-virtual {v5}, Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;->getSize()I

    move-result v5

    add-int/lit8 v5, v5, 0x3

    add-int/2addr v3, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v5, v3, 0x4

    invoke-static {v5}, Lcom/qualcomm/qcrilhook/BaseQmiTypes$QmiBase;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-static {v3}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->parseShort(I)S

    move-result v5

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    :goto_1
    array-length v5, p3

    if-ge v1, v5, :cond_1

    aget-object v5, p3, v1

    invoke-virtual {v5}, Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/qualcomm/qcrilhook/QmiOemHook;->vLog(Ljava/lang/String;)V

    aget-object v5, p3, v1

    aget-short v6, p2, v1

    invoke-virtual {v5, v6}, Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;->toTlv(S)[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lcom/qualcomm/qcrilhook/QmiOemHook;->mQcRilOemHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {v5, p1, v6}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v4

    iget-object v5, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_2

    sget-object v5, Lcom/qualcomm/qcrilhook/QmiOemHook;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v6, "sendQmiMessage() Failed : %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v8}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5}, Ljava/io/IOException;-><init>()V

    throw v5

    :cond_2
    iget-object v5, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [B

    return-object v5
.end method

.method public sendQmiMessageAsync(SSLandroid/os/Message;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/qualcomm/qcrilhook/QmiOemHook;->sendQmiMessageAsync(SSLandroid/os/Message;I)V

    return-void
.end method

.method public sendQmiMessageAsync(SSLandroid/os/Message;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, v3

    move-object v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/qualcomm/qcrilhook/QmiOemHook;->sendQmiMessageAsync(SS[S[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;Landroid/os/Message;I)V

    return-void
.end method

.method public sendQmiMessageAsync(SSSLcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;Landroid/os/Message;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/qualcomm/qcrilhook/QmiOemHook;->sendQmiMessageAsync(SSSLcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;Landroid/os/Message;I)V

    return-void
.end method

.method public sendQmiMessageAsync(SSSLcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;Landroid/os/Message;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v5, 0x0

    sget-object v0, Lcom/qualcomm/qcrilhook/QmiOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendQmiMessageAsync phoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-array v3, v4, [S

    aput-short p3, v3, v5

    new-array v4, v4, [Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    aput-object p4, v4, v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/qualcomm/qcrilhook/QmiOemHook;->sendQmiMessageAsync(SS[S[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;Landroid/os/Message;I)V

    return-void
.end method

.method public sendQmiMessageAsync(SS[S[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;Landroid/os/Message;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/qualcomm/qcrilhook/QmiOemHook;->sendQmiMessageAsync(SS[S[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;Landroid/os/Message;I)V

    return-void
.end method

.method public sendQmiMessageAsync(SS[S[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;Landroid/os/Message;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v1, Lcom/qualcomm/qcrilhook/QmiOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendQmiMessageAsync phoneId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/qualcomm/qcrilhook/OemHookCallback;

    invoke-direct {v0, p5}, Lcom/qualcomm/qcrilhook/OemHookCallback;-><init>(Landroid/os/Message;)V

    iget-object v1, p0, Lcom/qualcomm/qcrilhook/QmiOemHook;->mQcRilOemHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/qualcomm/qcrilhook/QmiOemHook;->createPayload(SS[S[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;)[B

    move-result-object v2

    const v3, 0x80064

    invoke-virtual {v1, v3, v2, v0, p6}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsgAsync(I[BLcom/qualcomm/qcrilhook/OemHookCallback;I)V

    return-void
.end method

.method public sendQmiMessageSync(SS)Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(SS)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/qualcomm/qcrilhook/QmiOemHook;->sendQmiMessageSync(SS[S[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public sendQmiMessageSync(SSSLcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;)Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(SSS",
            "Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/qualcomm/qcrilhook/QmiOemHook;->sendQmiMessageSync(SSSLcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;I)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public sendQmiMessageSync(SSSLcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;I)Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(SSS",
            "Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;",
            "I)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v0, 0x0

    new-array v3, v1, [S

    aput-short p3, v3, v0

    new-array v4, v1, [Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    aput-object p4, v4, v0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/qualcomm/qcrilhook/QmiOemHook;->sendQmiMessageSync(SS[S[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;I)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public sendQmiMessageSync(SS[S[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;)Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(SS[S[",
            "Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/qualcomm/qcrilhook/QmiOemHook;->sendQmiMessageSync(SS[S[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;I)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public sendQmiMessageSync(SS[S[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;I)Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(SS[S[",
            "Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;",
            "I)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/qualcomm/qcrilhook/QmiOemHook;->mQcRilOemHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/qualcomm/qcrilhook/QmiOemHook;->createPayload(SS[S[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;)[B

    move-result-object v3

    const v4, 0x80064

    invoke-virtual {v2, v4, v3, p5}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(I[BI)Landroid/os/AsyncResult;

    move-result-object v1

    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/qualcomm/qcrilhook/QmiOemHook;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "sendQmiMessage() Failed : %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    :cond_0
    iget-object v0, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [B

    sget-object v2, Lcom/qualcomm/qcrilhook/QmiOemHookConstants$ResponseType;->IS_SYNC_RESPONSE:Lcom/qualcomm/qcrilhook/QmiOemHookConstants$ResponseType;

    invoke-static {v0, v5, v2, p5}, Lcom/qualcomm/qcrilhook/QmiOemHook;->receive([BLandroid/os/Message;Lcom/qualcomm/qcrilhook/QmiOemHookConstants$ResponseType;I)Ljava/util/HashMap;

    move-result-object v2

    return-object v2
.end method
