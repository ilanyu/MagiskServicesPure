.class public Lcom/android/server/net/NetworkStatsServiceInjector;
.super Ljava/lang/Object;
.source "NetworkStatsServiceInjector.java"


# static fields
.field private static mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private static mHandler:Landroid/os/Handler;

.field private static mNetworkManager:Landroid/os/INetworkManagementService;

.field private static mScreenState:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .line 19
    sget-boolean v0, Lcom/android/server/net/NetworkStatsServiceInjector;->mScreenState:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .line 19
    sput-boolean p0, Lcom/android/server/net/NetworkStatsServiceInjector;->mScreenState:Z

    return p0
.end method

.method public static dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "writer"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 72
    const-string v0, "dump Uid SourceCollection:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 73
    invoke-static {p0, p1, p2}, Lcom/android/server/net/NetworkStatsActualCollection;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public static registerReceiver(Landroid/content/Context;Landroid/os/Looper;Landroid/os/INetworkManagementService;)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "networkManager"    # Landroid/os/INetworkManagementService;

    .line 28
    sget-object v0, Lcom/android/server/net/NetworkStatsServiceInjector;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_5

    .line 29
    return-void

    .line 31
    :cond_5
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/net/NetworkStatsServiceInjector;->mScreenState:Z

    .line 32
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 33
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 34
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 35
    new-instance v1, Lcom/android/server/net/NetworkStatsServiceInjector$1;

    invoke-direct {v1}, Lcom/android/server/net/NetworkStatsServiceInjector$1;-><init>()V

    sput-object v1, Lcom/android/server/net/NetworkStatsServiceInjector;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 54
    sput-object p2, Lcom/android/server/net/NetworkStatsServiceInjector;->mNetworkManager:Landroid/os/INetworkManagementService;

    .line 55
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/android/server/net/NetworkStatsServiceInjector;->mHandler:Landroid/os/Handler;

    .line 56
    sget-object v1, Lcom/android/server/net/NetworkStatsServiceInjector;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x0

    sget-object v3, Lcom/android/server/net/NetworkStatsServiceInjector;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1, v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 57
    return-void
.end method

.method public static unRegisterReceiver(Landroid/content/Context;)V
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 60
    sget-object v0, Lcom/android/server/net/NetworkStatsServiceInjector;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_5

    .line 61
    return-void

    .line 63
    :cond_5
    sget-object v0, Lcom/android/server/net/NetworkStatsServiceInjector;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 64
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/net/NetworkStatsServiceInjector;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 65
    return-void
.end method

.method public static updateForScreenChanged(Z)V
    .registers 2
    .param p0, "screenOn"    # Z

    .line 68
    sget-object v0, Lcom/android/server/net/NetworkStatsServiceInjector;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-static {v0, p0}, Lcom/android/server/net/NetworkStatsActualCollection;->updateNetworkStats(Landroid/os/INetworkManagementService;Z)V

    .line 69
    return-void
.end method
