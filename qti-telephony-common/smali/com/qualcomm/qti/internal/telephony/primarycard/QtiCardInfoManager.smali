.class public Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;
.super Landroid/os/Handler;
.source "QtiCardInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;,
        Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_ICC_CHANGED:I = 0x3

.field private static final EVENT_MANUAL_PROVISION_STATE_CHANGED:I = 0x1

.field private static final EVENT_READ_EF_HPLMNWACT_DONE:I = 0x2

.field private static final EVENT_SUBINFO_RECORD_ADDED:I = 0x4

.field private static final HPLMN_SEL_DATA_LEN:I = 0x5

.field private static final LOG_TAG:Ljava/lang/String; = "QtiPcCardInfoManager"

.field static final PHONE_COUNT:I

.field private static final UPDATE_CARDTYPE_COMPLETED:I = 0x2

.field private static final UPDATE_CARDTYPE_INIT:I = 0x0

.field private static final UPDATE_CARDTYPE_IN_PROGRESS:I = 0x1

.field private static final UPDATE_CARDTYPE_NOT_NEEDED:I = 0x3

.field private static final VDBG:Z

.field private static sInstance:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;


# instance fields
.field private mAllCardsInfoAvailableRegistrants:Landroid/os/RegistrantList;

.field private mCardInfos:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

.field private final mContext:Landroid/content/Context;

.field private mQtiCardProvisioner:Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->PHONE_COUNT:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mAllCardsInfoAvailableRegistrants:Landroid/os/RegistrantList;

    sget v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->PHONE_COUNT:I

    new-array v1, v1, [Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mCardInfos:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    :goto_0
    sget v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->PHONE_COUNT:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mCardInfos:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    new-instance v2, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    invoke-direct {v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;-><init>()V

    aput-object v2, v1, v0

    aget-object v1, p2, v0

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, p0, v4, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mQtiCardProvisioner:Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mQtiCardProvisioner:Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    invoke-virtual {v1, p0, v4, v3}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->registerForManualProvisionChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, p0, v2, v3}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->registerForAddSubscriptionRecord(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public static getInstance()Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;
    .locals 3

    const-class v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->sInstance:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "QtiCardInfoManager was not initialized!"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->sInstance:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method

.method static init(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;
    .locals 2

    const-class v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->sInstance:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;

    invoke-direct {v0, p0, p1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;-><init>(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->sInstance:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    sget-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->sInstance:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isUpdateCardInfoRequired(ILjava/lang/String;I)Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mCardInfos:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->-get1(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mCardInfos:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->-get2(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;)I

    move-result v0

    if-eq p3, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mCardInfos:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->-get3(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mCardInfos:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->-get0(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;)Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;

    move-result-object v0

    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;->UNKNOWN:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mCardInfos:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->-get3(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    :cond_2
    return v2
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "QtiPcCardInfoManager"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "QtiPcCardInfoManager"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "QtiPcCardInfoManager"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private notifyAllCardsInfoAvailableIfNeeded()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->PHONE_COUNT:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mCardInfos:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->isCardInfoAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mAllCardsInfoAvailableRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    return-void
.end method

.method private onEfLoaded(Landroid/os/AsyncResult;)V
    .locals 6

    iget-object v4, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string/jumbo v4, "onEfLoaded: Started"

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->logd(Ljava/lang/String;)V

    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "EF_HPLMNWACT read with exception = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->logd(Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mCardInfos:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    aget-object v4, v4, v3

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->-set3(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;I)I

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->notifyAllCardsInfoAvailableIfNeeded()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onEfLoaded("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") : mCardType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mCardInfos:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    aget-object v5, v5, v3

    invoke-static {v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->-get0(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;)Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->logd(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [B

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "result="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->logd(Ljava/lang/String;)V

    array-length v4, v0

    div-int/lit8 v2, v4, 0x5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "number of Records="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->logd(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_0

    mul-int/lit8 v4, v1, 0x5

    add-int/lit8 v4, v4, 0x3

    aget-byte v4, v0, v4

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mCardInfos:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    aget-object v4, v4, v3

    sget-object v5, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;->CARDTYPE_4G:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;

    invoke-static {v4, v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->-set0(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;)Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;

    goto/16 :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private onIccChanged(Landroid/os/AsyncResult;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->updateCardInfo(I)V

    :cond_0
    return-void
.end method

.method private onManualProvisionStateChanged(Landroid/os/AsyncResult;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->PHONE_COUNT:I

    if-ge v0, v1, :cond_2

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->updateCardInfo(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->updateCardInfo(I)V

    :cond_2
    return-void
.end method

.method private onSubscriptionInfoChanged(Landroid/os/AsyncResult;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->updateCardInfo(I)V

    :cond_0
    return-void
.end method

.method private updateCardInfo(I)V
    .locals 8

    const/4 v7, 0x1

    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mQtiCardProvisioner:Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    invoke-virtual {v5, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getCurrentUiccCardProvisioningStatus(I)I

    move-result v1

    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mQtiCardProvisioner:Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    invoke-virtual {v5, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getUiccIccId(I)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateCardInfo["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]: Start!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->logd(Ljava/lang/String;)V

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->isRadioInValidState()Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateCardInfo["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]: Radio is in Invalid State, IGNORE!!!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->loge(Ljava/lang/String;)V

    return-void

    :cond_0
    if-ne v7, v1, :cond_3

    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4, v7}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v5

    if-nez v5, :cond_2

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateCardInfo["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]: card not READY!! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->loge(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/SubscriptionController;->isActiveSubId(I)Z

    move-result v5

    if-nez v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateCardInfo["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]: subId not added yet!! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->loge(Ljava/lang/String;)V

    return-void

    :cond_3
    const/4 v5, -0x1

    if-ne v1, v5, :cond_5

    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mCardInfos:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    aget-object v5, v5, p1

    invoke-static {v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->-wrap0(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateCardInfo["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]: ProvStatus is Invalid, reset cardInfo!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->logd(Ljava/lang/String;)V

    :cond_4
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateCardInfo["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]: Exit! - UpdateCardTypeState: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mCardInfos:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    aget-object v6, v6, p1

    invoke-static {v6}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->-get3(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", mCardType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mCardInfos:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    aget-object v6, v6, p1

    invoke-static {v6}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->-get0(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;)Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->logi(Ljava/lang/String;)V

    return-void

    :cond_5
    invoke-direct {p0, p1, v0, v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->isUpdateCardInfoRequired(ILjava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, -0x2

    if-ne v1, v5, :cond_6

    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mCardInfos:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    aget-object v5, v5, p1

    invoke-static {v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->-wrap0(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;)V

    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mCardInfos:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    aget-object v5, v5, p1

    invoke-static {v5, v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->-set2(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;I)I

    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mCardInfos:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    aget-object v5, v5, p1

    const/4 v6, 0x3

    invoke-static {v5, v6}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->-set3(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;I)I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateCardInfo["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]: CardAbsent!!!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->logd(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->notifyAllCardsInfoAvailableIfNeeded()V

    goto :goto_0

    :cond_6
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mCardInfos:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    aget-object v5, v5, p1

    invoke-static {v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->-wrap0(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateCardInfo["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]: Query current state is required!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->logd(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mCardInfos:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    aget-object v5, v5, p1

    invoke-static {v5, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->-set1(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;Ljava/lang/String;)Ljava/lang/String;

    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mCardInfos:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    aget-object v5, v5, p1

    invoke-static {v5, v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->-set2(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;I)I

    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->updateUiccCardType(I)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mCardInfos:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    aget-object v5, v5, p1

    const/4 v6, 0x2

    invoke-static {v5, v6}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->-set3(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;I)I

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->notifyAllCardsInfoAvailableIfNeeded()V

    goto/16 :goto_0
.end method

.method private updateUiccCardType(I)Z
    .locals 8

    const/4 v7, 0x1

    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-eq v5, v6, :cond_1

    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mCardInfos:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    aget-object v5, v5, p1

    sget-object v6, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;->CARDTYPE_2G:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;

    invoke-static {v5, v6}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->-set0(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;)Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;

    :cond_0
    :goto_0
    return v7

    :cond_1
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->read4gFlag()Z

    move-result v3

    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mCardInfos:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    aget-object v5, v5, p1

    sget-object v6, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;->CARDTYPE_3G:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;

    invoke-static {v5, v6}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->-set0(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;)Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v2

    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mCardInfos:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    aget-object v5, v5, p1

    invoke-static {v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->-get2(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;)I

    move-result v5

    if-ne v5, v7, :cond_0

    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mCardInfos:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    aget-object v5, v5, p1

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->-set3(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;I)I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {p0, v6, v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    const/16 v6, 0x6f62

    invoke-virtual {v2, v6, v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x0

    return v5

    :catch_0
    move-exception v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "For slot "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " Exception while updateUiccCardType "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getCardInfo(I)Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;
    .locals 1

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mCardInfos:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string/jumbo v0, "on EVENT_MANUAL_PROVISION_STATE_CHANGED"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->logd(Ljava/lang/String;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->onManualProvisionStateChanged(Landroid/os/AsyncResult;)V

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "on EVENT_READ_EF_HPLMNWACT_DONE"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->logd(Ljava/lang/String;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->onEfLoaded(Landroid/os/AsyncResult;)V

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "on EVENT_ICC_CHANGED"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->logd(Ljava/lang/String;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->onIccChanged(Landroid/os/AsyncResult;)V

    goto :goto_0

    :pswitch_3
    const-string/jumbo v0, "on EVENT_SUBINFO_RECORD_ADDED"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->logd(Ljava/lang/String;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->onSubscriptionInfoChanged(Landroid/os/AsyncResult;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public registerAllCardsInfoAvailable(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 4

    new-instance v1, Landroid/os/Registrant;

    invoke-direct {v1, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mAllCardsInfoAvailableRegistrants:Landroid/os/RegistrantList;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mAllCardsInfoAvailableRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2, v1}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    const/4 v0, 0x0

    :goto_0
    sget v2, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->PHONE_COUNT:I

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mCardInfos:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->isCardInfoAvailable()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    monitor-exit v3

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Registrant;->notifyRegistrant()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public unregisterAllCardsInfoAvailable(Landroid/os/Handler;)V
    .locals 2

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mAllCardsInfoAvailableRegistrants:Landroid/os/RegistrantList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mAllCardsInfoAvailableRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
