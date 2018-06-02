.class public Lcom/qualcomm/qcrilhook/EmbmsOemHook$TimeResponse;
.super Ljava/lang/Object;
.source "EmbmsOemHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcrilhook/EmbmsOemHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TimeResponse"
.end annotation


# instance fields
.field public additionalInfo:Z

.field public code:I

.field public dayLightSaving:Z

.field public leapSeconds:B

.field public localTimeOffset:J

.field public status:I

.field final synthetic this$0:Lcom/qualcomm/qcrilhook/EmbmsOemHook;

.field public timeMseconds:J

.field public traceId:I


# direct methods
.method public constructor <init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;IIJZJZB)V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TimeResponse;->this$0:Lcom/qualcomm/qcrilhook/EmbmsOemHook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TimeResponse;->code:I

    iput-wide v2, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TimeResponse;->timeMseconds:J

    iput-boolean v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TimeResponse;->additionalInfo:Z

    iput-boolean v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TimeResponse;->dayLightSaving:Z

    iput-byte v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TimeResponse;->leapSeconds:B

    iput v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TimeResponse;->traceId:I

    iput-wide v2, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TimeResponse;->localTimeOffset:J

    iput p3, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TimeResponse;->status:I

    iput p2, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TimeResponse;->traceId:I

    iput v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TimeResponse;->code:I

    iput-wide p4, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TimeResponse;->timeMseconds:J

    iput-wide p7, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TimeResponse;->localTimeOffset:J

    iput-boolean p6, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TimeResponse;->additionalInfo:Z

    iput-boolean p9, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TimeResponse;->dayLightSaving:Z

    iput-byte p10, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TimeResponse;->leapSeconds:B

    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "TimeResponse: traceId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TimeResponse;->traceId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TimeResponse;->code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " timeMseconds = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TimeResponse;->timeMseconds:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "additionalInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TimeResponse;->additionalInfo:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " localTimeOffset = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TimeResponse;->localTimeOffset:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " dayLightSaving = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TimeResponse;->dayLightSaving:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " leapSeconds = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TimeResponse;->leapSeconds:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public constructor <init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;ILjava/nio/ByteBuffer;)V
    .locals 9

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    const/4 v4, 0x0

    iput-object p1, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TimeResponse;->this$0:Lcom/qualcomm/qcrilhook/EmbmsOemHook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v4, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TimeResponse;->code:I

    iput-wide v6, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TimeResponse;->timeMseconds:J

    iput-boolean v4, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TimeResponse;->additionalInfo:Z

    iput-boolean v4, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TimeResponse;->dayLightSaving:Z

    iput-byte v4, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TimeResponse;->leapSeconds:B

    iput v4, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TimeResponse;->traceId:I

    iput-wide v6, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TimeResponse;->localTimeOffset:J

    iput p2, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TimeResponse;->status:I

    :goto_0
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_1

    :try_start_0
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    invoke-static {v4}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(B)S

    move-result v3

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    invoke-static {v4}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(S)I

    move-result v2

    sparse-switch v3, :sswitch_data_0

    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->-get0()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "TimeResponse: Unexpected Type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->-get0()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "Invalid format of byte buffer received in TimeResponse"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_0
    :try_start_1
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TimeResponse;->timeMseconds:J

    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->-get0()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "timeMseconds = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TimeResponse;->timeMseconds:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_1
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TimeResponse;->additionalInfo:Z

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    if-ne v1, v8, :cond_0

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TimeResponse;->dayLightSaving:Z

    :cond_0
    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->-get0()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "dayLightSaving = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TimeResponse;->dayLightSaving:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_2
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TimeResponse;->additionalInfo:Z

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    iput-byte v4, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TimeResponse;->leapSeconds:B

    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->-get0()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "leapSeconds = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-byte v6, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TimeResponse;->leapSeconds:B

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_3
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TimeResponse;->additionalInfo:Z

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    int-to-long v4, v4

    iput-wide v4, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TimeResponse;->localTimeOffset:J

    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->-get0()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "localTimeOffset = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TimeResponse;->localTimeOffset:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_4
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TimeResponse;->traceId:I

    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->-get0()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "traceId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TimeResponse;->traceId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_5
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TimeResponse;->code:I

    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->-get0()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "code = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TimeResponse;->code:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_1
    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->-get0()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "additionalInfo = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TimeResponse;->additionalInfo:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_5
        0x3 -> :sswitch_0
        0x10 -> :sswitch_1
        0x11 -> :sswitch_2
        0x12 -> :sswitch_3
    .end sparse-switch
.end method
