.class Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService$PendingRequestRecord$1;
.super Ljava/lang/Object;
.source "QtiSmsSecurityService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService$PendingRequestRecord;-><init>(Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService;Lcom/android/internal/telephony/SmsAuthorizationRequest;Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService$SmsSecurityServiceCallback;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService$PendingRequestRecord;

.field final synthetic val$request:Lcom/android/internal/telephony/SmsAuthorizationRequest;

.field final synthetic val$service:Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService;


# direct methods
.method constructor <init>(Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService$PendingRequestRecord;Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService;Lcom/android/internal/telephony/SmsAuthorizationRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService$PendingRequestRecord$1;->this$1:Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService$PendingRequestRecord;

    iput-object p2, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService$PendingRequestRecord$1;->val$service:Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService;

    iput-object p3, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService$PendingRequestRecord$1;->val$request:Lcom/android/internal/telephony/SmsAuthorizationRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService$PendingRequestRecord$1;->val$service:Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService;

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService$PendingRequestRecord$1;->val$request:Lcom/android/internal/telephony/SmsAuthorizationRequest;

    invoke-virtual {v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService;->onRequestTimeout(Lcom/android/internal/telephony/SmsAuthorizationRequest;)V

    return-void
.end method
