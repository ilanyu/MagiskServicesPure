.class public Lcom/android/server/am/BatteryStatsServiceInjector;
.super Ljava/lang/Object;
.source "BatteryStatsServiceInjector.java"


# static fields
.field private static mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private static mFirstRecord:Z

.field private static mScreenState:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .line 16
    sget-boolean v0, Lcom/android/server/am/BatteryStatsServiceInjector;->mScreenState:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .line 16
    sput-boolean p0, Lcom/android/server/am/BatteryStatsServiceInjector;->mScreenState:Z

    return p0
.end method

.method static synthetic access$100()Z
    .registers 1

    .line 16
    sget-boolean v0, Lcom/android/server/am/BatteryStatsServiceInjector;->mFirstRecord:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .line 16
    sput-boolean p0, Lcom/android/server/am/BatteryStatsServiceInjector;->mFirstRecord:Z

    return p0
.end method

.method public static dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "writer"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 57
    const-string v0, "dump Uid SourceCollection:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 58
    invoke-static {p0, p1, p2}, Lcom/android/server/am/CpuTimeCollection;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public static registerReceiver(Landroid/content/Context;Landroid/os/Handler;Lcom/android/internal/os/BatteryStatsImpl;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "batteryStatsImpl"    # Lcom/android/internal/os/BatteryStatsImpl;

    .line 24
    sget-object v0, Lcom/android/server/am/BatteryStatsServiceInjector;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_5

    .line 25
    return-void

    .line 27
    :cond_5
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/am/BatteryStatsServiceInjector;->mFirstRecord:Z

    sput-boolean v0, Lcom/android/server/am/BatteryStatsServiceInjector;->mScreenState:Z

    .line 28
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 29
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 30
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 31
    new-instance v1, Lcom/android/server/am/BatteryStatsServiceInjector$1;

    invoke-direct {v1, p2}, Lcom/android/server/am/BatteryStatsServiceInjector$1;-><init>(Lcom/android/internal/os/BatteryStatsImpl;)V

    sput-object v1, Lcom/android/server/am/BatteryStatsServiceInjector;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 45
    sget-object v1, Lcom/android/server/am/BatteryStatsServiceInjector;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 46
    return-void
.end method

.method public static unRegisterReceiver(Landroid/content/Context;)V
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 49
    sget-object v0, Lcom/android/server/am/BatteryStatsServiceInjector;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_5

    .line 50
    return-void

    .line 52
    :cond_5
    sget-object v0, Lcom/android/server/am/BatteryStatsServiceInjector;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 53
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/BatteryStatsServiceInjector;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 54
    return-void
.end method
