.class public Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;
.super Lcom/android/internal/telephony/GsmCdmaPhone;
.source "QtiGsmCdmaPhone.java"


# static fields
.field private static final EVENT_OEM_HOOK_SERVICE_READY:I = 0x2d

.field private static final LOG_TAG:Ljava/lang/String; = "QtiGsmCdmaPhone"

.field private static final PROP_EVENT_START:I = 0x2c

.field private static READY:I

.field private static final mNumPhones:I


# instance fields
.field mCdmaNVSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

.field mCdmaNVSubscriptionSource:I

.field private mIsPhoneReadyPending:Z

.field private mIsPhoneReadySent:Z

.field private mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput v0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->READY:I

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mNumPhones:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;IILcom/android/internal/telephony/TelephonyComponentFactory;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p6}, Lcom/android/internal/telephony/GsmCdmaPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;IILcom/android/internal/telephony/TelephonyComponentFactory;)V

    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mIsPhoneReadySent:Z

    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mIsPhoneReadyPending:Z

    iput v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mCdmaNVSubscriptionSource:I

    invoke-static {p1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->getInstance(Landroid/content/Context;)Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    const/16 v1, 0x2d

    invoke-virtual {v0, p0, v1, v2}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->registerForServiceReadyEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {p1, v0, v2, v3, v2}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getInstance(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Landroid/os/Handler;ILjava/lang/Object;)Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mCdmaNVSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    return-void
.end method

.method private handleCdmaNVSubscriptionSource(I)V
    .locals 3

    const-string/jumbo v0, "QtiGsmCdmaPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " mCdmaNVSubscriptionSource:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mCdmaNVSubscriptionSource:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " newSubscriptionSource:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mCdmaNVSubscriptionSource:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mCdmaNVSubscriptionSource:I

    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->handleNVChange(I)V

    :cond_0
    return-void
.end method

.method private handleNVChange(I)V
    .locals 4

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "QtiGsmCdmaPhone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " handleNVChanged: isNVReady: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;

    move-result-object v1

    iget v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mPhoneId:I

    invoke-virtual {v1, v0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->updateNVRecord(ZI)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCurrentSubValid()Z
    .locals 8

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x1

    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    :try_start_0
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    move-result-object v5

    iget v6, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mPhoneId:I

    invoke-virtual {v5, v6}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getCurrentUiccCardProvisioningStatus(I)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    const-string/jumbo v5, "QtiGsmCdmaPhone"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ProvisionStatus: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " phone id:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mPhoneId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->getSubId()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/telephony/SubscriptionManager;->isActiveSubId(I)Z

    move-result v5

    if-eqz v5, :cond_1

    if-ne v1, v3, :cond_0

    :goto_1
    return v3

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move v3, v4

    goto :goto_1

    :cond_1
    move v3, v4

    goto :goto_1
.end method

.method private logd(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "QtiGsmCdmaPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "QtiGsmCdmaPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updatePhoneReady(I)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mIsPhoneReadySent:Z

    if-nez v0, :cond_1

    const-string/jumbo v0, "persist.radio.poweron_opt"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->isServiceReady()Z

    move-result v0

    if-nez v0, :cond_0

    iput-boolean v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mIsPhoneReadyPending:Z

    return-void

    :cond_0
    const-string/jumbo v0, "Sending Phone Ready to RIL."

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->logd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    sget v1, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->READY:I

    invoke-virtual {v0, v1, p1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->sendPhoneStatus(II)V

    iput-boolean v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mIsPhoneReadySent:Z

    iput-boolean v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mIsPhoneReadyPending:Z

    :cond_1
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-virtual {v0, p0}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->unRegisterForServiceReadyEvent(Landroid/os/Handler;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-super {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->dispose()V

    return-void
.end method

.method public fetchIMEI()V
    .locals 2

    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "QtiGsmCdmaPhone"

    const-string/jumbo v1, "fetching IMEI for GSM"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getIMEI(Landroid/os/Message;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "QtiGsmCdmaPhone"

    const-string/jumbo v1, "fetching device id for CDMA"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x15

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getDeviceIdentity(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public getCallForwardingIndicator()Z
    .locals 1

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->isCurrentSubValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-super {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getCallForwardingIndicator()Z

    move-result v0

    return v0
.end method

.method public getServiceState()Landroid/telephony/ServiceState;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-eqz v1, :cond_4

    :cond_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->isVolteEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->isVideoEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->isWifiCallingEnabled()Z

    move-result v0

    :cond_1
    :goto_0
    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    if-nez v1, :cond_3

    new-instance v1, Landroid/telephony/ServiceState;

    invoke-direct {v1}, Landroid/telephony/ServiceState;-><init>()V

    :goto_1
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/ServiceState;->mergeServiceStates(Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;

    move-result-object v1

    return-object v1

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    return-object v1

    :cond_5
    new-instance v1, Landroid/telephony/ServiceState;

    invoke-direct {v1}, Landroid/telephony/ServiceState;-><init>()V

    return-object v1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v5, 0x0

    const-string/jumbo v2, "QtiGsmCdmaPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleMessage: Event: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    invoke-super {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleMessage(Landroid/os/Message;)V

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    if-eqz v0, :cond_2

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_2

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mIsPhoneReadyPending:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mPhoneId:I

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->updatePhoneReady(I)V

    :cond_1
    const-string/jumbo v2, "QtiGsmCdmaPhone"

    const-string/jumbo v3, "EVENT_OEM_HOOK_SERVICE_READY received"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "QtiGsmCdmaPhone"

    const-string/jumbo v3, "Error: empty result, EVENT_OEM_HOOK_SERVICE_READY"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_1
    iput-boolean v5, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mIsPhoneReadySent:Z

    iget v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mPhoneId:I

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->updatePhoneReady(I)V

    invoke-super {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    :sswitch_2
    iput-boolean v5, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mIsPhoneReadySent:Z

    invoke-super {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    :sswitch_3
    sget v2, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mNumPhones:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mCdmaNVSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getCdmaSubscriptionSource()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->handleCdmaNVSubscriptionSource(I)V

    :cond_3
    invoke-super {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    :sswitch_4
    const-string/jumbo v2, "QtiGsmCdmaPhone"

    const-string/jumbo v3, "Event EVENT_NV_READY Received"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->prepareEri()V

    const-string/jumbo v2, "QtiGsmCdmaPhone"

    const-string/jumbo v3, "notifyMessageWaitingChanged"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v2, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyMessageWaitingChanged(Lcom/android/internal/telephony/Phone;)V

    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->updateVoiceMail()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5 -> :sswitch_3
        0x17 -> :sswitch_4
        0x1b -> :sswitch_3
        0x29 -> :sswitch_2
        0x2d -> :sswitch_0
    .end sparse-switch
.end method

.method protected phoneObjectUpdater(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->phoneObjectUpdater(I)V

    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mPhoneId:I

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->updatePhoneReady(I)V

    return-void
.end method

.method public radioCapabilityUpdated(Lcom/android/internal/telephony/RadioCapability;)V
    .locals 3

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mRadioCapability:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->radioCapabilityUpdated(ILcom/android/internal/telephony/RadioCapability;)V

    :cond_0
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mStackImei:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->getStackId()I

    move-result v2

    aget-object v1, v1, v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x15

    invoke-virtual {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getDeviceIdentity(Landroid/os/Message;)V

    :cond_1
    return-void
.end method

.method public sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v1

    const/16 v2, 0x44

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/GsmCdmaPhone;->sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V

    return-void
.end method

.method public setLocalCallHold(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->isServiceReady()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "QtiGsmCdmaPhone"

    const-string/jumbo v1, "mQtiRilInterface is not ready yet"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mPhoneId:I

    invoke-virtual {v0, v1, p1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->setLocalCallHold(IZ)Z

    move-result v0

    return v0
.end method

.method public setPreferredNetworkType(ILandroid/os/Message;)V
    .locals 3

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->setPreferredNetworkType(IILandroid/os/Message;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v1, "QtiGsmCdmaPhone"

    const-string/jumbo v2, " Error: Received null QtiRadioCapabilityController instante "

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startDtmf(C)V
    .locals 3

    const/16 v2, 0x44

    const/4 v0, 0x1

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v1

    if-nez v1, :cond_0

    if-ne p1, v2, :cond_1

    :cond_0
    :goto_0
    if-nez v0, :cond_2

    const-string/jumbo v0, "QtiGsmCdmaPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startDtmf called with invalid character \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->isPhoneTypeCdma()Z

    move-result v0

    if-eqz v0, :cond_3

    if-ne p1, v2, :cond_3

    const/16 p1, 0x23

    :cond_3
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->startDtmf(CLandroid/os/Message;)V

    goto :goto_1
.end method
