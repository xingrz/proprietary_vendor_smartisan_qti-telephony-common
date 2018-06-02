.class public Lcom/qualcomm/qcrilhook/TunerOemHook;
.super Ljava/lang/Object;
.source "TunerOemHook.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qcrilhook/TunerOemHook$ProvisionTable;,
        Lcom/qualcomm/qcrilhook/TunerOemHook$ScenarioRequest;,
        Lcom/qualcomm/qcrilhook/TunerOemHook$TunerSolResponse;,
        Lcom/qualcomm/qcrilhook/TunerOemHook$TunerUnsolIndication;
    }
.end annotation


# static fields
.field private static LOG_TAG:Ljava/lang/String; = null

.field public static final QCRILHOOK_TUNER_RFRPE_GET_PROVISIONED_TABLE_REVISION_REQ:S = 0x22s

.field public static final QCRILHOOK_TUNER_RFRPE_GET_RFM_SCENARIO_REQ:S = 0x21s

.field public static final QCRILHOOK_TUNER_RFRPE_SET_RFM_SCENARIO_REQ:S = 0x20s

.field private static final TLV_TYPE_COMMON_REQ_SCENARIO_ID:B = 0x1t

.field private static final TLV_TYPE_GET_PROVISION_TABLE_OPTIONAL_TAG1:B = 0x10t

.field private static final TLV_TYPE_GET_PROVISION_TABLE_OPTIONAL_TAG2:B = 0x11t

.field private static final TUNER_SERVICE_ID:S = 0x4s

.field private static mInstance:Lcom/qualcomm/qcrilhook/TunerOemHook;

.field private static mRefCount:I


# instance fields
.field mContext:Landroid/content/Context;

.field private mQmiOemHook:Lcom/qualcomm/qcrilhook/QmiOemHook;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/qualcomm/qcrilhook/TunerOemHook;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/qualcomm/qcrilhook/TunerOemHook;[I)Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;
    .locals 1

    invoke-direct {p0, p1}, Lcom/qualcomm/qcrilhook/TunerOemHook;->intArrayToQmiArray([I)Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "TunerOemHook"

    sput-object v0, Lcom/qualcomm/qcrilhook/TunerOemHook;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, Lcom/qualcomm/qcrilhook/TunerOemHook;->mRefCount:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qualcomm/qcrilhook/TunerOemHook;->mContext:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/qualcomm/qcrilhook/QmiOemHook;->getInstance(Landroid/content/Context;Landroid/os/Looper;)Lcom/qualcomm/qcrilhook/QmiOemHook;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/TunerOemHook;->mQmiOemHook:Lcom/qualcomm/qcrilhook/QmiOemHook;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;Landroid/os/Handler;)Lcom/qualcomm/qcrilhook/TunerOemHook;
    .locals 2

    sget-object v0, Lcom/qualcomm/qcrilhook/TunerOemHook;->mInstance:Lcom/qualcomm/qcrilhook/TunerOemHook;

    if-nez v0, :cond_0

    new-instance v0, Lcom/qualcomm/qcrilhook/TunerOemHook;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/qualcomm/qcrilhook/TunerOemHook;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    sput-object v0, Lcom/qualcomm/qcrilhook/TunerOemHook;->mInstance:Lcom/qualcomm/qcrilhook/TunerOemHook;

    :goto_0
    sget v0, Lcom/qualcomm/qcrilhook/TunerOemHook;->mRefCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/qualcomm/qcrilhook/TunerOemHook;->mRefCount:I

    sget-object v0, Lcom/qualcomm/qcrilhook/TunerOemHook;->mInstance:Lcom/qualcomm/qcrilhook/TunerOemHook;

    return-object v0

    :cond_0
    sget-object v0, Lcom/qualcomm/qcrilhook/TunerOemHook;->mInstance:Lcom/qualcomm/qcrilhook/TunerOemHook;

    iput-object p0, v0, Lcom/qualcomm/qcrilhook/TunerOemHook;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method private intArrayToQmiArray([I)Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray",
            "<",
            "Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiInteger;",
            ">;"
        }
    .end annotation

    array-length v2, p1

    new-array v1, v2, [Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiInteger;

    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    new-instance v2, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiInteger;

    aget v3, p1, v0

    int-to-long v4, v3

    invoke-direct {v2, v4, v5}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiInteger;-><init>(J)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;

    array-length v3, p1

    int-to-short v3, v3

    const-class v4, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiInteger;

    invoke-direct {v2, v1, v3, v4}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;-><init>([Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;SLjava/lang/Class;)V

    return-object v2
.end method

.method public static receive(Ljava/util/HashMap;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v9, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v9, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/16 v9, 0x8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Short;

    invoke-virtual {v9}, Ljava/lang/Short;->shortValue()S

    move-result v1

    const/4 v9, 0x5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/qualcomm/qcrilhook/QmiOemHookConstants$ResponseType;

    const/4 v9, 0x4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    const/4 v9, 0x6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    sget-object v9, Lcom/qualcomm/qcrilhook/TunerOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "receive respByteBuf = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v9, Lcom/qualcomm/qcrilhook/TunerOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, " responseSize="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " successStatus="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " messageId= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    packed-switch v1, :pswitch_data_0

    sget-object v9, Lcom/qualcomm/qcrilhook/TunerOemHook;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v10, "Invalid request"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v7

    :pswitch_0
    sget-object v9, Lcom/qualcomm/qcrilhook/TunerOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Response: QCRILHOOK_TUNER_RFRPE_SET_RFM_SCENARIO_REQ="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    sget-object v9, Lcom/qualcomm/qcrilhook/TunerOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Response: QCRILHOOK_TUNER_RFRPE_GET_RFM_SCENARIO_REQ="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_2
    sget-object v9, Lcom/qualcomm/qcrilhook/TunerOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Response: QCRILHOOK_TUNER_RFRPE_GET_PROVISIONED_TABLE_REVISION_REQ="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/qualcomm/qcrilhook/TunerOemHook$ProvisionTable;

    invoke-direct {v0, v4}, Lcom/qualcomm/qcrilhook/TunerOemHook$ProvisionTable;-><init>(Ljava/nio/ByteBuffer;)V

    iget v9, v0, Lcom/qualcomm/qcrilhook/TunerOemHook$ProvisionTable;->prv_tbl_rev:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public declared-synchronized dispose()V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget v0, Lcom/qualcomm/qcrilhook/TunerOemHook;->mRefCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/qualcomm/qcrilhook/TunerOemHook;->mRefCount:I

    sget v0, Lcom/qualcomm/qcrilhook/TunerOemHook;->mRefCount:I

    if-nez v0, :cond_0

    sget-object v0, Lcom/qualcomm/qcrilhook/TunerOemHook;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "dispose(): Unregistering service"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/qualcomm/qcrilhook/TunerOemHook;->mQmiOemHook:Lcom/qualcomm/qcrilhook/QmiOemHook;

    invoke-virtual {v0}, Lcom/qualcomm/qcrilhook/QmiOemHook;->dispose()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/TunerOemHook;->mQmiOemHook:Lcom/qualcomm/qcrilhook/QmiOemHook;

    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/qcrilhook/TunerOemHook;->mInstance:Lcom/qualcomm/qcrilhook/TunerOemHook;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget-object v0, Lcom/qualcomm/qcrilhook/TunerOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "dispose mRefCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/qualcomm/qcrilhook/TunerOemHook;->mRefCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerOnReadyCb(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1, p2, v0}, Lcom/qualcomm/qcrilhook/QmiOemHook;->registerOnReadyCb(Landroid/os/Handler;ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public tuner_get_provisioned_table_revision()I
    .locals 5

    :try_start_0
    iget-object v2, p0, Lcom/qualcomm/qcrilhook/TunerOemHook;->mQmiOemHook:Lcom/qualcomm/qcrilhook/QmiOemHook;

    const/4 v3, 0x4

    const/16 v4, 0x22

    invoke-virtual {v2, v3, v4}, Lcom/qualcomm/qcrilhook/QmiOemHook;->sendQmiMessageSync(SS)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/qcrilhook/TunerOemHook;->receive(Ljava/util/HashMap;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v2, -0x1

    return v2
.end method

.method public tuner_send_proximity_updates([I)Ljava/lang/Integer;
    .locals 8

    new-instance v2, Lcom/qualcomm/qcrilhook/TunerOemHook$ScenarioRequest;

    invoke-direct {v2, p0, p1}, Lcom/qualcomm/qcrilhook/TunerOemHook$ScenarioRequest;-><init>(Lcom/qualcomm/qcrilhook/TunerOemHook;[I)V

    :try_start_0
    iget-object v3, p0, Lcom/qualcomm/qcrilhook/TunerOemHook;->mQmiOemHook:Lcom/qualcomm/qcrilhook/QmiOemHook;

    invoke-virtual {v2}, Lcom/qualcomm/qcrilhook/TunerOemHook$ScenarioRequest;->getTypes()[S

    move-result-object v4

    invoke-virtual {v2}, Lcom/qualcomm/qcrilhook/TunerOemHook$ScenarioRequest;->getItems()[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    move-result-object v5

    const/4 v6, 0x4

    const/16 v7, 0x20

    invoke-virtual {v3, v6, v7, v4, v5}, Lcom/qualcomm/qcrilhook/QmiOemHook;->sendQmiMessageSync(SS[S[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/qcrilhook/TunerOemHook;->receive(Ljava/util/HashMap;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v3, 0x0

    return-object v3
.end method

.method public declared-synchronized unregisterOnReadyCb(Landroid/os/Handler;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/qualcomm/qcrilhook/QmiOemHook;->unregisterOnReadyCb(Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
