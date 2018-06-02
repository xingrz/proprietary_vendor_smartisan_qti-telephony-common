.class Lcom/qualcomm/qcrilhook/QcRilHook$1;
.super Landroid/content/BroadcastReceiver;
.source "QcRilHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcrilhook/QcRilHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qcrilhook/QcRilHook;


# direct methods
.method constructor <init>(Lcom/qualcomm/qcrilhook/QcRilHook;)V
    .locals 0

    iput-object p1, p0, Lcom/qualcomm/qcrilhook/QcRilHook$1;->this$0:Lcom/qualcomm/qcrilhook/QcRilHook;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v12, "com.qualcomm.intent.action.ACTION_UNSOL_RESPONSE_OEM_HOOK_RAW"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    const/4 v11, 0x0

    sget-boolean v12, Lcom/qualcomm/qcrilhook/QcRilHook;->DBG:Z

    if-eqz v12, :cond_0

    const-string/jumbo v12, "QC_RIL_OEM_HOOK"

    const-string/jumbo v13, "Received Broadcast Intent ACTION_UNSOL_RESPONSE_OEM_HOOK_RAW"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v12, "payload"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v7

    const-string/jumbo v12, "INSTANCE_ID"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-eqz v7, :cond_4

    array-length v12, v7

    iget-object v13, p0, Lcom/qualcomm/qcrilhook/QcRilHook$1;->this$0:Lcom/qualcomm/qcrilhook/QcRilHook;

    invoke-static {v13}, Lcom/qualcomm/qcrilhook/QcRilHook;->-get0(Lcom/qualcomm/qcrilhook/QcRilHook;)I

    move-result v13

    if-ge v12, v13, :cond_1

    const-string/jumbo v12, "QC_RIL_OEM_HOOK"

    const-string/jumbo v13, "UNSOL_RESPONSE_OEM_HOOK_RAW incomplete header"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v12, "QC_RIL_OEM_HOOK"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Expected "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/qualcomm/qcrilhook/QcRilHook$1;->this$0:Lcom/qualcomm/qcrilhook/QcRilHook;

    invoke-static {v14}, Lcom/qualcomm/qcrilhook/QcRilHook;->-get0(Lcom/qualcomm/qcrilhook/QcRilHook;)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " bytes. Received "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    array-length v14, v7

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " bytes."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-static {v7}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v10

    const-string/jumbo v12, "QOEMHOOK"

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    new-array v5, v12, [B

    invoke-virtual {v10, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>([B)V

    sget-boolean v12, Lcom/qualcomm/qcrilhook/QcRilHook;->DBG:Z

    if-eqz v12, :cond_2

    const-string/jumbo v12, "QC_RIL_OEM_HOOK"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Oem ID in QCRILHOOK UNSOL RESP is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string/jumbo v12, "QOEMHOOK"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    const-string/jumbo v12, "QC_RIL_OEM_HOOK"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Incorrect Oem ID in QCRILHOOK UNSOL RESP. Expected QOEMHOOK. Received "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    array-length v12, v7

    const-string/jumbo v13, "QOEMHOOK"

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    sub-int v9, v12, v13

    if-lez v9, :cond_4

    new-array v8, v9, [B

    invoke-virtual {v10, v8}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    iput-object v8, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput v3, v4, Landroid/os/Message;->arg1:I

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct {v2, v12, v4, v13}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-static {v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->notifyRegistrants(Landroid/os/AsyncResult;)V

    :cond_4
    :goto_0
    return-void

    :cond_5
    const-string/jumbo v12, "QC_RIL_OEM_HOOK"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Received Unknown Intent: action = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
