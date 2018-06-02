.class public Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;
.super Ljava/lang/Object;
.source "QtiPrimaryCardUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;
    }
.end annotation


# static fields
.field public static final COMPARE_CARDTYPE:I = 0x2

.field public static final COMPARE_IIN_CARDTYPE:I = 0x1

.field public static final COMPARE_MCCMNC:I = 0x3

.field private static final CONFIG_CURRENT_PRIMARY_SUB:Ljava/lang/String; = "config_current_primary_sub"

.field private static final CONFIG_DISABLE_DDS_PREFERENCE:Ljava/lang/String; = "config_disable_dds_preference"

.field private static final CONFIG_PRIMARY_SUB_IS_SETABLE:Ljava/lang/String; = "config_primary_sub_is_setable"

.field private static final CONFIG_SUB_SELECT_MODE_MANUAL:Ljava/lang/String; = "config_sub_select_mode_manual"

.field private static final DBG:Z = true

.field private static final DETECT_4G_CARD_PROPERTY_NAME:Ljava/lang/String; = "persist.radio.detect4gcard"

.field public static final DISABLE_USER_SELECTION:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "QtiPcUtils"

.field public static final PHONE_COUNT:I

.field private static final PRIMARY_CARD_7_5_PROPERTY_NAME:Ljava/lang/String; = "persist.radio.primary_7_5_mode"

.field private static final PRIMARY_CARD_PROPERTY_NAME:Ljava/lang/String; = "persist.radio.primarycard"

.field private static final PRIMARY_CARD_TYPE_2_PROPERTY_NAME:Ljava/lang/String; = "persist.radio.primary_type_2"

.field private static final PRIMCARYCARD_L_W_ENABLED:Z

.field private static final RAF_CDMA:I = 0x70

.field private static final RAF_EVDO:I = 0x3180

.field public static final SHOW_USER_SELECTION_FOR_EVERY_CHANGE:I = 0x3

.field public static final SHOW_USER_SELECTION_ON_PRIORITY_MATCH:I = 0x2

.field public static final SLOT_ID_0:I = 0x0

.field public static final SLOT_ID_1:I = 0x1

.field public static final SLOT_INVALID:I = -0x1

.field public static final SLOT_PRIORITY_MATCH:I = -0x2

.field private static final VDBG:Z = true

.field private static mConfigValue:I

.field private static sInstance:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->PHONE_COUNT:I

    sput v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->mConfigValue:I

    const-string/jumbo v0, "persist.radio.lw_enabled"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->PRIMCARYCARD_L_W_ENABLED:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->setConfigValue()V

    return-void
.end method

.method public static disableDds()Z
    .locals 3

    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->DISABLE_DDS:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->isBitSetInConfig(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "disableDds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->logv(Ljava/lang/String;)V

    return v0
.end method

.method public static getConfigXml()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->PRIORITY_CONFIG_3:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->isBitSetInConfig(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "priority_config_3"

    return-object v0

    :cond_0
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->PRIORITY_CONFIG_2:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->isBitSetInConfig(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "priority_config_2"

    return-object v0

    :cond_1
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->PRIORITY_CONFIG_1:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->isBitSetInConfig(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "priority_config_1"

    return-object v0

    :cond_2
    const-string/jumbo v0, "priority_config_2"

    return-object v0
.end method

.method public static getCurrentPrimarySlotFromDB()I
    .locals 4

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->getInstance()Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;

    move-result-object v1

    iget-object v1, v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "config_current_primary_sub"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDefaultNwMode()I
    .locals 3

    const/4 v0, 0x1

    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->DEFAULT_NWMODE_GSM:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->isBitSetInConfig(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getDefaultNwMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->logv(Ljava/lang/String;)V

    return v0

    :cond_1
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->DEFAULT_NWMODE_GW:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->isBitSetInConfig(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getDefaultPrimarySlot()I
    .locals 3

    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->DEFAULT_PRIMARY_SLOT_1:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->isBitSetInConfig(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getDefaultPrimarySlot: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->logv(Ljava/lang/String;)V

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getInstance()Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;
    .locals 3

    const-class v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->sInstance:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "QtiPrimaryCardUtils was not initialized!"

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
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->sInstance:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method

.method public static getPriorityConfigComparator()I
    .locals 3

    const/4 v0, 0x2

    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->COMPARE_MCCMNC:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->isBitSetInConfig(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x3

    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getPriorityConfigComparator: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->logv(Ljava/lang/String;)V

    return v0

    :cond_1
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->COMPARE_CARDTYPE:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->isBitSetInConfig(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->COMPARE_IIN_CARDTYPE:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->isBitSetInConfig(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getUserSelectionMode()I
    .locals 3

    const/4 v0, 0x1

    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->SHOW_USER_SELECTION_FOR_EVERY_CHANGE:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->isBitSetInConfig(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x3

    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getUserSelectionMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->logv(Ljava/lang/String;)V

    return v0

    :cond_1
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->SHOW_USER_SELECTION_ON_PRIORITY_MATCH:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->isBitSetInConfig(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->DISABLE_USER_SELECTION:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->isBitSetInConfig(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static init(Landroid/content/Context;)Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;
    .locals 2

    const-class v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->sInstance:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;

    if-nez v0, :cond_0

    new-instance v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;

    invoke-direct {v0, p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->sInstance:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    sget-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->sInstance:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static is3gpp2NwMode(I)Z
    .locals 3

    invoke-static {p0}, Landroid/telephony/RadioAccessFamily;->getRafFromNetworkType(I)I

    move-result v0

    and-int/lit8 v1, v0, 0x70

    const/16 v2, 0x70

    if-eq v1, v2, :cond_0

    and-int/lit16 v1, v0, 0x3180

    const/16 v2, 0x3180

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    return v1

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private static isBitSetInConfig(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;)Z
    .locals 2

    sget v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->mConfigValue:I

    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->value()I

    move-result v1

    and-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->value()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDetect4gCardEnabled()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string/jumbo v2, "persist.radio.primarycard"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "persist.radio.detect4gcard"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    sget v2, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->PHONE_COUNT:I

    if-le v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static isPrimary7Plus5Enabled()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string/jumbo v2, "persist.radio.primarycard"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "persist.radio.primary_7_5_mode"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    sget v2, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->PHONE_COUNT:I

    if-le v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static isPrimaryCardFeatureEnabled()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string/jumbo v2, "persist.radio.primarycard"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->PHONE_COUNT:I

    if-le v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isPrimaryCardType2Enabled()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string/jumbo v2, "persist.radio.primarycard"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "persist.radio.primary_type_2"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    sget v2, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->PHONE_COUNT:I

    if-le v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "QtiPcUtils"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "QtiPcUtils"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "QtiPcUtils"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static logv(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "QtiPcUtils"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static read4gFlag()Z
    .locals 3

    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->READ_4G_FLAG:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->isBitSetInConfig(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "read4gFlag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->logv(Ljava/lang/String;)V

    return v0
.end method

.method public static saveDisableDdsPreferenceInDB(Z)V
    .locals 3

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->getInstance()Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;

    move-result-object v0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "config_disable_dds_preference"

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static saveEnableUserSelectioninDB(Z)V
    .locals 3

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->getInstance()Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;

    move-result-object v0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "config_sub_select_mode_manual"

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static savePrimarySetable(Z)V
    .locals 3

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->getInstance()Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;

    move-result-object v0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "config_primary_sub_is_setable"

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static savePrimarySlotToDB(I)V
    .locals 2

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->getInstance()Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;

    move-result-object v0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "config_current_primary_sub"

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private static setConfigValue()V
    .locals 4

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->isDetect4gCardEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->PRIMCARYCARD_L_W_ENABLED:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->DEFAULT_NWMODE_GW:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-virtual {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->value()I

    move-result v0

    :goto_0
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->PRIORITY_CONFIG_2:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-virtual {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->value()I

    move-result v1

    sget-object v2, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->COMPARE_CARDTYPE:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-virtual {v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->value()I

    move-result v2

    or-int/2addr v1, v2

    or-int/2addr v1, v0

    sget-object v2, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->READ_4G_FLAG:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-virtual {v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->value()I

    move-result v2

    or-int/2addr v1, v2

    sget-object v2, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->SET_PRIMARY_ON_DEACT:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-virtual {v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->value()I

    move-result v2

    or-int/2addr v1, v2

    sget-object v2, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->SHOW_USER_SELECTION_FOR_EVERY_CHANGE:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-virtual {v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->value()I

    move-result v2

    or-int/2addr v1, v2

    sput v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->mConfigValue:I

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ConfigValue is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->mConfigValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", in Binary:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->mConfigValue:I

    const/4 v3, 0x2

    invoke-static {v2, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->logd(Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->DEFAULT_NWMODE_GSM:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-virtual {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->value()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->isPrimary7Plus5Enabled()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->isPrimaryCardType2Enabled()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->PRIORITY_CONFIG_3:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-virtual {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->value()I

    move-result v1

    sget-object v2, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->COMPARE_IIN_CARDTYPE:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-virtual {v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->value()I

    move-result v2

    or-int/2addr v1, v2

    sget-object v2, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->DEFAULT_NWMODE_GSM:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-virtual {v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->value()I

    move-result v2

    or-int/2addr v1, v2

    sget-object v2, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->SET_PRIMARY_ON_DEACT:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-virtual {v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->value()I

    move-result v2

    or-int/2addr v1, v2

    sget-object v2, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->DISABLE_DDS:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-virtual {v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->value()I

    move-result v2

    or-int/2addr v1, v2

    sget-object v2, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->SHOW_USER_SELECTION_ON_PRIORITY_MATCH:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-virtual {v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->value()I

    move-result v2

    or-int/2addr v1, v2

    sput v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->mConfigValue:I

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->isPrimaryCardFeatureEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->PRIORITY_CONFIG_1:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-virtual {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->value()I

    move-result v1

    sget-object v2, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->COMPARE_IIN_CARDTYPE:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-virtual {v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->value()I

    move-result v2

    or-int/2addr v1, v2

    sget-object v2, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->DEFAULT_NWMODE_GSM:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-virtual {v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->value()I

    move-result v2

    or-int/2addr v1, v2

    sget-object v2, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->SET_PRIMARY_ON_DEACT:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-virtual {v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->value()I

    move-result v2

    or-int/2addr v1, v2

    sget-object v2, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->SHOW_USER_SELECTION_ON_PRIORITY_MATCH:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-virtual {v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->value()I

    move-result v2

    or-int/2addr v1, v2

    sput v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->mConfigValue:I

    goto/16 :goto_1

    :cond_4
    const/4 v1, 0x0

    sput v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->mConfigValue:I

    goto/16 :goto_1
.end method

.method public static setPrimaryCardOnDeAct()Z
    .locals 3

    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->SET_PRIMARY_ON_DEACT:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->isBitSetInConfig(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPrimaryCardOnDeAct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->logv(Ljava/lang/String;)V

    return v0
.end method
