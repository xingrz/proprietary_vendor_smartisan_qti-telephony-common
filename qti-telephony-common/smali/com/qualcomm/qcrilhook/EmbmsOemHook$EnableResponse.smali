.class public Lcom/qualcomm/qcrilhook/EmbmsOemHook$EnableResponse;
.super Ljava/lang/Object;
.source "EmbmsOemHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcrilhook/EmbmsOemHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EnableResponse"
.end annotation


# instance fields
.field public callId:B

.field public code:I

.field public ifIndex:I

.field public interfaceName:Ljava/lang/String;

.field public status:I

.field final synthetic this$0:Lcom/qualcomm/qcrilhook/EmbmsOemHook;

.field public traceId:I


# direct methods
.method public constructor <init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;ILjava/nio/ByteBuffer;)V
    .locals 7

    const/4 v5, 0x0

    iput-object p1, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$EnableResponse;->this$0:Lcom/qualcomm/qcrilhook/EmbmsOemHook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v5, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$EnableResponse;->code:I

    iput-byte v5, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$EnableResponse;->callId:B

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$EnableResponse;->interfaceName:Ljava/lang/String;

    iput v5, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$EnableResponse;->ifIndex:I

    iput p2, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$EnableResponse;->status:I

    :goto_0
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    invoke-static {v4}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(B)S

    move-result v3

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    invoke-static {v4}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(S)I

    move-result v1

    sparse-switch v3, :sswitch_data_0

    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->-get0()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "EnableResponse: Unexpected Type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_0
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    iput-byte v4, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$EnableResponse;->callId:B

    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->-get0()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "callid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-byte v6, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$EnableResponse;->callId:B

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_1
    new-array v2, v1, [B

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_0

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    aput-byte v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    new-instance v4, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;

    invoke-direct {v4, v2}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;-><init>([B)V

    invoke-virtual {v4}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;->toStringValue()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$EnableResponse;->interfaceName:Ljava/lang/String;

    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->-get0()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ifName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$EnableResponse;->interfaceName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_2
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$EnableResponse;->ifIndex:I

    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->-get0()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ifIndex = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$EnableResponse;->ifIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_3
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$EnableResponse;->code:I

    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->-get0()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "code = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$EnableResponse;->code:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_4
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$EnableResponse;->traceId:I

    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->-get0()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "traceId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$EnableResponse;->traceId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_3
        0x10 -> :sswitch_0
        0x11 -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method
