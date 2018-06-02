.class public abstract Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel$Stub;
.super Landroid/os/Binder;
.source "IQcrilMsgTunnel.java"

# interfaces
.implements Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.qualcomm.qcrilmsgtunnel.IQcrilMsgTunnel"

.field static final TRANSACTION_sendOemRilRequestRaw:I = 0x1

.field static final TRANSACTION_sendOemRilRequestRawAsync:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.qualcomm.qcrilmsgtunnel.IQcrilMsgTunnel"

    invoke-virtual {p0, p0, v0}, Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "com.qualcomm.qcrilmsgtunnel.IQcrilMsgTunnel"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;

    return-object v0

    :cond_1
    new-instance v1, Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v7, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    return v6

    :sswitch_0
    const-string/jumbo v6, "com.qualcomm.qcrilmsgtunnel.IQcrilMsgTunnel"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v7

    :sswitch_1
    const-string/jumbo v6, "com.qualcomm.qcrilmsgtunnel.IQcrilMsgTunnel"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-gez v3, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p0, v0, v2, v4}, Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel$Stub;->sendOemRilRequestRaw([B[BI)I

    move-result v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    return v7

    :cond_0
    new-array v2, v3, [B

    goto :goto_0

    :sswitch_2
    const-string/jumbo v6, "com.qualcomm.qcrilmsgtunnel.IQcrilMsgTunnel"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/qualcomm/qcrilhook/IOemHookCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/qualcomm/qcrilhook/IOemHookCallback;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p0, v0, v1, v4}, Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel$Stub;->sendOemRilRequestRawAsync([BLcom/qualcomm/qcrilhook/IOemHookCallback;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
