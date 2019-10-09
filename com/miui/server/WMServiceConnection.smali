.class public Lcom/miui/server/WMServiceConnection;
.super Ljava/lang/Object;
.source "WMServiceConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field private static final ACTION:Ljava/lang/String; = "com.miui.wmsvc.LINK"

.field private static final BIND_DELAY:I = 0xea60

.field private static final MAX_DEATH_COUNT_IN_ONE_DAY:I = 0x3

.field private static final MAX_DEATH_COUNT_IN_TOTAL:I = 0xa

.field private static final ONE_DAY_IN_MILLISECONDS:I = 0x5265c00

.field private static final PACKAGE_NAME:Ljava/lang/String; = "com.miui.wmsvc"

.field private static final TAG:Ljava/lang/String; = "WMServiceConnection"


# instance fields
.field private mBindRunnable:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field mDeathHandler:Landroid/os/IBinder$DeathRecipient;

.field private mDeathTimes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lcom/miui/server/WMServiceConnection$1;

    invoke-direct {v0, p0}, Lcom/miui/server/WMServiceConnection$1;-><init>(Lcom/miui/server/WMServiceConnection;)V

    iput-object v0, p0, Lcom/miui/server/WMServiceConnection;->mBindRunnable:Ljava/lang/Runnable;

    .line 120
    new-instance v0, Lcom/miui/server/WMServiceConnection$2;

    invoke-direct {v0, p0}, Lcom/miui/server/WMServiceConnection$2;-><init>(Lcom/miui/server/WMServiceConnection;)V

    iput-object v0, p0, Lcom/miui/server/WMServiceConnection;->mDeathHandler:Landroid/os/IBinder$DeathRecipient;

    .line 31
    iput-object p1, p0, Lcom/miui/server/WMServiceConnection;->mContext:Landroid/content/Context;

    .line 32
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/miui/server/WMServiceConnection;->mHandler:Landroid/os/Handler;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/miui/server/WMServiceConnection;->mDeathTimes:Ljava/util/List;

    .line 34
    invoke-direct {p0}, Lcom/miui/server/WMServiceConnection;->bindDelay()V

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/miui/server/WMServiceConnection;)Z
    .registers 2
    .param p0, "x0"    # Lcom/miui/server/WMServiceConnection;

    .line 16
    invoke-direct {p0}, Lcom/miui/server/WMServiceConnection;->shouldBind()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/miui/server/WMServiceConnection;)V
    .registers 1
    .param p0, "x0"    # Lcom/miui/server/WMServiceConnection;

    .line 16
    invoke-direct {p0}, Lcom/miui/server/WMServiceConnection;->bind()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/server/WMServiceConnection;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/miui/server/WMServiceConnection;

    .line 16
    iget-object v0, p0, Lcom/miui/server/WMServiceConnection;->mDeathTimes:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/server/WMServiceConnection;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/miui/server/WMServiceConnection;

    .line 16
    iget-object v0, p0, Lcom/miui/server/WMServiceConnection;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/server/WMServiceConnection;)V
    .registers 1
    .param p0, "x0"    # Lcom/miui/server/WMServiceConnection;

    .line 16
    invoke-direct {p0}, Lcom/miui/server/WMServiceConnection;->bindDelay()V

    return-void
.end method

.method private bind()V
    .registers 4

    .line 57
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.wmsvc.LINK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 58
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.miui.wmsvc"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    iget-object v1, p0, Lcom/miui/server/WMServiceConnection;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 60
    const-string v1, "WMServiceConnection"

    const-string v2, "Bind Inspector success!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    .line 62
    :cond_1d
    const-string v1, "WMServiceConnection"

    const-string v2, "Bind Inspector failed!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_24} :catch_25

    .line 66
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_24
    goto :goto_2d

    .line 64
    :catch_25
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "WMServiceConnection"

    const-string v2, "Bind Inspector failed"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2d
    return-void
.end method

.method private bindDelay()V
    .registers 5

    .line 38
    const-string v0, "WMServiceConnection"

    const-string/jumbo v1, "schedule bind in 60000ms"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iget-object v0, p0, Lcom/miui/server/WMServiceConnection;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/server/WMServiceConnection;->mBindRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 40
    iget-object v0, p0, Lcom/miui/server/WMServiceConnection;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/server/WMServiceConnection;->mBindRunnable:Ljava/lang/Runnable;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 41
    return-void
.end method

.method private shouldBind()Z
    .registers 9

    .line 92
    iget-object v0, p0, Lcom/miui/server/WMServiceConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/MiuiSettings$Secure;->isHttpInvokeAppEnable(Landroid/content/ContentResolver;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_15

    .line 93
    const-string v0, "WMServiceConnection"

    const-string v2, "Cancel bind for http invoke disabled"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return v1

    .line 96
    :cond_15
    iget-object v0, p0, Lcom/miui/server/WMServiceConnection;->mRemote:Landroid/os/IBinder;

    if-eqz v0, :cond_21

    .line 97
    const-string v0, "WMServiceConnection"

    const-string v2, "Cancel bind for connected"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    return v1

    .line 101
    :cond_21
    iget-object v0, p0, Lcom/miui/server/WMServiceConnection;->mDeathTimes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v2, 0xa

    if-lt v0, v2, :cond_33

    .line 102
    const-string v0, "WMServiceConnection"

    const-string v2, "Cancel bind for MAX_DEATH_COUNT_IN_TOTAL reached"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return v1

    .line 106
    :cond_33
    iget-object v0, p0, Lcom/miui/server/WMServiceConnection;->mDeathTimes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x3

    if-lt v0, v2, :cond_74

    .line 107
    iget-object v0, p0, Lcom/miui/server/WMServiceConnection;->mDeathTimes:Ljava/util/List;

    iget-object v3, p0, Lcom/miui/server/WMServiceConnection;->mDeathTimes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 108
    .local v2, "time":J
    const-wide/32 v4, 0x5265c00

    add-long/2addr v4, v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 109
    .local v4, "delay":J
    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_74

    .line 110
    const-string v0, "WMServiceConnection"

    const-string v6, "Cancel bind for MAX_DEATH_COUNT_IN_ONE_DAY reached"

    invoke-static {v0, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v0, p0, Lcom/miui/server/WMServiceConnection;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/miui/server/WMServiceConnection;->mBindRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 112
    iget-object v0, p0, Lcom/miui/server/WMServiceConnection;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/miui/server/WMServiceConnection;->mBindRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v6, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 113
    return v1

    .line 117
    .end local v2    # "time":J
    .end local v4    # "delay":J
    :cond_74
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 71
    iput-object p2, p0, Lcom/miui/server/WMServiceConnection;->mRemote:Landroid/os/IBinder;

    .line 72
    iget-object v0, p0, Lcom/miui/server/WMServiceConnection;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/server/WMServiceConnection;->mBindRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 74
    :try_start_9
    iget-object v0, p0, Lcom/miui/server/WMServiceConnection;->mRemote:Landroid/os/IBinder;

    iget-object v1, p0, Lcom/miui/server/WMServiceConnection;->mDeathHandler:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_11} :catch_12

    .line 77
    goto :goto_1b

    .line 75
    :catch_12
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "WMServiceConnection"

    const-string/jumbo v2, "linkToDeath failed"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1b
    const-string v0, "WMServiceConnection"

    const-string/jumbo v1, "onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/server/WMServiceConnection;->mRemote:Landroid/os/IBinder;

    .line 84
    const-string v0, "WMServiceConnection"

    const-string/jumbo v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v0, p0, Lcom/miui/server/WMServiceConnection;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_14

    .line 86
    iget-object v0, p0, Lcom/miui/server/WMServiceConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 88
    :cond_14
    return-void
.end method
