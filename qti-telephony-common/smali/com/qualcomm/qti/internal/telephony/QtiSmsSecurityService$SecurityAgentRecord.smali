.class final Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService$SecurityAgentRecord;
.super Ljava/lang/Object;
.source "QtiSmsSecurityService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SecurityAgentRecord"
.end annotation


# instance fields
.field private final mAgent:Lcom/android/internal/telephony/ISmsSecurityAgent;

.field private final mService:Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService;


# direct methods
.method static synthetic -get0(Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService$SecurityAgentRecord;)Lcom/android/internal/telephony/ISmsSecurityAgent;
    .locals 1

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService$SecurityAgentRecord;->mAgent:Lcom/android/internal/telephony/ISmsSecurityAgent;

    return-object v0
.end method

.method public constructor <init>(Lcom/android/internal/telephony/ISmsSecurityAgent;Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService$SecurityAgentRecord;->mAgent:Lcom/android/internal/telephony/ISmsSecurityAgent;

    iput-object p2, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService$SecurityAgentRecord;->mService:Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService;

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService$SecurityAgentRecord;->mAgent:Lcom/android/internal/telephony/ISmsSecurityAgent;

    invoke-interface {v0}, Lcom/android/internal/telephony/ISmsSecurityAgent;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService$SecurityAgentRecord;->mService:Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService;

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService$SecurityAgentRecord;->mAgent:Lcom/android/internal/telephony/ISmsSecurityAgent;

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService;->-wrap0(Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService;Lcom/android/internal/telephony/ISmsSecurityAgent;)Z

    return-void
.end method
