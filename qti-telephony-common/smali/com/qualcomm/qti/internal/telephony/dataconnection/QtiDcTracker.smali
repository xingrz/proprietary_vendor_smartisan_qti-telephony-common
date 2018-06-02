.class public final Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;
.super Lcom/android/internal/telephony/dataconnection/DcTracker;
.source "QtiDcTracker.java"


# instance fields
.field private final CONFIG_FETCH_APN_FROM_OMH_CARD:Ljava/lang/String;

.field private final EVENT_MODEM_DATA_PROFILE_READY:I

.field private LOG_TAG:Ljava/lang/String;

.field private final OMH_FEATURE_ENABLE_OVERRIDE:Ljava/lang/String;

.field private final QTI_DCT_EVENTS_BASE:I

.field private mIccidSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOmhApt:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiCdmaApnProfileTracker;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 6

    const/16 v5, 0x3e9

    const/4 v4, 0x2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;-><init>(Lcom/android/internal/telephony/Phone;)V

    const-string/jumbo v2, "QtiDCT"

    iput-object v2, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "persist.radio.omh.enable"

    iput-object v2, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->OMH_FEATURE_ENABLE_OVERRIDE:Ljava/lang/String;

    const-string/jumbo v2, "config_fetch_apn_from_omh_card"

    iput-object v2, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->CONFIG_FETCH_APN_FROM_OMH_CARD:Ljava/lang/String;

    const/16 v2, 0x3e8

    iput v2, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->QTI_DCT_EVENTS_BASE:I

    iput v5, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->EVENT_MODEM_DATA_PROFILE_READY:I

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mIccidSet:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    const-string/jumbo v2, "QtiGsmDCT"

    iput-object v2, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->LOG_TAG:Ljava/lang/String;

    :goto_0
    sget-boolean v2, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".constructor"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->log(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    if-ne v2, v4, :cond_2

    const-string/jumbo v2, "config_fetch_apn_from_omh_card"

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->getConfigItem(Ljava/lang/String;)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " fetchApnFromOmhCard: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->log(Ljava/lang/String;)V

    const-string/jumbo v2, "persist.radio.omh.enable"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "OMH: feature-config override enabled"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->log(Ljava/lang/String;)V

    move v1, v0

    :cond_1
    if-eqz v1, :cond_2

    new-instance v2, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiCdmaApnProfileTracker;

    invoke-direct {v2, p1}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiCdmaApnProfileTracker;-><init>(Lcom/android/internal/telephony/Phone;)V

    iput-object v2, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mOmhApt:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiCdmaApnProfileTracker;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mOmhApt:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiCdmaApnProfileTracker;

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v5, v3}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiCdmaApnProfileTracker;->registerForModemProfileReady(Landroid/os/Handler;ILjava/lang/Object;)V

    :cond_2
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->fillIccIdSet()V

    return-void

    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    if-ne v2, v4, :cond_4

    const-string/jumbo v2, "QtiCdmaDCT"

    iput-object v2, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->LOG_TAG:Ljava/lang/String;

    goto/16 :goto_0

    :cond_4
    const-string/jumbo v2, "DCT"

    iput-object v2, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unexpected phone type ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private fillIccIdSet()V
    .locals 2

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mIccidSet:Ljava/util/HashSet;

    const-string/jumbo v1, "8991840"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mIccidSet:Ljava/util/HashSet;

    const-string/jumbo v1, "8991854"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mIccidSet:Ljava/util/HashSet;

    const-string/jumbo v1, "8991855"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mIccidSet:Ljava/util/HashSet;

    const-string/jumbo v1, "8991856"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mIccidSet:Ljava/util/HashSet;

    const-string/jumbo v1, "8991857"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mIccidSet:Ljava/util/HashSet;

    const-string/jumbo v1, "8991858"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mIccidSet:Ljava/util/HashSet;

    const-string/jumbo v1, "8991859"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mIccidSet:Ljava/util/HashSet;

    const-string/jumbo v1, "899186"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mIccidSet:Ljava/util/HashSet;

    const-string/jumbo v1, "8991870"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mIccidSet:Ljava/util/HashSet;

    const-string/jumbo v1, "8991871"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mIccidSet:Ljava/util/HashSet;

    const-string/jumbo v1, "8991872"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mIccidSet:Ljava/util/HashSet;

    const-string/jumbo v1, "8991873"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mIccidSet:Ljava/util/HashSet;

    const-string/jumbo v1, "8991874"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private getConfigItem(Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "carrier_config"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CarrierConfigManager;

    if-nez v1, :cond_0

    const-string/jumbo v3, "getConfigItem: No carrier config service found."

    invoke-virtual {p0, v3}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->loge(Ljava/lang/String;)V

    return v5

    :cond_0
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v3, "getConfigItem: Empty carrier config."

    invoke-virtual {p0, v3}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->loge(Ljava/lang/String;)V

    return v5

    :cond_1
    invoke-virtual {v0, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    return v3
.end method

.method private isRecordsLoaded()Z
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getRecordsLoaded()Z

    move-result v1

    :cond_0
    return v1
.end method

.method private isSubscriptionSourceRuim()Z
    .locals 1

    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->isNvSubscription()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onModemApnProfileReady()V
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mState:Lcom/android/internal/telephony/DctConstants$State;

    sget-object v4, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v3, v4, :cond_0

    const-string/jumbo v3, "psRestrictEnabled"

    invoke-virtual {p0, v2, v3}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->cleanUpAllConnections(ZLjava/lang/String;)Z

    :cond_0
    sget-boolean v3, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->DBG:Z

    if-eqz v3, :cond_1

    const-string/jumbo v3, "OMH: onModemApnProfileReady(): Setting up data call"

    invoke-virtual {p0, v3}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->log(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->getOverallState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v1

    sget-object v3, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    if-eq v1, v3, :cond_4

    sget-object v3, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v1, v3, :cond_5

    const/4 v0, 0x1

    :goto_0
    sget-boolean v3, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->DBG:Z

    if-eqz v3, :cond_2

    const-string/jumbo v3, "onModemApnProfileReady: createAllApnList and cleanUpAllConnections"

    invoke-virtual {p0, v3}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->log(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->createAllApnList()V

    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->setInitialAttachApn()V

    if-eqz v0, :cond_6

    :goto_1
    invoke-virtual {p0, v2}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->cleanUpConnectionsOnUpdatedApns(Z)V

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v3

    if-ne v2, v3, :cond_3

    const-string/jumbo v2, "apnChanged"

    invoke-virtual {p0, v2}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->setupDataOnConnectableApns(Ljava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    :cond_6
    const/4 v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method protected allowInitialAttachForOperator()Z
    .locals 4

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccRecords;->getIccId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mIccidSet:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    return v3

    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    return v3
.end method

.method protected cleanUpConnection(ZLcom/android/internal/telephony/dataconnection/ApnContext;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpConnection(ZLcom/android/internal/telephony/dataconnection/ApnContext;)V

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mOmhApt:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiCdmaApnProfileTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mOmhApt:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiCdmaApnProfileTracker;

    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiCdmaApnProfileTracker;->clearActiveApnProfile()V

    :cond_0
    return-void
.end method

.method protected createAllApnList()V
    .locals 10

    const/4 v0, 0x0

    const/4 v2, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mMvnoMatched:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v9

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mOmhApt:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiCdmaApnProfileTracker;

    if-eqz v0, :cond_1

    invoke-static {v9}, Landroid/telephony/ServiceState;->isCdma(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xd

    if-eq v0, v9, :cond_1

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mOmhApt:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiCdmaApnProfileTracker;

    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiCdmaApnProfileTracker;->getOmhApnProfilesList()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "createAllApnList: Copy Omh profiles"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->log(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->addEmergencyApnSetting()V

    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->dedupeApnSettings()V

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-boolean v0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->DBG:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "createAllApnList: No APN found for carrier: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->log(Ljava/lang/String;)V

    :cond_3
    iput-object v2, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    :cond_4
    :goto_1
    sget-boolean v0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->DBG:Z

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "createAllApnList: X mAllApnSettings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->log(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->setDataProfilesAsNeeded()V

    return-void

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "numeric = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "_id"

    sget-boolean v0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->DBG:Z

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "createAllApnList: selection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->log(Ljava/lang/String;)V

    :cond_7
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_8

    invoke-virtual {p0, v6}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->createApnList(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    :cond_8
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->getPreferredApn()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->numeric:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    :goto_2
    sget-boolean v0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->DBG:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "createAllApnList: mPreferredApn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_b
    iput-object v2, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->setPreferredApn(I)V

    goto :goto_2
.end method

.method public dispose()V
    .locals 1

    invoke-super {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->dispose()V

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mOmhApt:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiCdmaApnProfileTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mOmhApt:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiCdmaApnProfileTracker;

    invoke-virtual {v0, p0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiCdmaApnProfileTracker;->unregisterForModemProfileReady(Landroid/os/Handler;)V

    :cond_0
    return-void
.end method

.method protected getAttachedStatus()Z
    .locals 2

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    invoke-super {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getAttachedStatus()Z

    move-result v1

    return v1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    sget-boolean v0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "QtiDcTracker handleMessage msg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->log(Ljava/lang/String;)V

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->handleMessage(Landroid/os/Message;)V

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->onModemApnProfileReady()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
    .end packed-switch
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onRecordsLoadedOrSubIdChanged()V
    .locals 2

    sget-boolean v0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "onRecordsLoaded: createAllApnList"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->log(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x112009b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mAutoAttachOnCreationConfig:Z

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mOmhApt:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiCdmaApnProfileTracker;

    if-eqz v0, :cond_3

    const-string/jumbo v0, "OMH: onRecordsLoaded(): calling loadProfiles()"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mOmhApt:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiCdmaApnProfileTracker;

    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiCdmaApnProfileTracker;->loadProfiles()V

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->DBG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "OMH: onRecordsLoaded: notifying data availability"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->log(Ljava/lang/String;)V

    :cond_1
    const-string/jumbo v0, "simLoaded"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->createAllApnList()V

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->isSubscriptionSourceRuim()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->isRecordsLoaded()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->setInitialAttachApn()V

    :cond_4
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-boolean v0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->DBG:Z

    if-eqz v0, :cond_5

    const-string/jumbo v0, "onRecordsLoaded: notifying data availability"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->log(Ljava/lang/String;)V

    :cond_5
    const-string/jumbo v0, "simLoaded"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    :cond_6
    const-string/jumbo v0, "simLoaded"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->setupDataOnConnectableApns(Ljava/lang/String;)V

    goto :goto_0
.end method
