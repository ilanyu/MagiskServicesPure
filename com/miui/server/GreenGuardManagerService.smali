.class public Lcom/miui/server/GreenGuardManagerService;
.super Ljava/lang/Object;
.source "GreenGuardManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/server/GreenGuardManagerService$GreenguardServiceConn;
    }
.end annotation


# static fields
.field public static final GREEN_KID_AGENT_PKG_NAME:Ljava/lang/String; = "com.miui.greenguard"

.field public static final GREEN_KID_SERVICE:Ljava/lang/String; = "com.miui.greenguard.service.GreenKidService"

.field private static final TAG:Ljava/lang/String; = "GreenKidManagerService"

.field private static TIME_DELAY:J

.field private static mGreenGuardServiceConnection:Landroid/content/ServiceConnection;

.field private static mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 26
    const-wide/16 v0, 0x2710

    sput-wide v0, Lcom/miui/server/GreenGuardManagerService;->TIME_DELAY:J

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;)V
    .registers 1
    .param p0, "x0"    # Landroid/content/Context;

    .line 20
    invoke-static {p0}, Lcom/miui/server/GreenGuardManagerService;->startWatchGreenguardProcessInner(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200()J
    .registers 2

    .line 20
    sget-wide v0, Lcom/miui/server/GreenGuardManagerService;->TIME_DELAY:J

    return-wide v0
.end method

.method static synthetic access$300()Landroid/os/Handler;
    .registers 1

    .line 20
    sget-object v0, Lcom/miui/server/GreenGuardManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private static disableAgentProcess(Landroid/content/Context;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 34
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 36
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    :try_start_4
    const-string v1, "com.miui.greenguard"

    const/16 v2, 0x2000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 37
    const-string v1, "com.miui.greenguard"

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 38
    const-string v1, "GreenKidManagerService"

    const-string v2, "Disable GreenGuard agent : [ com.miui.greenguard] ."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1c} :catch_1d

    .line 42
    :cond_1c
    goto :goto_25

    .line 40
    :catch_1d
    move-exception v1

    .line 41
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "GreenKidManagerService"

    const-string v3, "Disable greenGuard agent : [ com.miui.greenguard] failed , package not install"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 43
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_25
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 28
    invoke-static {p0}, Lcom/miui/server/GreenGuardManagerService;->isGreenKidActive(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {p0}, Lcom/miui/server/GreenGuardManagerService;->isGreenKidNeedWipe(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 29
    invoke-static {p0}, Lcom/miui/server/GreenGuardManagerService;->disableAgentProcess(Landroid/content/Context;)V

    .line 31
    :cond_f
    return-void
.end method

.method private static isGreenKidActive(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 46
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/MiuiSettings$Secure;->isGreenKidActive(Landroid/content/ContentResolver;)Z

    move-result v0

    return v0
.end method

.method private static isGreenKidNeedWipe(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "key_url_green_guard_sdk_need_clear_data"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    goto :goto_11

    :cond_10
    move v1, v2

    :goto_11
    return v1
.end method

.method public static startWatchGreenguardProcess(Landroid/content/Context;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .line 54
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 55
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 56
    .local v1, "callingPid":I
    invoke-static {v1}, Lcom/android/server/am/ExtraActivityManagerService;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object v2

    .line 57
    .local v2, "callingPackageName":Ljava/lang/String;
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    const/16 v4, 0x3e8

    if-eq v3, v4, :cond_4e

    const-string v3, "com.miui.greenguard"

    .line 58
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4e

    .line 59
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "callingPkg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    if-nez v2, :cond_3b

    const-string v4, ""

    goto :goto_3c

    :cond_3b
    move-object v4, v2

    :goto_3c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 61
    .local v3, "msg":Ljava/lang/String;
    const-string v4, "GreenKidManagerService"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    new-instance v4, Ljava/lang/SecurityException;

    invoke-direct {v4, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 64
    .end local v3    # "msg":Ljava/lang/String;
    :cond_4e
    invoke-static {p0}, Lcom/miui/server/GreenGuardManagerService;->startWatchGreenguardProcessInner(Landroid/content/Context;)V

    .line 65
    return-void
.end method

.method private static declared-synchronized startWatchGreenguardProcessInner(Landroid/content/Context;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/miui/server/GreenGuardManagerService;

    monitor-enter v0

    .line 68
    :try_start_3
    sget-object v1, Lcom/miui/server/GreenGuardManagerService;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_25

    .line 69
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "GreenKidManagerService"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 70
    .local v1, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 71
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v2, Lcom/miui/server/GreenGuardManagerService;->mHandler:Landroid/os/Handler;

    .line 72
    new-instance v2, Lcom/miui/server/GreenGuardManagerService$GreenguardServiceConn;

    invoke-direct {v2, p0}, Lcom/miui/server/GreenGuardManagerService$GreenguardServiceConn;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/miui/server/GreenGuardManagerService;->mGreenGuardServiceConnection:Landroid/content/ServiceConnection;

    .line 74
    .end local v1    # "handlerThread":Landroid/os/HandlerThread;
    :cond_25
    const-string v1, "GreenKidManagerService"

    const-string/jumbo v2, "startWatchGreenguardProcess"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 76
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.miui.greenguard"

    const-string v4, "com.miui.greenguard.service.GreenKidService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 77
    sget-object v2, Lcom/miui/server/GreenGuardManagerService;->mGreenGuardServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_44
    .catchall {:try_start_3 .. :try_end_44} :catchall_46

    .line 78
    monitor-exit v0

    return-void

    .line 67
    .end local v1    # "intent":Landroid/content/Intent;
    .end local p0    # "context":Landroid/content/Context;
    :catchall_46
    move-exception p0

    monitor-exit v0

    throw p0
.end method
