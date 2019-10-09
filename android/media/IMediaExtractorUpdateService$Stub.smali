.class public abstract Landroid/media/IMediaExtractorUpdateService$Stub;
.super Landroid/os/Binder;
.source "IMediaExtractorUpdateService.java"

# interfaces
.implements Landroid/media/IMediaExtractorUpdateService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IMediaExtractorUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IMediaExtractorUpdateService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.IMediaExtractorUpdateService"

.field static final TRANSACTION_loadPlugins:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "android.media.IMediaExtractorUpdateService"

    invoke-virtual {p0, p0, v0}, Landroid/media/IMediaExtractorUpdateService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/IMediaExtractorUpdateService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 27
    if-nez p0, :cond_4

    .line 28
    const/4 v0, 0x0

    return-object v0

    .line 30
    :cond_4
    const-string v0, "android.media.IMediaExtractorUpdateService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/IMediaExtractorUpdateService;

    if-eqz v1, :cond_14

    .line 32
    move-object v1, v0

    check-cast v1, Landroid/media/IMediaExtractorUpdateService;

    return-object v1

    .line 34
    :cond_14
    new-instance v1, Landroid/media/IMediaExtractorUpdateService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/IMediaExtractorUpdateService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 42
    const-string v0, "android.media.IMediaExtractorUpdateService"

    .line 43
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-eq p1, v1, :cond_13

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_f

    .line 61
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 47
    :cond_f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    return v1

    .line 52
    :cond_13
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 55
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/media/IMediaExtractorUpdateService$Stub;->loadPlugins(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    return v1
.end method
