.class Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;
.super Ljava/lang/Object;
.source "QtiCardInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CardInfo"
.end annotation


# instance fields
.field private mCardType:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;

.field private mIccId:Ljava/lang/String;

.field private mMccMnc:Ljava/lang/String;

.field private mProvisionState:I

.field private mUpdateCardTypeState:I


# direct methods
.method static synthetic -get0(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;)Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;
    .locals 1

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mCardType:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;

    return-object v0
.end method

.method static synthetic -get1(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mIccId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;)I
    .locals 1

    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mProvisionState:I

    return v0
.end method

.method static synthetic -get3(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;)I
    .locals 1

    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mUpdateCardTypeState:I

    return v0
.end method

.method static synthetic -set0(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;)Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;
    .locals 0

    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mCardType:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;

    return-object p1
.end method

.method static synthetic -set1(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mIccId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set2(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;I)I
    .locals 0

    iput p1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mProvisionState:I

    return p1
.end method

.method static synthetic -set3(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;I)I
    .locals 0

    iput p1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mUpdateCardTypeState:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->reset()V

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private reset()V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;->UNKNOWN:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mCardType:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mIccId:Ljava/lang/String;

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mMccMnc:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mUpdateCardTypeState:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mProvisionState:I

    return-void
.end method


# virtual methods
.method public getIccId()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->setPrimaryCardOnDeAct()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mProvisionState:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mIccId:Ljava/lang/String;

    return-object v0
.end method

.method public getProvisionState()I
    .locals 1

    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mProvisionState:I

    return v0
.end method

.method public isCardInfoAvailable()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mUpdateCardTypeState:I

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mUpdateCardTypeState:I

    if-eq v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public isCardTypeSame(Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->setPrimaryCardOnDeAct()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mProvisionState:I

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {p1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;->valueOf(Ljava/lang/String;)Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mCardType:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;

    invoke-virtual {v0, v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
