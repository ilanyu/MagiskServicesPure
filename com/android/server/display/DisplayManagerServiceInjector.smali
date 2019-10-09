.class public Lcom/android/server/display/DisplayManagerServiceInjector;
.super Ljava/lang/Object;
.source "DisplayManagerServiceInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/DisplayManagerServiceInjector$IRemoteBrightnessListener;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR_DISPLAY_MANAGER:Ljava/lang/String; = "android.view.android.hardware.display.IDisplayManager"

.field private static final DESCRIPTOR_LISTENER:Ljava/lang/String; = "android.view.android.hardware.display.IBrightnessListener"

.field static final MSG_RESET_SHORT_MODEL:I = 0xff

.field private static final TAG:Ljava/lang/String; = "DisplayManagerService"

.field public static mListenerList:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/android/server/display/DisplayManagerServiceInjector$IRemoteBrightnessListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 25
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    sput-object v0, Lcom/android/server/display/DisplayManagerServiceInjector;->mListenerList:Landroid/os/RemoteCallbackList;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static onTransact(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayPowerController;Landroid/os/Handler;Lcom/android/server/display/DisplayPowerState;ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .param p0, "displayManagerService"    # Lcom/android/server/display/DisplayManagerService;
    .param p1, "displayPowerController"    # Lcom/android/server/display/DisplayPowerController;
    .param p2, "displayControllerHandler"    # Landroid/os/Handler;
    .param p3, "displayPowerState"    # Lcom/android/server/display/DisplayPowerState;
    .param p4, "code"    # I
    .param p5, "data"    # Landroid/os/Parcel;
    .param p6, "reply"    # Landroid/os/Parcel;
    .param p7, "flags"    # I

    .line 31
    const/4 v0, 0x1

    packed-switch p4, :pswitch_data_38

    .line 52
    :pswitch_4
    const/4 v0, 0x0

    return v0

    .line 33
    :pswitch_6
    invoke-static {p2, p5}, Lcom/android/server/display/DisplayManagerServiceInjector;->resetAutoBrightnessShortModel(Landroid/os/Handler;Landroid/os/Parcel;)Z

    move-result v0

    return v0

    .line 36
    :pswitch_b
    const-string v1, "android.view.android.hardware.display.IDisplayManager"

    invoke-virtual {p5, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 38
    invoke-virtual {p5}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/display/DisplayManagerServiceInjector$IRemoteBrightnessListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/server/display/DisplayManagerServiceInjector$IRemoteBrightnessListener;

    move-result-object v1

    .line 39
    .local v1, "_arg0":Lcom/android/server/display/DisplayManagerServiceInjector$IRemoteBrightnessListener;
    sget-object v2, Lcom/android/server/display/DisplayManagerServiceInjector;->mListenerList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 40
    invoke-virtual {p6}, Landroid/os/Parcel;->writeNoException()V

    .line 41
    return v0

    .line 44
    .end local v1    # "_arg0":Lcom/android/server/display/DisplayManagerServiceInjector$IRemoteBrightnessListener;
    :pswitch_21
    const-string v1, "android.view.android.hardware.display.IDisplayManager"

    invoke-virtual {p5, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p5}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/display/DisplayManagerServiceInjector$IRemoteBrightnessListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/server/display/DisplayManagerServiceInjector$IRemoteBrightnessListener;

    move-result-object v1

    .line 47
    .restart local v1    # "_arg0":Lcom/android/server/display/DisplayManagerServiceInjector$IRemoteBrightnessListener;
    sget-object v2, Lcom/android/server/display/DisplayManagerServiceInjector;->mListenerList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 48
    invoke-virtual {p6}, Landroid/os/Parcel;->writeNoException()V

    .line 49
    return v0

    nop

    :pswitch_data_38
    .packed-switch 0xfffffb
        :pswitch_21
        :pswitch_b
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method

.method static resetAutoBrightnessShortModel(Landroid/os/Handler;Landroid/os/Parcel;)Z
    .registers 3
    .param p0, "displayControllerHandler"    # Landroid/os/Handler;
    .param p1, "data"    # Landroid/os/Parcel;

    .line 58
    const-string v0, "android.view.android.hardware.display.IDisplayManager"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-static {p0}, Lcom/android/server/display/DisplayManagerServiceInjector;->resetAutoBrightnessShortModelInternal(Landroid/os/Handler;)V

    .line 60
    const/4 v0, 0x1

    return v0
.end method

.method private static resetAutoBrightnessShortModelInternal(Landroid/os/Handler;)V
    .registers 4
    .param p0, "displayControllerHandler"    # Landroid/os/Handler;

    .line 65
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_2b

    .line 68
    const-string v0, "DisplayManagerService"

    const-string/jumbo v1, "reset AutoBrightness ShortModel"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 71
    .local v0, "token":J
    const/16 v2, 0xff

    :try_start_1a
    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V
    :try_end_21
    .catchall {:try_start_1a .. :try_end_21} :catchall_26

    .line 73
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 74
    nop

    .line 75
    return-void

    .line 73
    :catchall_26
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 66
    .end local v0    # "token":J
    :cond_2b
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Only system uid can reset Short Model!"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
