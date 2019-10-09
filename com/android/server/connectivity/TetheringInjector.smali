.class public Lcom/android/server/connectivity/TetheringInjector;
.super Ljava/lang/Object;
.source "TetheringInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/TetheringInjector$DisableTetheringActionReceiver;
    }
.end annotation


# static fields
.field private static final DISABLE_TETHERING_ACTION:Ljava/lang/String; = "com.android.server.connectivity.Tethering.DisableTetheringAction"

.field private static final TAG:Ljava/lang/String; = "Tethering"

.field private static sBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/bluetooth/BluetoothPan;",
            ">;"
        }
    .end annotation
.end field

.field private static sDisableTetheringActionReceiver:Landroid/content/BroadcastReceiver;

.field private static sHandler:Landroid/os/Handler;

.field private static sIsRegisted:Z

.field private static sNotifyChannelSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 32
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/android/server/connectivity/TetheringInjector;->sBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    .line 36
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/connectivity/TetheringInjector;->sNotifyChannelSet:Ljava/util/HashSet;

    .line 38
    new-instance v0, Lcom/android/server/connectivity/TetheringInjector$1;

    invoke-direct {v0}, Lcom/android/server/connectivity/TetheringInjector$1;-><init>()V

    sput-object v0, Lcom/android/server/connectivity/TetheringInjector;->sProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/atomic/AtomicReference;
    .registers 1

    .line 27
    sget-object v0, Lcom/android/server/connectivity/TetheringInjector;->sBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method public static init()Z
    .registers 3

    .line 57
    sget-object v0, Lcom/android/server/connectivity/TetheringInjector;->sHandler:Landroid/os/Handler;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/android/server/connectivity/TetheringInjector;->sDisableTetheringActionReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_24

    .line 58
    :cond_8
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Tethering"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 59
    .local v0, "ht":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 60
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/android/server/connectivity/TetheringInjector;->sHandler:Landroid/os/Handler;

    .line 61
    new-instance v1, Lcom/android/server/connectivity/TetheringInjector$DisableTetheringActionReceiver;

    invoke-direct {v1}, Lcom/android/server/connectivity/TetheringInjector$DisableTetheringActionReceiver;-><init>()V

    sput-object v1, Lcom/android/server/connectivity/TetheringInjector;->sDisableTetheringActionReceiver:Landroid/content/BroadcastReceiver;

    .line 63
    .end local v0    # "ht":Landroid/os/HandlerThread;
    :cond_24
    const/4 v0, 0x1

    return v0
.end method

.method public static notificationFinished(Landroid/content/Context;)V
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 117
    sget-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->NETWORK_STATUS:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/server/connectivity/TetheringInjector;->notificationFinished(Landroid/content/Context;Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public static notificationFinished(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "notificationChannel"    # Ljava/lang/String;

    .line 121
    sget-object v0, Lcom/android/server/connectivity/TetheringInjector;->sNotifyChannelSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 123
    sget-boolean v0, Lcom/android/server/connectivity/TetheringInjector;->sIsRegisted:Z

    if-eqz v0, :cond_19

    sget-object v0, Lcom/android/server/connectivity/TetheringInjector;->sNotifyChannelSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 124
    sget-object v0, Lcom/android/server/connectivity/TetheringInjector;->sDisableTetheringActionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 125
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/connectivity/TetheringInjector;->sIsRegisted:Z

    .line 127
    :cond_19
    return-void
.end method

.method public static setTetheredNotification(Landroid/content/Context;Landroid/app/Notification$Builder;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "notificationBuilder"    # Landroid/app/Notification$Builder;

    .line 68
    sget-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->NETWORK_STATUS:Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/android/server/connectivity/TetheringInjector;->setTetheredNotification(Landroid/content/Context;Landroid/app/Notification$Builder;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public static setTetheredNotification(Landroid/content/Context;Landroid/app/Notification$Builder;Ljava/lang/String;)V
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "notificationBuilder"    # Landroid/app/Notification$Builder;
    .param p2, "notificationChannel"    # Ljava/lang/String;

    .line 73
    sget-object v0, Lcom/android/server/connectivity/TetheringInjector;->sNotifyChannelSet:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 75
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 76
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_11

    .line 77
    sget-object v1, Lcom/android/server/connectivity/TetheringInjector;->sProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v2, 0x5

    invoke-virtual {v0, p0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 79
    :cond_11
    sget-boolean v1, Lcom/android/server/connectivity/TetheringInjector;->sIsRegisted:Z

    const/4 v2, 0x1

    if-nez v1, :cond_27

    .line 80
    sget-object v1, Lcom/android/server/connectivity/TetheringInjector;->sDisableTetheringActionReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.android.server.connectivity.Tethering.DisableTetheringAction"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    sget-object v5, Lcom/android/server/connectivity/TetheringInjector;->sHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 82
    sput-boolean v2, Lcom/android/server/connectivity/TetheringInjector;->sIsRegisted:Z

    .line 84
    :cond_27
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.server.connectivity.Tethering.DisableTetheringAction"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 85
    .local v1, "intent":Landroid/content/Intent;
    const/4 v3, 0x0

    invoke-static {p0, v3, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 86
    .local v4, "pi":Landroid/app/PendingIntent;
    new-instance v5, Landroid/app/Notification$Action;

    const v6, 0x11020040

    const v7, 0x110b009a

    .line 87
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7, v4}, Landroid/app/Notification$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 88
    .local v5, "action":Landroid/app/Notification$Action;
    new-array v6, v2, [Landroid/app/Notification$Action;

    aput-object v5, v6, v3

    invoke-virtual {p1, v6}, Landroid/app/Notification$Builder;->setActions([Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 89
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 90
    .local v3, "bundle":Landroid/os/Bundle;
    const-string/jumbo v6, "miui.showAction"

    invoke-virtual {v3, v6, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 91
    invoke-virtual {p1, v3}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 92
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 93
    return-void
.end method
