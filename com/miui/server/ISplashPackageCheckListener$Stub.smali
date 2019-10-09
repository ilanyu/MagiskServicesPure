.class public abstract Lcom/miui/server/ISplashPackageCheckListener$Stub;
.super Landroid/os/Binder;
.source "ISplashPackageCheckListener.java"

# interfaces
.implements Lcom/miui/server/ISplashPackageCheckListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/ISplashPackageCheckListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/server/ISplashPackageCheckListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.miui.server.ISplashPackageCheckListener"

.field static final TRANSACTION_updateSplashPackageCheckInfo:I = 0x2

.field static final TRANSACTION_updateSplashPackageCheckInfoList:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.miui.server.ISplashPackageCheckListener"

    invoke-virtual {p0, p0, v0}, Lcom/miui/server/ISplashPackageCheckListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/miui/server/ISplashPackageCheckListener;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 23
    if-nez p0, :cond_4

    .line 24
    const/4 v0, 0x0

    return-object v0

    .line 26
    :cond_4
    const-string v0, "com.miui.server.ISplashPackageCheckListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/miui/server/ISplashPackageCheckListener;

    if-eqz v1, :cond_14

    .line 28
    move-object v1, v0

    check-cast v1, Lcom/miui/server/ISplashPackageCheckListener;

    return-object v1

    .line 30
    :cond_14
    new-instance v1, Lcom/miui/server/ISplashPackageCheckListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/miui/server/ISplashPackageCheckListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 7
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    const v0, 0x5f4e5446

    const/4 v1, 0x1

    if-eq p1, v0, :cond_36

    packed-switch p1, :pswitch_data_3c

    .line 67
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 55
    :pswitch_e
    const-string v0, "com.miui.server.ISplashPackageCheckListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_22

    .line 58
    sget-object v0, Lcom/miui/server/SplashPackageCheckInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/server/SplashPackageCheckInfo;

    .local v0, "_arg0":Lcom/miui/server/SplashPackageCheckInfo;
    goto :goto_23

    .line 61
    .end local v0    # "_arg0":Lcom/miui/server/SplashPackageCheckInfo;
    :cond_22
    const/4 v0, 0x0

    .line 63
    .restart local v0    # "_arg0":Lcom/miui/server/SplashPackageCheckInfo;
    :goto_23
    invoke-virtual {p0, v0}, Lcom/miui/server/ISplashPackageCheckListener$Stub;->updateSplashPackageCheckInfo(Lcom/miui/server/SplashPackageCheckInfo;)V

    .line 64
    return v1

    .line 47
    .end local v0    # "_arg0":Lcom/miui/server/SplashPackageCheckInfo;
    :pswitch_27
    const-string v0, "com.miui.server.ISplashPackageCheckListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    sget-object v0, Lcom/miui/server/SplashPackageCheckInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 50
    .local v0, "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/miui/server/SplashPackageCheckInfo;>;"
    invoke-virtual {p0, v0}, Lcom/miui/server/ISplashPackageCheckListener$Stub;->updateSplashPackageCheckInfoList(Ljava/util/List;)V

    .line 51
    return v1

    .line 42
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/miui/server/SplashPackageCheckInfo;>;"
    :cond_36
    const-string v0, "com.miui.server.ISplashPackageCheckListener"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    return v1

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_27
        :pswitch_e
    .end packed-switch
.end method
