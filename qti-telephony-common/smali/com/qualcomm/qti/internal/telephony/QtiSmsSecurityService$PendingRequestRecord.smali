.class final Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService$PendingRequestRecord;
.super Ljava/lang/Object;
.source "QtiSmsSecurityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PendingRequestRecord"
.end annotation


# instance fields
.field private final mCallback:Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService$SmsSecurityServiceCallback;

.field private final mHandler:Landroid/os/Handler;

.field private final mTimeoutCallback:Ljava/lang/Runnable;


# direct methods
.method static synthetic -get0(Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService$PendingRequestRecord;)Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService$SmsSecurityServiceCallback;
    .locals 1

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService$PendingRequestRecord;->mCallback:Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService$SmsSecurityServiceCallback;

    return-object v0
.end method

.method public constructor <init>(Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService;Lcom/android/internal/telephony/SmsAuthorizationRequest;Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService$SmsSecurityServiceCallback;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService$PendingRequestRecord;->mCallback:Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService$SmsSecurityServiceCallback;

    iput-object p4, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService$PendingRequestRecord;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService$PendingRequestRecord$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService$PendingRequestRecord$1;-><init>(Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService$PendingRequestRecord;Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService;Lcom/android/internal/telephony/SmsAuthorizationRequest;)V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService$PendingRequestRecord;->mTimeoutCallback:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public cancelTimeout()V
    .locals 2

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService$PendingRequestRecord;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService$PendingRequestRecord;->mTimeoutCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public invokeCallback(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService$PendingRequestRecord;->cancelTimeout()V

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService$PendingRequestRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService$PendingRequestRecord$2;

    invoke-direct {v1, p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService$PendingRequestRecord$2;-><init>(Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService$PendingRequestRecord;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public invokeTimeout()V
    .locals 2

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService$PendingRequestRecord;->mCallback:Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService$SmsSecurityServiceCallback;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService$SmsSecurityServiceCallback;->onAuthorizationResult(Z)V

    return-void
.end method

.method public scheduleTimeout(J)V
    .locals 3

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService$PendingRequestRecord;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService$PendingRequestRecord;->mTimeoutCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
