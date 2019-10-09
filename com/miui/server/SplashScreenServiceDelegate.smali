.class public final Lcom/miui/server/SplashScreenServiceDelegate;
.super Ljava/lang/Object;
.source "SplashScreenServiceDelegate.java"


# static fields
.field private static final ACTION_DEBUG_OFF:Ljava/lang/String; = "miui.intent.action.ad.DEBUG_OFF"

.field private static final ACTION_DEBUG_ON:Ljava/lang/String; = "miui.intent.action.ad.DEBUG_ON"

.field private static final DELAY_BIND_AFTER_BOOT_COMPLETE:J = 0x1d4c0L

.field private static final KEY_API_VERSION:Ljava/lang/String; = "apiVersion"

.field private static final MAX_DELAY_TIME:J = 0x36ee80L

.field private static final MIUI_GENERAL_PERMISSION:Ljava/lang/String; = "miui.permission.USE_INTERNAL_GENERAL_API"

.field private static final MSG_REBIND:I = 0x1

.field public static final SPLASHSCREEN_ACTIVITY:Ljava/lang/String; = "com.miui.systemAdSolution.splashscreen.SplashActivity"

.field private static final SPLASHSCREEN_CLASS:Ljava/lang/String; = "com.miui.systemAdSolution.splashscreen.SplashScreenService"

.field public static final SPLASHSCREEN_GLOBAL_PACKAGE:Ljava/lang/String; = "com.miui.msa.global"

.field public static final SPLASHSCREEN_PACKAGE:Ljava/lang/String; = "com.miui.systemAdSolution"

.field private static final TAG:Ljava/lang/String; = "SplashScreenServiceDelegate"

.field private static final VALUE_API_VERSION:I = 0x2

.field private static sDebug:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDeathHandler:Landroid/os/IBinder$DeathRecipient;

.field private mDelayTime:J

.field private final mHandler:Landroid/os/Handler;

.field private mRebindCount:I

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSeverity:I

.field private mSplashPackageCheckInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/miui/server/SplashPackageCheckInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSplashPackageCheckListener:Lcom/miui/server/ISplashPackageCheckListener;

.field private final mSplashScreenConnection:Landroid/content/ServiceConnection;

.field private mSplashScreenService:Lcom/miui/server/ISplashScreenService;

.field private mStartTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mSplashPackageCheckInfoMap:Ljava/util/Map;

    .line 76
    new-instance v0, Lcom/miui/server/SplashScreenServiceDelegate$1;

    invoke-direct {v0, p0}, Lcom/miui/server/SplashScreenServiceDelegate$1;-><init>(Lcom/miui/server/SplashScreenServiceDelegate;)V

    iput-object v0, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 163
    new-instance v0, Lcom/miui/server/SplashScreenServiceDelegate$2;

    invoke-direct {v0, p0}, Lcom/miui/server/SplashScreenServiceDelegate$2;-><init>(Lcom/miui/server/SplashScreenServiceDelegate;)V

    iput-object v0, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mSplashScreenConnection:Landroid/content/ServiceConnection;

    .line 238
    new-instance v0, Lcom/miui/server/SplashScreenServiceDelegate$3;

    invoke-direct {v0, p0}, Lcom/miui/server/SplashScreenServiceDelegate$3;-><init>(Lcom/miui/server/SplashScreenServiceDelegate;)V

    iput-object v0, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mDeathHandler:Landroid/os/IBinder$DeathRecipient;

    .line 246
    new-instance v0, Lcom/miui/server/SplashScreenServiceDelegate$4;

    invoke-direct {v0, p0}, Lcom/miui/server/SplashScreenServiceDelegate$4;-><init>(Lcom/miui/server/SplashScreenServiceDelegate;)V

    iput-object v0, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mSplashPackageCheckListener:Lcom/miui/server/ISplashPackageCheckListener;

    .line 385
    new-instance v0, Lcom/miui/server/SplashScreenServiceDelegate$5;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/server/SplashScreenServiceDelegate$5;-><init>(Lcom/miui/server/SplashScreenServiceDelegate;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mHandler:Landroid/os/Handler;

    .line 69
    iput-object p1, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mContext:Landroid/content/Context;

    .line 70
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v0, :cond_45

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v1, "userdebug"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_43

    goto :goto_45

    :cond_43
    const/4 v0, 0x0

    goto :goto_46

    :cond_45
    :goto_45
    const/4 v0, 0x1

    :goto_46
    sput-boolean v0, Lcom/miui/server/SplashScreenServiceDelegate;->sDebug:Z

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Debug "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/miui/server/SplashScreenServiceDelegate;->sDebug:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/server/SplashScreenServiceDelegate;->logI(Ljava/lang/String;)V

    .line 73
    invoke-direct {p0}, Lcom/miui/server/SplashScreenServiceDelegate;->registerReceiver()V

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/miui/server/SplashScreenServiceDelegate;Ljava/lang/String;Z)V
    .registers 3
    .param p0, "x0"    # Lcom/miui/server/SplashScreenServiceDelegate;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/miui/server/SplashScreenServiceDelegate;->logI(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/server/SplashScreenServiceDelegate;)V
    .registers 1
    .param p0, "x0"    # Lcom/miui/server/SplashScreenServiceDelegate;

    .line 30
    invoke-direct {p0}, Lcom/miui/server/SplashScreenServiceDelegate;->delayToBindServiceAfterBootCompleted()V

    return-void
.end method

.method static synthetic access$1000(Lcom/miui/server/SplashScreenServiceDelegate;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/miui/server/SplashScreenServiceDelegate;

    .line 30
    iget-object v0, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/miui/server/SplashScreenServiceDelegate;)Landroid/content/ServiceConnection;
    .registers 2
    .param p0, "x0"    # Lcom/miui/server/SplashScreenServiceDelegate;

    .line 30
    iget-object v0, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mSplashScreenConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/miui/server/SplashScreenServiceDelegate;)Lcom/miui/server/ISplashPackageCheckListener;
    .registers 2
    .param p0, "x0"    # Lcom/miui/server/SplashScreenServiceDelegate;

    .line 30
    iget-object v0, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mSplashPackageCheckListener:Lcom/miui/server/ISplashPackageCheckListener;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/miui/server/SplashScreenServiceDelegate;)V
    .registers 1
    .param p0, "x0"    # Lcom/miui/server/SplashScreenServiceDelegate;

    .line 30
    invoke-direct {p0}, Lcom/miui/server/SplashScreenServiceDelegate;->delayToRebindService()V

    return-void
.end method

.method static synthetic access$1400(Lcom/miui/server/SplashScreenServiceDelegate;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/miui/server/SplashScreenServiceDelegate;

    .line 30
    iget-object v0, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mSplashPackageCheckInfoMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/miui/server/SplashScreenServiceDelegate;Lcom/miui/server/SplashPackageCheckInfo;)Z
    .registers 3
    .param p0, "x0"    # Lcom/miui/server/SplashScreenServiceDelegate;
    .param p1, "x1"    # Lcom/miui/server/SplashPackageCheckInfo;

    .line 30
    invoke-direct {p0, p1}, Lcom/miui/server/SplashScreenServiceDelegate;->checkSplashPackageCheckInfo(Lcom/miui/server/SplashPackageCheckInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/miui/server/SplashScreenServiceDelegate;Lcom/miui/server/SplashPackageCheckInfo;)V
    .registers 2
    .param p0, "x0"    # Lcom/miui/server/SplashScreenServiceDelegate;
    .param p1, "x1"    # Lcom/miui/server/SplashPackageCheckInfo;

    .line 30
    invoke-direct {p0, p1}, Lcom/miui/server/SplashScreenServiceDelegate;->keepSplashPackageCheckInfo(Lcom/miui/server/SplashPackageCheckInfo;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/miui/server/SplashScreenServiceDelegate;)V
    .registers 1
    .param p0, "x0"    # Lcom/miui/server/SplashScreenServiceDelegate;

    .line 30
    invoke-direct {p0}, Lcom/miui/server/SplashScreenServiceDelegate;->bindService()V

    return-void
.end method

.method static synthetic access$202(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .line 30
    sput-boolean p0, Lcom/miui/server/SplashScreenServiceDelegate;->sDebug:Z

    return p0
.end method

.method static synthetic access$300(Lcom/miui/server/SplashScreenServiceDelegate;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/miui/server/SplashScreenServiceDelegate;
    .param p1, "x1"    # Ljava/lang/String;

    .line 30
    invoke-direct {p0, p1}, Lcom/miui/server/SplashScreenServiceDelegate;->logI(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/server/SplashScreenServiceDelegate;)Lcom/miui/server/ISplashScreenService;
    .registers 2
    .param p0, "x0"    # Lcom/miui/server/SplashScreenServiceDelegate;

    .line 30
    iget-object v0, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mSplashScreenService:Lcom/miui/server/ISplashScreenService;

    return-object v0
.end method

.method static synthetic access$402(Lcom/miui/server/SplashScreenServiceDelegate;Lcom/miui/server/ISplashScreenService;)Lcom/miui/server/ISplashScreenService;
    .registers 2
    .param p0, "x0"    # Lcom/miui/server/SplashScreenServiceDelegate;
    .param p1, "x1"    # Lcom/miui/server/ISplashScreenService;

    .line 30
    iput-object p1, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mSplashScreenService:Lcom/miui/server/ISplashScreenService;

    return-object p1
.end method

.method static synthetic access$502(Lcom/miui/server/SplashScreenServiceDelegate;J)J
    .registers 3
    .param p0, "x0"    # Lcom/miui/server/SplashScreenServiceDelegate;
    .param p1, "x1"    # J

    .line 30
    iput-wide p1, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mStartTime:J

    return-wide p1
.end method

.method static synthetic access$602(Lcom/miui/server/SplashScreenServiceDelegate;I)I
    .registers 2
    .param p0, "x0"    # Lcom/miui/server/SplashScreenServiceDelegate;
    .param p1, "x1"    # I

    .line 30
    iput p1, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mRebindCount:I

    return p1
.end method

.method static synthetic access$700(Lcom/miui/server/SplashScreenServiceDelegate;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/miui/server/SplashScreenServiceDelegate;

    .line 30
    iget-object v0, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/miui/server/SplashScreenServiceDelegate;)Landroid/os/IBinder$DeathRecipient;
    .registers 2
    .param p0, "x0"    # Lcom/miui/server/SplashScreenServiceDelegate;

    .line 30
    iget-object v0, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mDeathHandler:Landroid/os/IBinder$DeathRecipient;

    return-object v0
.end method

.method static synthetic access$900(Lcom/miui/server/SplashScreenServiceDelegate;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p0, "x0"    # Lcom/miui/server/SplashScreenServiceDelegate;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Throwable;

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/miui/server/SplashScreenServiceDelegate;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private bindService()V
    .registers 6

    .line 119
    iget-object v0, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mSplashScreenService:Lcom/miui/server/ISplashScreenService;

    if-nez v0, :cond_48

    .line 121
    :try_start_8
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 122
    .local v0, "intent":Landroid/content/Intent;
    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v1, :cond_19

    .line 123
    const-string v1, "com.miui.msa.global"

    const-string v2, "com.miui.systemAdSolution.splashscreen.SplashScreenService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_20

    .line 125
    :cond_19
    const-string v1, "com.miui.systemAdSolution"

    const-string v2, "com.miui.systemAdSolution.splashscreen.SplashScreenService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    :goto_20
    const-string v1, "apiVersion"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 129
    iget-object v1, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mSplashScreenConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x5

    sget-object v4, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_3c

    .line 131
    const-string v1, "Can\'t bound to SplashScreenService, com.miui.systemAdSolution.splashscreen.SplashScreenService"

    invoke-direct {p0, v1}, Lcom/miui/server/SplashScreenServiceDelegate;->logW(Ljava/lang/String;)V

    .line 132
    invoke-direct {p0}, Lcom/miui/server/SplashScreenServiceDelegate;->delayToRebindService()V

    goto :goto_41

    .line 134
    :cond_3c
    const-string v1, "SplashScreenService started"

    invoke-direct {p0, v1}, Lcom/miui/server/SplashScreenServiceDelegate;->logI(Ljava/lang/String;)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_41} :catch_42

    .line 138
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_41
    goto :goto_48

    .line 136
    :catch_42
    move-exception v0

    .line 137
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Can not start splash screen service!"

    invoke-direct {p0, v1, v0}, Lcom/miui/server/SplashScreenServiceDelegate;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 140
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_48
    :goto_48
    return-void
.end method

.method private calcDelayTime()J
    .registers 16

    .line 208
    const-wide/16 v0, 0x2710

    .line 209
    .local v0, "tenSeconds":J
    const-wide/32 v2, 0xea60

    .line 210
    .local v2, "minute":J
    const-wide/32 v4, 0x36ee80

    .line 211
    .local v4, "hour":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mStartTime:J

    sub-long/2addr v6, v8

    .line 213
    .local v6, "aliveTime":J
    cmp-long v8, v6, v2

    if-gez v8, :cond_15

    .line 214
    const/4 v8, 0x1

    .local v8, "severity":I
    :goto_14
    goto :goto_1c

    .line 215
    .end local v8    # "severity":I
    :cond_15
    cmp-long v8, v6, v4

    if-gez v8, :cond_1b

    .line 216
    const/4 v8, 0x2

    goto :goto_14

    .line 218
    :cond_1b
    const/4 v8, 0x3

    .line 220
    .restart local v8    # "severity":I
    :goto_1c
    iget v9, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mSeverity:I

    if-ne v8, v9, :cond_37

    .line 221
    const/4 v9, 0x1

    if-ne v8, v9, :cond_2b

    .line 222
    iget-wide v9, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mDelayTime:J

    const-wide/16 v11, 0x2

    mul-long/2addr v9, v11

    iput-wide v9, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mDelayTime:J

    goto :goto_39

    .line 223
    :cond_2b
    const/4 v9, 0x2

    if-ne v8, v9, :cond_34

    .line 224
    iget-wide v9, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mDelayTime:J

    add-long/2addr v9, v0

    iput-wide v9, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mDelayTime:J

    goto :goto_39

    .line 226
    :cond_34
    iput-wide v0, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mDelayTime:J

    goto :goto_39

    .line 229
    :cond_37
    iput-wide v0, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mDelayTime:J

    .line 231
    :goto_39
    iget-wide v9, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mDelayTime:J

    iget-wide v11, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mDelayTime:J

    iget v13, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mRebindCount:I

    int-to-long v13, v13

    mul-long/2addr v11, v13

    add-long/2addr v9, v11

    iput-wide v9, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mDelayTime:J

    .line 232
    iget-wide v9, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mDelayTime:J

    const-wide/32 v11, 0x36ee80

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    iput-wide v9, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mDelayTime:J

    .line 233
    iput v8, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mSeverity:I

    .line 234
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Restart SplashScreenService delay time "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mDelayTime:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/miui/server/SplashScreenServiceDelegate;->logI(Ljava/lang/String;)V

    .line 235
    iget-wide v9, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mDelayTime:J

    return-wide v9
.end method

.method private checkSplashPackageCheckInfo(Lcom/miui/server/SplashPackageCheckInfo;)Z
    .registers 3
    .param p1, "splashPackageCheckInfo"    # Lcom/miui/server/SplashPackageCheckInfo;

    .line 317
    if-eqz p1, :cond_1e

    .line 318
    invoke-virtual {p1}, Lcom/miui/server/SplashPackageCheckInfo;->getSplashPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 320
    invoke-virtual {p1}, Lcom/miui/server/SplashPackageCheckInfo;->isExpired()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 322
    invoke-virtual {p1}, Lcom/miui/server/SplashPackageCheckInfo;->getSplashPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/server/SplashScreenServiceDelegate;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    .line 317
    :goto_1f
    return v0
.end method

.method private delayToBindServiceAfterBootCompleted()V
    .registers 4

    .line 146
    const-wide/32 v0, 0x1d4c0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/server/SplashScreenServiceDelegate;->delayToRebindService(JZ)V

    .line 147
    return-void
.end method

.method private delayToRebindService()V
    .registers 4

    .line 150
    invoke-direct {p0}, Lcom/miui/server/SplashScreenServiceDelegate;->calcDelayTime()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/server/SplashScreenServiceDelegate;->delayToRebindService(JZ)V

    .line 151
    return-void
.end method

.method private delayToRebindService(JZ)V
    .registers 7
    .param p1, "delayTime"    # J
    .param p3, "increaseRebindCount"    # Z

    .line 154
    iget-object v0, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 155
    iget-object v0, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 156
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 157
    if-eqz p3, :cond_18

    .line 158
    iget v2, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mRebindCount:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mRebindCount:I

    .line 160
    :cond_18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SplashScreenService rebind count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mRebindCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/server/SplashScreenServiceDelegate;->logI(Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method private getPackageName(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;
    .registers 3
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;

    .line 382
    if-eqz p1, :cond_b

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_b

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method private isPackageInstalled(Ljava/lang/String;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 327
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 328
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_13

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_14

    if-eqz v2, :cond_13

    const/4 v0, 0x1

    nop

    :cond_13
    return v0

    .line 329
    .end local v1    # "pi":Landroid/content/pm/PackageInfo;
    :catch_14
    move-exception v1

    .line 332
    return v0
.end method

.method private isSplashPackage(Ljava/lang/String;)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 285
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 286
    return v1

    .line 289
    :cond_8
    iget-object v0, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mSplashPackageCheckInfoMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 292
    const-string v0, "Empty check list, check all"

    invoke-direct {p0, v0}, Lcom/miui/server/SplashScreenServiceDelegate;->logI(Ljava/lang/String;)V

    .line 293
    const/4 v0, 0x1

    return v0

    .line 296
    :cond_17
    iget-object v0, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mSplashPackageCheckInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/server/SplashPackageCheckInfo;

    .line 297
    .local v0, "info":Lcom/miui/server/SplashPackageCheckInfo;
    if-nez v0, :cond_36

    .line 298
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "None for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/miui/server/SplashScreenServiceDelegate;->logI(Ljava/lang/String;)V

    .line 299
    return v1

    .line 302
    :cond_36
    invoke-virtual {v0}, Lcom/miui/server/SplashPackageCheckInfo;->isExpired()Z

    move-result v2

    if-eqz v2, :cond_56

    .line 303
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " is expired, remove it"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/miui/server/SplashScreenServiceDelegate;->logI(Ljava/lang/String;)V

    .line 305
    iget-object v2, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mSplashPackageCheckInfoMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    return v1

    .line 309
    :cond_56
    invoke-virtual {v0}, Lcom/miui/server/SplashPackageCheckInfo;->matchTime()Z

    move-result v1

    .line 310
    .local v1, "mt":Z
    if-nez v1, :cond_70

    .line 311
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mismatch time for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/miui/server/SplashScreenServiceDelegate;->logI(Ljava/lang/String;)V

    .line 313
    :cond_70
    return v1
.end method

.method private keepSplashPackageCheckInfo(Lcom/miui/server/SplashPackageCheckInfo;)V
    .registers 4
    .param p1, "splashPackageCheckInfo"    # Lcom/miui/server/SplashPackageCheckInfo;

    .line 281
    iget-object v0, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mSplashPackageCheckInfoMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/miui/server/SplashPackageCheckInfo;->getSplashPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    return-void
.end method

.method private logCost(Ljava/lang/String;JLandroid/content/pm/ActivityInfo;)V
    .registers 8
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "startTime"    # J
    .param p4, "aInfo"    # Landroid/content/pm/ActivityInfo;

    .line 398
    sget-boolean v0, Lcom/miui/server/SplashScreenServiceDelegate;->sDebug:Z

    if-eqz v0, :cond_2d

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ms, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Lcom/miui/server/SplashScreenServiceDelegate;->getPackageName(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/server/SplashScreenServiceDelegate;->logI(Ljava/lang/String;)V

    .line 401
    :cond_2d
    return-void
.end method

.method private logE(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 418
    const-string v0, "SplashScreenServiceDelegate"

    invoke-static {v0, p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 419
    return-void
.end method

.method private logI(Ljava/lang/String;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 404
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/server/SplashScreenServiceDelegate;->logI(Ljava/lang/String;Z)V

    .line 405
    return-void
.end method

.method private logI(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "force"    # Z

    .line 408
    sget-boolean v0, Lcom/miui/server/SplashScreenServiceDelegate;->sDebug:Z

    if-nez v0, :cond_6

    if-eqz p2, :cond_b

    .line 409
    :cond_6
    const-string v0, "SplashScreenServiceDelegate"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :cond_b
    return-void
.end method

.method private logW(Ljava/lang/String;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 414
    const-string v0, "SplashScreenServiceDelegate"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    return-void
.end method

.method private registerReceiver()V
    .registers 9

    .line 100
    const-string v0, "Register BOOT_COMPLETED receiver"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/miui/server/SplashScreenServiceDelegate;->logI(Ljava/lang/String;Z)V

    .line 101
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 102
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 103
    iget-object v2, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, v0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 105
    const-string v2, "Register debugger receiver"

    invoke-direct {p0, v2, v1}, Lcom/miui/server/SplashScreenServiceDelegate;->logI(Ljava/lang/String;Z)V

    .line 106
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    move-object v0, v1

    .line 107
    const-string/jumbo v1, "miui.intent.action.ad.DEBUG_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 108
    iget-object v2, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const-string/jumbo v6, "miui.permission.USE_INTERNAL_GENERAL_API"

    move-object v5, v0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 110
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    move-object v0, v1

    .line 111
    const-string/jumbo v1, "miui.intent.action.ad.DEBUG_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    iget-object v2, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const-string/jumbo v6, "miui.permission.USE_INTERNAL_GENERAL_API"

    move-object v5, v0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 115
    const-wide/32 v1, 0x927c0

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/miui/server/SplashScreenServiceDelegate;->delayToRebindService(JZ)V

    .line 116
    return-void
.end method


# virtual methods
.method public activityIdle(Landroid/content/pm/ActivityInfo;)V
    .registers 7
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;

    .line 354
    iget-object v0, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mSplashScreenService:Lcom/miui/server/ISplashScreenService;

    .line 355
    .local v0, "sss":Lcom/miui/server/ISplashScreenService;
    if-eqz v0, :cond_2a

    invoke-direct {p0, p1}, Lcom/miui/server/SplashScreenServiceDelegate;->getPackageName(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/server/SplashScreenServiceDelegate;->isSplashPackage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 356
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 358
    .local v1, "startTime":J
    :try_start_12
    invoke-interface {v0, p1}, Lcom/miui/server/ISplashScreenService;->activityIdle(Landroid/content/pm/ActivityInfo;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_15} :catch_1d
    .catchall {:try_start_12 .. :try_end_15} :catchall_1b

    .line 362
    :goto_15
    const-string v3, "activityIdle"

    invoke-direct {p0, v3, v1, v2, p1}, Lcom/miui/server/SplashScreenServiceDelegate;->logCost(Ljava/lang/String;JLandroid/content/pm/ActivityInfo;)V

    .line 363
    goto :goto_2a

    .line 362
    :catchall_1b
    move-exception v3

    goto :goto_24

    .line 359
    :catch_1d
    move-exception v3

    .line 360
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1e
    const-string v4, "activityIdle exception"

    invoke-direct {p0, v4, v3}, Lcom/miui/server/SplashScreenServiceDelegate;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_23
    .catchall {:try_start_1e .. :try_end_23} :catchall_1b

    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_15

    .line 362
    :goto_24
    const-string v4, "activityIdle"

    invoke-direct {p0, v4, v1, v2, p1}, Lcom/miui/server/SplashScreenServiceDelegate;->logCost(Ljava/lang/String;JLandroid/content/pm/ActivityInfo;)V

    throw v3

    .line 365
    .end local v1    # "startTime":J
    :cond_2a
    :goto_2a
    return-void
.end method

.method public destroyActivity(Landroid/content/pm/ActivityInfo;)V
    .registers 7
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;

    .line 368
    iget-object v0, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mSplashScreenService:Lcom/miui/server/ISplashScreenService;

    .line 369
    .local v0, "sss":Lcom/miui/server/ISplashScreenService;
    if-eqz v0, :cond_2a

    invoke-direct {p0, p1}, Lcom/miui/server/SplashScreenServiceDelegate;->getPackageName(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/server/SplashScreenServiceDelegate;->isSplashPackage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 370
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 372
    .local v1, "startTime":J
    :try_start_12
    invoke-interface {v0, p1}, Lcom/miui/server/ISplashScreenService;->destroyActivity(Landroid/content/pm/ActivityInfo;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_15} :catch_1d
    .catchall {:try_start_12 .. :try_end_15} :catchall_1b

    .line 376
    :goto_15
    const-string v3, "destroyActivity"

    invoke-direct {p0, v3, v1, v2, p1}, Lcom/miui/server/SplashScreenServiceDelegate;->logCost(Ljava/lang/String;JLandroid/content/pm/ActivityInfo;)V

    .line 377
    goto :goto_2a

    .line 376
    :catchall_1b
    move-exception v3

    goto :goto_24

    .line 373
    :catch_1d
    move-exception v3

    .line 374
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1e
    const-string v4, "destroyActivity exception"

    invoke-direct {p0, v4, v3}, Lcom/miui/server/SplashScreenServiceDelegate;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_23
    .catchall {:try_start_1e .. :try_end_23} :catchall_1b

    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_15

    .line 376
    :goto_24
    const-string v4, "destroyActivity"

    invoke-direct {p0, v4, v1, v2, p1}, Lcom/miui/server/SplashScreenServiceDelegate;->logCost(Ljava/lang/String;JLandroid/content/pm/ActivityInfo;)V

    throw v3

    .line 379
    .end local v1    # "startTime":J
    :cond_2a
    :goto_2a
    return-void
.end method

.method public requestSplashScreen(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Landroid/content/Intent;
    .registers 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "aInfo"    # Landroid/content/pm/ActivityInfo;

    .line 336
    iget-object v0, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mSplashScreenService:Lcom/miui/server/ISplashScreenService;

    .line 337
    .local v0, "sss":Lcom/miui/server/ISplashScreenService;
    if-eqz v0, :cond_3a

    invoke-direct {p0, p2}, Lcom/miui/server/SplashScreenServiceDelegate;->getPackageName(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/server/SplashScreenServiceDelegate;->isSplashPackage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 338
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 340
    .local v1, "startTime":J
    const/4 v3, 0x0

    .line 341
    .local v3, "finalIntent":Landroid/content/Intent;
    :try_start_13
    invoke-interface {v0, p1, p2}, Lcom/miui/server/ISplashScreenService;->requestSplashScreen(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Landroid/content/Intent;

    move-result-object v4
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_17} :catch_2b
    .catchall {:try_start_13 .. :try_end_17} :catchall_29

    move-object v3, v4

    if-eqz v4, :cond_22

    .line 342
    nop

    .line 347
    const-string/jumbo v4, "requestSplashScreen "

    invoke-direct {p0, v4, v1, v2, p2}, Lcom/miui/server/SplashScreenServiceDelegate;->logCost(Ljava/lang/String;JLandroid/content/pm/ActivityInfo;)V

    .line 342
    return-object v3

    .line 347
    .end local v3    # "finalIntent":Landroid/content/Intent;
    :cond_22
    :goto_22
    const-string/jumbo v3, "requestSplashScreen "

    invoke-direct {p0, v3, v1, v2, p2}, Lcom/miui/server/SplashScreenServiceDelegate;->logCost(Ljava/lang/String;JLandroid/content/pm/ActivityInfo;)V

    .line 348
    goto :goto_3a

    .line 347
    :catchall_29
    move-exception v3

    goto :goto_33

    .line 344
    :catch_2b
    move-exception v3

    .line 345
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2c
    const-string/jumbo v4, "requestSplashScreen exception"

    invoke-direct {p0, v4, v3}, Lcom/miui/server/SplashScreenServiceDelegate;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_32
    .catchall {:try_start_2c .. :try_end_32} :catchall_29

    .line 345
    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_22

    .line 347
    :goto_33
    const-string/jumbo v4, "requestSplashScreen "

    invoke-direct {p0, v4, v1, v2, p2}, Lcom/miui/server/SplashScreenServiceDelegate;->logCost(Ljava/lang/String;JLandroid/content/pm/ActivityInfo;)V

    throw v3

    .line 350
    .end local v1    # "startTime":J
    :cond_3a
    :goto_3a
    return-object p1
.end method
