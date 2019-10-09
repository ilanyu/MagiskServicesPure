.class Lcom/android/server/am/FindDeviceAliveChecker;
.super Ljava/lang/Object;
.source "FindDeviceAliveChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/FindDeviceAliveChecker$CheckFindDeviceHandler;
    }
.end annotation


# static fields
.field private static final CHECK_FINDDEVICE_DEFAULT_DELAY:J = 0x493e0L

.field private static final SHOW_WARNING_TOAST_INTERVAL:J = 0xea60L

.field private static sCheckFindDeviceHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 20
    new-instance v0, Lcom/android/server/am/FindDeviceAliveChecker$CheckFindDeviceHandler;

    .line 21
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/FindDeviceAliveChecker$CheckFindDeviceHandler;-><init>(Landroid/os/Looper;Lcom/android/server/am/FindDeviceAliveChecker$1;)V

    sput-object v0, Lcom/android/server/am/FindDeviceAliveChecker;->sCheckFindDeviceHandler:Landroid/os/Handler;

    .line 20
    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;)V
    .registers 1
    .param p0, "x0"    # Landroid/content/Context;

    .line 17
    invoke-static {p0}, Lcom/android/server/am/FindDeviceAliveChecker;->checkFindDeviceAlive(Landroid/content/Context;)V

    return-void
.end method

.method private static checkFindDeviceAlive(Landroid/content/Context;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 46
    sget-object v0, Lcom/android/server/am/FindDeviceAliveChecker;->sCheckFindDeviceHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 49
    invoke-static {p0}, Lcom/android/server/am/FindDeviceAliveChecker;->pingFindDevice(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 50
    invoke-static {p0}, Lcom/android/server/am/FindDeviceAliveChecker;->showWarningToast(Landroid/content/Context;)V

    .line 51
    const-wide/32 v0, 0xea60

    invoke-static {p0, v0, v1}, Lcom/android/server/am/FindDeviceAliveChecker;->postCheckFindDeviceAliveDelayedImmediately(Landroid/content/Context;J)V

    .line 53
    :cond_15
    return-void
.end method

.method private static getAMSContext()Landroid/content/Context;
    .registers 2

    .line 25
    const-string v0, "activity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityManagerService;

    .line 26
    .local v0, "ams":Lcom/android/server/am/ActivityManagerService;
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    return-object v1
.end method

.method private static pingFindDevice(Landroid/content/Context;)Z
    .registers 9
    .param p0, "context"    # Landroid/content/Context;

    .line 60
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 61
    .local v7, "resolver":Landroid/content/ContentResolver;
    const-string v0, "content://com.xiaomi.finddevice.ping.provider/ping"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    .line 64
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    if-eqz v0, :cond_2c

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_1e

    goto :goto_2c

    .line 68
    :cond_1e
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, "pingResult":Ljava/lang/String;
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 71
    const-string v2, "Ping! I\'m alive!"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 65
    .end local v1    # "pingResult":Ljava/lang/String;
    :cond_2c
    :goto_2c
    return v1
.end method

.method static postCheckFindDeviceAliveDelayed(Ljava/lang/String;)V
    .registers 4
    .param p0, "processName"    # Ljava/lang/String;

    .line 30
    const-string v0, "com.xiaomi.finddevice"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 31
    return-void

    .line 34
    :cond_9
    invoke-static {}, Lcom/android/server/am/FindDeviceAliveChecker;->getAMSContext()Landroid/content/Context;

    move-result-object v0

    const-wide/32 v1, 0x493e0

    invoke-static {v0, v1, v2}, Lcom/android/server/am/FindDeviceAliveChecker;->postCheckFindDeviceAliveDelayedImmediately(Landroid/content/Context;J)V

    .line 35
    return-void
.end method

.method private static postCheckFindDeviceAliveDelayedImmediately(Landroid/content/Context;J)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "delay"    # J

    .line 38
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 39
    .local v0, "msg":Landroid/os/Message;
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 40
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 42
    sget-object v1, Lcom/android/server/am/FindDeviceAliveChecker;->sCheckFindDeviceHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 43
    return-void
.end method

.method private static showWarningToast(Landroid/content/Context;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 56
    const-string v0, "FindDevice has been destroyed."

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 57
    return-void
.end method
