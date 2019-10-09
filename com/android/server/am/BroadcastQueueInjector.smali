.class public Lcom/android/server/am/BroadcastQueueInjector;
.super Ljava/lang/Object;
.source "BroadcastQueueInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;,
        Lcom/android/server/am/BroadcastQueueInjector$BRReportHandler;,
        Lcom/android/server/am/BroadcastQueueInjector$BroadcastMap;
    }
.end annotation


# static fields
.field private static final ABNORMAL_BROADCAST_RATE:F = 0.6f

.field private static final ACTION_C2DM:Ljava/lang/String; = "com.google.android.c2dm.intent.RECEIVE"

.field private static final ACTIVE_ORDERED_BROADCAST_LIMIT:I

.field private static BR_LIST:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiui/mqsas/sdk/event/BroadcastEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = true

.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "android.intent.extra.PACKAGE_NAME"

.field public static final FLAG_IMMUTABLE:I = 0x4000000

.field private static final IS_STABLE_VERSION:Z

.field private static final MAX_QUANTITY:I = 0x1e

.field public static final OP_PROCESS_OUTGOING_CALLS:I = 0x36

.field static final TAG:Ljava/lang/String; = "BroadcastQueueInjector"

.field private static volatile mBRHandler:Lcom/android/server/am/BroadcastQueueInjector$BRReportHandler;

.field private static mBroadcastMap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/BroadcastQueueInjector$BroadcastMap;",
            ">;"
        }
    .end annotation
.end field

.field private static mDispatchThreshold:J

.field private static mFinishDeno:I

.field private static mIndex:I

.field private static final mObject:Ljava/lang/Object;

.field private static sAbnormalBroadcastWarning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static sActivityRequestId:I

.field private static sSystemAppSkipAction:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sSystemBootCompleted:Z

.field private static sSystemSkipAction:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/BroadcastQueueInjector;->BR_LIST:Ljava/util/ArrayList;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/BroadcastQueueInjector;->mBroadcastMap:Ljava/util/ArrayList;

    .line 75
    const/4 v0, 0x0

    sput v0, Lcom/android/server/am/BroadcastQueueInjector;->mIndex:I

    .line 76
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/android/server/am/BroadcastQueueInjector;->mObject:Ljava/lang/Object;

    .line 79
    const-string/jumbo v1, "persist.broadcast.time"

    const-wide/16 v2, 0xbb8

    invoke-static {v1, v2, v3}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    sput-wide v1, Lcom/android/server/am/BroadcastQueueInjector;->mDispatchThreshold:J

    .line 80
    const-string/jumbo v1, "persist.broadcast.count"

    const/4 v2, 0x5

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/server/am/BroadcastQueueInjector;->mFinishDeno:I

    .line 81
    sget-boolean v1, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    sput-boolean v1, Lcom/android/server/am/BroadcastQueueInjector;->IS_STABLE_VERSION:Z

    .line 84
    const-string/jumbo v1, "persist.activebr.limit"

    const/16 v2, 0x3e8

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/server/am/BroadcastQueueInjector;->ACTIVE_ORDERED_BROADCAST_LIMIT:I

    .line 86
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v1, Lcom/android/server/am/BroadcastQueueInjector;->sAbnormalBroadcastWarning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/BroadcastQueueInjector;->sSystemSkipAction:Ljava/util/ArrayList;

    .line 146
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/am/BroadcastQueueInjector;->sSystemAppSkipAction:Landroid/util/ArrayMap;

    .line 149
    sget-object v0, Lcom/android/server/am/BroadcastQueueInjector;->sSystemSkipAction:Ljava/util/ArrayList;

    const-string v1, "android.accounts.LOGIN_ACCOUNTS_PRE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    sget-object v0, Lcom/android/server/am/BroadcastQueueInjector;->sSystemSkipAction:Ljava/util/ArrayList;

    const-string v1, "android.accounts.LOGIN_ACCOUNTS_POST_CHANGED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .line 47
    invoke-static {}, Lcom/android/server/am/BroadcastQueueInjector;->isSystemBootCompleted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;Ljava/lang/String;I)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "x1"    # Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .line 47
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/am/BroadcastQueueInjector;->processAbnormalBroadcast(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "x1"    # Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;

    .line 47
    invoke-static {p0, p1}, Lcom/android/server/am/BroadcastQueueInjector;->forceStopAbnormalApp(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;)V

    return-void
.end method

.method static synthetic access$300()Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .line 47
    sget-object v0, Lcom/android/server/am/BroadcastQueueInjector;->sAbnormalBroadcastWarning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private static checkAbnormalBroadcastInQueueLocked(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/BroadcastQueue;)V
    .registers 8
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "queue"    # Lcom/android/server/am/BroadcastQueue;

    .line 441
    iget-object v0, p1, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    .line 442
    .local v0, "broadcasts":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/BroadcastRecord;>;"
    if-eqz v0, :cond_4c

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4c

    sget-object v1, Lcom/android/server/am/BroadcastQueueInjector;->sAbnormalBroadcastWarning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_4c

    .line 443
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sget v2, Lcom/android/server/am/BroadcastQueueInjector;->ACTIVE_ORDERED_BROADCAST_LIMIT:I

    if-ge v1, v2, :cond_1b

    goto :goto_4c

    .line 447
    :cond_1b
    sget-object v1, Lcom/android/server/am/BroadcastQueueInjector;->sAbnormalBroadcastWarning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 449
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 451
    .local v1, "broadcastCount":I
    sget v2, Lcom/android/server/am/BroadcastQueueInjector;->ACTIVE_ORDERED_BROADCAST_LIMIT:I

    mul-int/lit8 v2, v2, 0x3

    if-ge v1, v2, :cond_30

    .line 452
    invoke-static {v0}, Lcom/android/server/am/BroadcastQueueInjector;->getAbnormalBroadcastByRateIfExists(Ljava/util/List;)Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;

    move-result-object v2

    .local v2, "r":Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;
    goto :goto_34

    .line 454
    .end local v2    # "r":Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;
    :cond_30
    invoke-static {v0}, Lcom/android/server/am/BroadcastQueueInjector;->getAbnormalBroadcastByCountIfExisted(Ljava/util/List;)Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;

    move-result-object v2

    .line 457
    .restart local v2    # "r":Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;
    :goto_34
    if-eqz v2, :cond_45

    .line 458
    invoke-static {v2, p0}, Lcom/android/server/am/BroadcastQueueInjector;->getPackageLabelLocked(Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;Lcom/android/server/am/ActivityManagerService;)Ljava/lang/String;

    move-result-object v3

    .line 459
    .local v3, "packageLabel":Ljava/lang/String;
    iget-object v4, p1, Lcom/android/server/am/BroadcastQueue;->mHandler:Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

    new-instance v5, Lcom/android/server/am/BroadcastQueueInjector$2;

    invoke-direct {v5, p0, v2, v3, v1}, Lcom/android/server/am/BroadcastQueueInjector$2;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;Ljava/lang/String;I)V

    invoke-virtual {v4, v5}, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 465
    .end local v3    # "packageLabel":Ljava/lang/String;
    goto :goto_4b

    .line 466
    :cond_45
    sget-object v3, Lcom/android/server/am/BroadcastQueueInjector;->sAbnormalBroadcastWarning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 468
    :goto_4b
    return-void

    .line 444
    .end local v1    # "broadcastCount":I
    .end local v2    # "r":Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;
    :cond_4c
    :goto_4c
    return-void
.end method

.method static checkApplicationAutoStart(Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/BroadcastRecord;Landroid/content/pm/ResolveInfo;)Z
    .registers 16
    .param p0, "bq"    # Lcom/android/server/am/BroadcastQueue;
    .param p1, "s"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "r"    # Lcom/android/server/am/BroadcastRecord;
    .param p3, "info"    # Landroid/content/pm/ResolveInfo;

    .line 170
    invoke-static {p1, p0}, Lcom/android/server/am/BroadcastQueueInjector;->checkAbnormalBroadcastInQueueLocked(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/BroadcastQueue;)V

    .line 172
    invoke-static {}, Landroid/miui/AppOpsUtils;->isXOptMode()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    .line 173
    return v1

    .line 175
    :cond_b
    iget-object v0, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, "action":Ljava/lang/String;
    sget-boolean v2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v2, :cond_1e

    const-string v2, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 177
    return v1

    .line 180
    :cond_1e
    const/4 v2, 0x0

    .line 181
    .local v2, "reason":Ljava/lang/String;
    invoke-static {}, Lmiui/security/WakePathChecker;->getInstance()Lmiui/security/WakePathChecker;

    move-result-object v3

    iget-object v4, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    iget-object v5, p2, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    .line 182
    iget-object v6, p2, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_30

    iget-object v6, p2, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    goto :goto_31

    :cond_30
    const/4 v6, 0x0

    :goto_31
    iget v8, p2, Lcom/android/server/am/BroadcastRecord;->userId:I

    .line 181
    move-object v7, p3

    invoke-virtual/range {v3 .. v8}, Lmiui/security/WakePathChecker;->checkBroadcastWakePath(Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ResolveInfo;I)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_bc

    .line 183
    iget-object v3, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v3, v1

    if-nez v3, :cond_55

    iget-object v3, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 184
    invoke-static {v3, v5, v4}, Lmiui/content/pm/PreloadedAppPolicy;->isProtectedDataApp(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_53

    goto :goto_55

    :cond_53
    move v3, v4

    goto :goto_56

    :cond_55
    :goto_55
    move v3, v1

    .line 185
    .local v3, "isSystem":Z
    :goto_56
    iget-object v5, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    if-nez v5, :cond_bb

    if-eqz v3, :cond_71

    iget-object v5, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 186
    invoke-virtual {v5}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_71

    const-string v5, "com.xiaomi.mipush.MESSAGE_ARRIVED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_71

    goto :goto_bb

    .line 190
    :cond_71
    const/4 v5, 0x0

    .line 191
    .local v5, "abort":Z
    if-eqz v3, :cond_94

    .line 192
    sget-object v6, Lcom/android/server/am/BroadcastQueueInjector;->sSystemSkipAction:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7d

    .line 193
    return v1

    .line 195
    :cond_7d
    sget-object v6, Lcom/android/server/am/BroadcastQueueInjector;->sSystemAppSkipAction:Landroid/util/ArrayMap;

    iget-object v7, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 196
    .local v6, "skipActions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v6, :cond_94

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_94

    .line 197
    return v1

    .line 201
    .end local v6    # "skipActions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_94
    if-eqz v3, :cond_a1

    const-string v6, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a1

    .line 202
    const/4 v5, 0x1

    .line 203
    const-string v2, " system app CONNECTIVITY_CHANGE"

    .line 206
    :cond_a1
    if-nez v5, :cond_ba

    .line 207
    iget-object v6, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v7, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v8, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6, v7, v8}, Landroid/miui/AppOpsUtils;->getApplicationAutoStart(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    .line 209
    .local v6, "autoStartMode":I
    if-nez v6, :cond_b8

    .line 210
    return v1

    .line 212
    :cond_b8
    const-string v2, " auto start"

    .line 214
    .end local v3    # "isSystem":Z
    .end local v5    # "abort":Z
    .end local v6    # "autoStartMode":I
    :cond_ba
    goto :goto_be

    .line 187
    .restart local v3    # "isSystem":Z
    :cond_bb
    :goto_bb
    return v1

    .line 215
    .end local v3    # "isSystem":Z
    :cond_bc
    const-string v2, " weak path"

    .line 218
    :goto_be
    const-string v1, "BroadcastQueueInjector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to launch app "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " for broadcast "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ": process is not permitted to "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-virtual {p0, p2}, Lcom/android/server/am/BroadcastQueue;->logBroadcastReceiverDiscardLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 223
    iget v7, p2, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    iget-object v8, p2, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    iget-object v9, p2, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    iget-boolean v10, p2, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    const/4 v11, 0x0

    move-object v5, p0

    move-object v6, p2

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/am/BroadcastQueue;->finishReceiverLocked(Lcom/android/server/am/BroadcastRecord;ILjava/lang/String;Landroid/os/Bundle;ZZ)Z

    .line 225
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    .line 226
    iput v4, p2, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 227
    return v4
.end method

.method static checkReceiverAppDealBroadcast(Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/ProcessRecord;Z)Z
    .registers 9
    .param p0, "bq"    # Lcom/android/server/am/BroadcastQueue;
    .param p1, "s"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "r"    # Lcom/android/server/am/BroadcastRecord;
    .param p3, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p4, "isStatic"    # Z

    .line 154
    if-eqz p4, :cond_5

    .line 155
    invoke-static {p1, p0}, Lcom/android/server/am/BroadcastQueueInjector;->checkAbnormalBroadcastInQueueLocked(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/BroadcastQueue;)V

    .line 158
    :cond_5
    const/4 v0, 0x1

    if-eqz p3, :cond_49

    if-eqz p2, :cond_49

    iget-object v1, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    if-nez v1, :cond_f

    goto :goto_49

    .line 159
    :cond_f
    iget v1, p3, Lcom/android/server/am/ProcessRecord;->pid:I

    iget v2, p3, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v3, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/miui/whetstone/client/WhetstoneClientManager;->isBroadcastAllowedLocked(IILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_48

    .line 160
    const-string v0, "BroadcastQueueInjector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-boolean v0, p2, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    if-nez v0, :cond_43

    if-eqz p4, :cond_46

    .line 162
    :cond_43
    invoke-virtual {p0, p3}, Lcom/android/server/am/BroadcastQueue;->skipCurrentReceiverLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 164
    :cond_46
    const/4 v0, 0x0

    return v0

    .line 166
    :cond_48
    return v0

    .line 158
    :cond_49
    :goto_49
    return v0
.end method

.method public static checkTime(JLjava/lang/String;)V
    .registers 9
    .param p0, "startTime"    # J
    .param p2, "where"    # Ljava/lang/String;

    .line 663
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 665
    .local v0, "now":J
    sub-long v2, v0, p0

    const-wide/16 v4, 0xbb8

    cmp-long v2, v2, v4

    if-lez v2, :cond_2d

    .line 666
    const-string v2, "BroadcastQueueInjector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Slow operation: processNextBroadcast "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v4, v0, p0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ms so far, now at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    :cond_2d
    return-void
.end method

.method private static forceStopAbnormalApp(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;)V
    .registers 5
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "r"    # Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;

    .line 531
    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 532
    const-string v0, "BroadcastQueueInjector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "force-stop abnormal app:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " userId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;->userId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    iget-object v0, p1, Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;->callerPackage:Ljava/lang/String;

    iget v1, p1, Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;->userId:I

    const-string v2, "abnormal ordered broadcast"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->forceStopPackage(Ljava/lang/String;ILjava/lang/String;)V

    .line 534
    monitor-exit p0
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_34

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 535
    return-void

    .line 534
    :catchall_34
    move-exception v0

    :try_start_35
    monitor-exit p0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method private static getAbnormalBroadcastByCountIfExisted(Ljava/util/List;)Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/am/BroadcastRecord;",
            ">;)",
            "Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;"
        }
    .end annotation

    .line 582
    .local p0, "broadcasts":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/BroadcastRecord;>;"
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 584
    .local v0, "startTime":J
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 585
    .local v2, "abnormalBroadcastMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_47

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/BroadcastRecord;

    .line 586
    .local v4, "r":Lcom/android/server/am/BroadcastRecord;
    const-string v5, "android"

    iget-object v6, v4, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 587
    goto :goto_d

    .line 590
    :cond_24
    new-instance v5, Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;

    invoke-direct {v5, v4}, Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;-><init>(Lcom/android/server/am/BroadcastRecord;)V

    .line 591
    .local v5, "abnormalRecord":Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 592
    .local v6, "count":Ljava/lang/Integer;
    const/4 v7, 0x1

    if-nez v6, :cond_3a

    .line 593
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_46

    .line 595
    :cond_3a
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/2addr v8, v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    .end local v4    # "r":Lcom/android/server/am/BroadcastRecord;
    .end local v5    # "abnormalRecord":Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;
    .end local v6    # "count":Ljava/lang/Integer;
    :goto_46
    goto :goto_d

    .line 599
    :cond_47
    const/4 v3, 0x0

    .line 600
    .local v3, "recordWithMaxCount":Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;
    const/4 v4, 0x0

    .line 601
    .local v4, "maxCount":I
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_51
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 602
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;Ljava/lang/Integer;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-le v7, v4, :cond_7a

    .line 603
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    move-object v3, v7

    check-cast v3, Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;

    .line 604
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 606
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;Ljava/lang/Integer;>;"
    :cond_7a
    goto :goto_51

    .line 608
    :cond_7b
    if-eqz v3, :cond_b3

    iget-object v5, v3, Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b3

    sget v5, Lcom/android/server/am/BroadcastQueueInjector;->ACTIVE_ORDERED_BROADCAST_LIMIT:I

    if-ge v4, v5, :cond_8a

    goto :goto_b3

    .line 615
    :cond_8a
    const-string v5, "BroadcastQueueInjector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "found abnormal broadcast in list by max count:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " cost:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v0

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 615
    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    return-object v3

    .line 610
    :cond_b3
    :goto_b3
    const-string v5, "BroadcastQueueInjector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "the max number of same broadcasts in queue is not large enough:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " with count:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    const/4 v5, 0x0

    return-object v5
.end method

.method private static getAbnormalBroadcastByRateIfExists(Ljava/util/List;)Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/am/BroadcastRecord;",
            ">;)",
            "Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;"
        }
    .end annotation

    .line 539
    .local p0, "broadcasts":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/BroadcastRecord;>;"
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 541
    .local v0, "startTime":J
    const/4 v2, 0x0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BroadcastRecord;

    .line 542
    .local v2, "result":Lcom/android/server/am/BroadcastRecord;
    const/4 v3, 0x1

    .line 543
    .local v3, "count":I
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_d
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_5a

    .line 544
    if-nez v3, :cond_1e

    .line 545
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v2, v5

    check-cast v2, Lcom/android/server/am/BroadcastRecord;

    .line 546
    const/4 v3, 0x1

    goto :goto_57

    .line 547
    :cond_1e
    iget-object v5, v2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/BroadcastRecord;

    iget-object v6, v6, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_55

    iget-object v5, v2, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    .line 548
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/BroadcastRecord;

    iget-object v6, v6, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_55

    iget v5, v2, Lcom/android/server/am/BroadcastRecord;->userId:I

    .line 549
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/BroadcastRecord;

    iget v6, v6, Lcom/android/server/am/BroadcastRecord;->userId:I

    if-ne v5, v6, :cond_55

    .line 550
    add-int/lit8 v3, v3, 0x1

    goto :goto_57

    .line 552
    :cond_55
    add-int/lit8 v3, v3, -0x1

    .line 543
    :goto_57
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 556
    .end local v4    # "i":I
    :cond_5a
    iget-object v4, v2, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_100

    iget-object v4, v2, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    const-string v6, "android"

    invoke-static {v4, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_100

    int-to-float v4, v3

    .line 557
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    int-to-float v6, v6

    const v7, 0x3e4cccd0    # 0.20000005f

    mul-float/2addr v6, v7

    cmpg-float v4, v4, v6

    if-gez v4, :cond_7d

    goto/16 :goto_100

    .line 562
    :cond_7d
    const/4 v3, 0x0

    .line 563
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_82
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_ad

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/BroadcastRecord;

    .line 564
    .local v6, "r":Lcom/android/server/am/BroadcastRecord;
    iget-object v7, v2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v6, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_ac

    iget-object v7, v2, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    iget-object v8, v6, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    .line 565
    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_ac

    .line 566
    add-int/lit8 v3, v3, 0x1

    .line 568
    .end local v6    # "r":Lcom/android/server/am/BroadcastRecord;
    :cond_ac
    goto :goto_82

    .line 570
    :cond_ad
    int-to-float v4, v3

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    int-to-float v6, v6

    const v7, 0x3f19999a    # 0.6f

    mul-float/2addr v6, v7

    cmpg-float v4, v4, v6

    if-gez v4, :cond_d2

    .line 571
    const-string v4, "BroadcastQueueInjector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "abnormal broadcast not found with count:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    return-object v5

    .line 575
    :cond_d2
    const-string v4, "BroadcastQueueInjector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "found abnormal broadcast in list by rate:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " cost:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 575
    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    new-instance v4, Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;

    invoke-direct {v4, v2}, Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;-><init>(Lcom/android/server/am/BroadcastRecord;)V

    return-object v4

    .line 558
    :cond_100
    :goto_100
    const-string v4, "BroadcastQueueInjector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "abnormal broadcast not found with first loop count:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " with caller:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    return-object v5
.end method

.method static getBRReportHandler()Landroid/os/Handler;
    .registers 4

    .line 271
    sget-object v0, Lcom/android/server/am/BroadcastQueueInjector;->mBRHandler:Lcom/android/server/am/BroadcastQueueInjector$BRReportHandler;

    if-nez v0, :cond_25

    .line 272
    sget-object v0, Lcom/android/server/am/BroadcastQueueInjector;->mObject:Ljava/lang/Object;

    monitor-enter v0

    .line 273
    :try_start_7
    sget-object v1, Lcom/android/server/am/BroadcastQueueInjector;->mBRHandler:Lcom/android/server/am/BroadcastQueueInjector$BRReportHandler;

    if-nez v1, :cond_20

    .line 274
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "brreport-thread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 275
    .local v1, "mBRThread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 276
    new-instance v2, Lcom/android/server/am/BroadcastQueueInjector$BRReportHandler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/am/BroadcastQueueInjector$BRReportHandler;-><init>(Landroid/os/Looper;)V

    sput-object v2, Lcom/android/server/am/BroadcastQueueInjector;->mBRHandler:Lcom/android/server/am/BroadcastQueueInjector$BRReportHandler;

    .line 278
    .end local v1    # "mBRThread":Landroid/os/HandlerThread;
    :cond_20
    monitor-exit v0

    goto :goto_25

    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_7 .. :try_end_24} :catchall_22

    throw v1

    .line 280
    :cond_25
    :goto_25
    sget-object v0, Lcom/android/server/am/BroadcastQueueInjector;->mBRHandler:Lcom/android/server/am/BroadcastQueueInjector$BRReportHandler;

    return-object v0
.end method

.method private static getNextRequestIdLocked()I
    .registers 2

    .line 433
    sget v0, Lcom/android/server/am/BroadcastQueueInjector;->sActivityRequestId:I

    const v1, 0x7fffffff

    if-lt v0, v1, :cond_a

    .line 434
    const/4 v0, 0x0

    sput v0, Lcom/android/server/am/BroadcastQueueInjector;->sActivityRequestId:I

    .line 436
    :cond_a
    sget v0, Lcom/android/server/am/BroadcastQueueInjector;->sActivityRequestId:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/server/am/BroadcastQueueInjector;->sActivityRequestId:I

    .line 437
    sget v0, Lcom/android/server/am/BroadcastQueueInjector;->sActivityRequestId:I

    return v0
.end method

.method private static getPackageLabelLocked(Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;Lcom/android/server/am/ActivityManagerService;)Ljava/lang/String;
    .registers 6
    .param p0, "r"    # Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .line 472
    const/4 v0, 0x0

    .line 473
    .local v0, "label":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;->callerPackage:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;->userId:I

    invoke-static {v1, v2, p1}, Lcom/android/server/am/BroadcastQueueInjector;->getProcessRecordLocked(Ljava/lang/String;ILcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    .line 474
    .local v1, "app":Lcom/android/server/am/ProcessRecord;
    if-eqz v1, :cond_26

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_26

    .line 475
    iget-object v2, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 476
    .local v2, "labelChar":Ljava/lang/CharSequence;
    if-eqz v2, :cond_26

    .line 477
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 481
    .end local v2    # "labelChar":Ljava/lang/CharSequence;
    :cond_26
    if-nez v0, :cond_2a

    .line 482
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;->callerPackage:Ljava/lang/String;

    .line 484
    :cond_2a
    return-object v0
.end method

.method private static getProcessRecordLocked(Ljava/lang/String;ILcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/ProcessRecord;
    .registers 6
    .param p0, "processName"    # Ljava/lang/String;
    .param p1, "userId"    # I
    .param p2, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .line 489
    iget-object v0, p2, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_26

    .line 490
    iget-object v1, p2, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 491
    .local v1, "app":Lcom/android/server/am/ProcessRecord;
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_23

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    iget v2, v1, Lcom/android/server/am/ProcessRecord;->userId:I

    if-ne v2, p1, :cond_23

    .line 493
    return-object v1

    .line 489
    .end local v1    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_23
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 496
    .end local v0    # "i":I
    :cond_26
    const/4 v0, 0x0

    return-object v0
.end method

.method static isSKipNotifySms(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/BroadcastRecord;ILjava/lang/String;I)Z
    .registers 11
    .param p0, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "appOp"    # I

    .line 239
    const/4 v0, 0x0

    const/16 v1, 0x10

    if-eq p4, v1, :cond_6

    .line 240
    return v0

    .line 242
    :cond_6
    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 244
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 245
    return v0

    .line 249
    :cond_15
    :try_start_15
    const-string/jumbo v2, "miui.intent.SERVICE_NUMBER"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 250
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    const/16 v3, 0x2722

    invoke-virtual {v2, v3, p2, p3}, Lcom/android/server/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v2

    .line 252
    .local v2, "mode":I
    if-eqz v2, :cond_48

    .line 253
    const-string v3, "BroadcastQueueInjector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MIUILOG- Sms Filter packageName : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_46} :catch_49

    .line 254
    const/4 v0, 0x1

    return v0

    .line 259
    .end local v2    # "mode":I
    :cond_48
    goto :goto_52

    .line 257
    :catch_49
    move-exception v2

    .line 258
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "BroadcastQueueInjector"

    const-string/jumbo v4, "isSKipNotifySms"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 260
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_52
    return v0
.end method

.method static isSkip(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/BroadcastRecord;Landroid/content/pm/ResolveInfo;I)Z
    .registers 6
    .param p0, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;
    .param p2, "info"    # Landroid/content/pm/ResolveInfo;
    .param p3, "appOp"    # I

    .line 231
    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v1, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, p1, v0, v1, p3}, Lcom/android/server/am/BroadcastQueueInjector;->isSKipNotifySms(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/BroadcastRecord;ILjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static isSkip(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/BroadcastFilter;I)Z
    .registers 6
    .param p0, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;
    .param p2, "filter"    # Lcom/android/server/am/BroadcastFilter;
    .param p3, "appOp"    # I

    .line 235
    iget-object v0, p2, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v0, v0, Lcom/android/server/am/ReceiverList;->uid:I

    iget-object v1, p2, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    invoke-static {p0, p1, v0, v1, p3}, Lcom/android/server/am/BroadcastQueueInjector;->isSKipNotifySms(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/BroadcastRecord;ILjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static isSkipForUser(Lcom/android/server/am/ActivityManagerService;Landroid/content/pm/ResolveInfo;Z)Z
    .registers 4
    .param p0, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;
    .param p2, "skip"    # Z

    .line 264
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/server/am/ActivityManagerServiceCompat;->isUserRunning(Lcom/android/server/am/ActivityManagerService;I)Z

    move-result v0

    if-nez v0, :cond_11

    .line 265
    const/4 p2, 0x1

    .line 267
    :cond_11
    return p2
.end method

.method private static isSystemBootCompleted()Z
    .registers 2

    .line 284
    sget-boolean v0, Lcom/android/server/am/BroadcastQueueInjector;->sSystemBootCompleted:Z

    if-nez v0, :cond_13

    .line 285
    const-string v0, "1"

    const-string/jumbo v1, "sys.boot_completed"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/BroadcastQueueInjector;->sSystemBootCompleted:Z

    .line 287
    :cond_13
    sget-boolean v0, Lcom/android/server/am/BroadcastQueueInjector;->sSystemBootCompleted:Z

    return v0
.end method

.method public static noteOperationLocked(IILjava/lang/String;Landroid/os/Handler;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/BroadcastRecord;)I
    .registers 32
    .param p0, "appOp"    # I
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p5, "receiverRecord"    # Lcom/android/server/am/BroadcastRecord;

    move/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v15, p4

    .line 356
    move-object/from16 v14, p5

    iget-object v3, v15, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/server/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v13

    .line 357
    .local v13, "mode":I
    const/4 v3, 0x5

    if-eq v13, v3, :cond_14

    .line 358
    return v13

    .line 362
    :cond_14
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    .line 363
    .local v12, "userId":I
    const/16 v3, 0x3e7

    if-ne v12, v3, :cond_1d

    .line 364
    return v13

    .line 367
    :cond_1d
    invoke-static {v15, v14, v1, v2, v0}, Lcom/android/server/am/BroadcastQueueInjector;->isSKipNotifySms(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/BroadcastRecord;ILjava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 368
    return v13

    .line 371
    :cond_24
    iget-object v3, v15, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    const/4 v11, 0x1

    invoke-virtual {v3, v0, v1, v2, v11}, Lcom/android/server/AppOpsService;->setMode(IILjava/lang/String;I)V

    .line 373
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.miui.intent.action.REQUEST_PERMISSIONS"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v10, v3

    .line 374
    .local v10, "intent":Landroid/content/Intent;
    const-string v3, "com.lbe.security.miui"

    invoke-virtual {v10, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 375
    const/high16 v3, 0x18800000

    invoke-virtual {v10, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 377
    const-string v3, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v10, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 378
    const-string v3, "android.intent.extra.UID"

    invoke-virtual {v10, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 379
    const-string/jumbo v3, "op"

    invoke-virtual {v10, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 380
    iget-boolean v3, v14, Lcom/android/server/am/BroadcastRecord;->sticky:Z

    if-nez v3, :cond_cb

    .line 381
    iget-object v3, v14, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    .line 382
    .local v3, "callerPackage":Ljava/lang/String;
    iget v9, v14, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    .line 383
    .local v9, "callingUid":I
    if-nez v3, :cond_69

    .line 384
    if-nez v9, :cond_5c

    .line 385
    const-string/jumbo v3, "root"

    goto :goto_69

    .line 386
    :cond_5c
    const/16 v4, 0x7d0

    if-ne v9, v4, :cond_63

    .line 387
    const-string v3, "com.android.shell"

    goto :goto_69

    .line 388
    :cond_63
    const/16 v4, 0x3e8

    if-ne v9, v4, :cond_69

    .line 389
    const-string v3, "android"

    .line 392
    .end local v3    # "callerPackage":Ljava/lang/String;
    .local v16, "callerPackage":Ljava/lang/String;
    :cond_69
    :goto_69
    move-object/from16 v16, v3

    if-nez v16, :cond_6e

    .line 393
    return v13

    .line 397
    :cond_6e
    invoke-static {}, Lcom/android/server/am/BroadcastQueueInjector;->getNextRequestIdLocked()I

    move-result v17

    .line 398
    .local v17, "requestCode":I
    new-instance v3, Landroid/content/Intent;

    iget-object v4, v14, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v8, v3

    .line 399
    .local v8, "intentNew":Landroid/content/Intent;
    invoke-virtual {v8, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 400
    const/4 v4, 0x1

    iget v7, v14, Lcom/android/server/am/BroadcastRecord;->userId:I

    const/16 v18, 0x0

    const/16 v19, 0x0

    new-array v6, v11, [Landroid/content/Intent;

    const/4 v3, 0x0

    aput-object v8, v6, v3

    new-array v5, v11, [Ljava/lang/String;

    iget-object v11, v15, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 408
    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 407
    invoke-virtual {v8, v11}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v5, v3

    const/high16 v21, 0x4c000000    # 3.3554432E7f

    const/16 v22, 0x0

    .line 400
    move-object v3, v15

    move-object/from16 v23, v5

    move-object/from16 v5, v16

    move-object v11, v6

    move v6, v9

    move-object/from16 v24, v8

    move-object/from16 v8, v18

    .line 400
    .end local v8    # "intentNew":Landroid/content/Intent;
    .local v24, "intentNew":Landroid/content/Intent;
    move/from16 v18, v9

    move-object/from16 v9, v19

    .line 400
    .end local v9    # "callingUid":I
    .local v18, "callingUid":I
    move-object/from16 v25, v10

    move/from16 v10, v17

    .line 400
    .end local v10    # "intent":Landroid/content/Intent;
    .local v25, "intent":Landroid/content/Intent;
    const/16 v19, 0x1

    move/from16 v20, v12

    move-object/from16 v12, v23

    .line 400
    .end local v12    # "userId":I
    .local v20, "userId":I
    move/from16 v23, v13

    move/from16 v13, v21

    .line 400
    .end local v13    # "mode":I
    .local v23, "mode":I
    move-object/from16 v14, v22

    invoke-virtual/range {v3 .. v14}, Lcom/android/server/am/ActivityManagerService;->getIntentSenderLocked(ILjava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;

    move-result-object v3

    .line 413
    .local v3, "target":Landroid/content/IIntentSender;
    const-string v4, "android.intent.extra.INTENT"

    new-instance v5, Landroid/content/IntentSender;

    invoke-direct {v5, v3}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    move-object/from16 v6, v25

    invoke-virtual {v6, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 413
    .end local v3    # "target":Landroid/content/IIntentSender;
    .end local v16    # "callerPackage":Ljava/lang/String;
    .end local v17    # "requestCode":I
    .end local v18    # "callingUid":I
    .end local v24    # "intentNew":Landroid/content/Intent;
    .end local v25    # "intent":Landroid/content/Intent;
    .local v6, "intent":Landroid/content/Intent;
    goto :goto_d2

    .line 416
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v20    # "userId":I
    .end local v23    # "mode":I
    .restart local v10    # "intent":Landroid/content/Intent;
    .restart local v12    # "userId":I
    .restart local v13    # "mode":I
    :cond_cb
    move-object v6, v10

    move/from16 v19, v11

    move/from16 v20, v12

    move/from16 v23, v13

    .line 416
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v12    # "userId":I
    .end local v13    # "mode":I
    .restart local v6    # "intent":Landroid/content/Intent;
    .restart local v20    # "userId":I
    .restart local v23    # "mode":I
    :goto_d2
    const-string v3, "BroadcastQueueInjector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MIUILOG - Launching Request permission [Broadcast] uid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "  pkg : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " op : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    const/16 v3, 0x36

    if-ne v0, v3, :cond_ff

    const-wide/16 v3, 0x5dc

    goto :goto_101

    :cond_ff
    const-wide/16 v3, 0xa

    .line 419
    .local v3, "delay":J
    :goto_101
    new-instance v5, Lcom/android/server/am/BroadcastQueueInjector$1;

    invoke-direct {v5, v15, v6, v1}, Lcom/android/server/am/BroadcastQueueInjector$1;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Intent;I)V

    move-object/from16 v7, p3

    invoke-virtual {v7, v5, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 429
    return v19
.end method

.method static onBroadcastFinished(Landroid/content/Intent;Ljava/lang/String;IJJJJI)V
    .registers 35
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "caller"    # Ljava/lang/String;
    .param p2, "callingPid"    # I
    .param p3, "enTime"    # J
    .param p5, "disTime"    # J
    .param p7, "finTime"    # J
    .param p9, "mTimeoutPeriod"    # J
    .param p11, "receiverSize"    # I

    move-wide/from16 v0, p3

    move-wide/from16 v2, p5

    move-wide/from16 v4, p7

    .line 294
    move/from16 v6, p11

    sget-boolean v7, Lcom/android/server/am/BroadcastQueueInjector;->IS_STABLE_VERSION:Z

    if-eqz v7, :cond_d

    return-void

    .line 295
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    .line 296
    .local v7, "action":Ljava/lang/String;
    if-nez v7, :cond_16

    const-string/jumbo v7, "null"

    .line 297
    :cond_16
    if-nez p1, :cond_1b

    const-string v9, "android"

    goto :goto_1d

    :cond_1b
    move-object/from16 v9, p1

    :goto_1d
    move-object v8, v9

    .line 298
    .end local p1    # "caller":Ljava/lang/String;
    .local v8, "caller":Ljava/lang/String;
    move/from16 v9, p2

    .line 299
    .local v9, "pid":I
    const-string v10, ""

    .line 301
    .local v10, "reason":Ljava/lang/String;
    move-object v11, v8

    .line 302
    .local v11, "packageName":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 303
    .local v12, "timeStamp":J
    sub-long v14, v2, v0

    sget-wide v16, Lcom/android/server/am/BroadcastQueueInjector;->mDispatchThreshold:J

    cmp-long v14, v14, v16

    if-gez v14, :cond_41

    sub-long v16, v4, v2

    move-wide/from16 v18, v12

    int-to-long v12, v6

    .line 303
    .end local v12    # "timeStamp":J
    .local v18, "timeStamp":J
    mul-long v12, v12, p9

    sget v14, Lcom/android/server/am/BroadcastQueueInjector;->mFinishDeno:I

    int-to-long v14, v14

    div-long/2addr v12, v14

    cmp-long v12, v16, v12

    if-ltz v12, :cond_3f

    goto :goto_43

    :cond_3f
    const/4 v12, 0x0

    goto :goto_44

    .line 303
    .end local v18    # "timeStamp":J
    .restart local v12    # "timeStamp":J
    :cond_41
    move-wide/from16 v18, v12

    .line 303
    .end local v12    # "timeStamp":J
    .restart local v18    # "timeStamp":J
    :goto_43
    const/4 v12, 0x1

    .line 305
    .local v12, "needUpdate":Z
    :goto_44
    sget v13, Lcom/android/server/am/BroadcastQueueInjector;->mIndex:I

    const/16 v14, 0x1e

    if-ltz v13, :cond_52

    sget v13, Lcom/android/server/am/BroadcastQueueInjector;->mIndex:I

    if-le v13, v14, :cond_4f

    goto :goto_52

    :cond_4f
    sget v15, Lcom/android/server/am/BroadcastQueueInjector;->mIndex:I

    goto :goto_53

    :cond_52
    :goto_52
    const/4 v15, 0x0

    :goto_53
    sput v15, Lcom/android/server/am/BroadcastQueueInjector;->mIndex:I

    .line 306
    new-instance v13, Lcom/android/server/am/BroadcastQueueInjector$BroadcastMap;

    invoke-direct {v13, v7, v8}, Lcom/android/server/am/BroadcastQueueInjector$BroadcastMap;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    .local v13, "broadcastMap":Lcom/android/server/am/BroadcastQueueInjector$BroadcastMap;
    sget v15, Lcom/android/server/am/BroadcastQueueInjector;->mIndex:I

    if-eqz v15, :cond_9e

    sget v15, Lcom/android/server/am/BroadcastQueueInjector;->mIndex:I

    if-gt v15, v14, :cond_9e

    sget-object v15, Lcom/android/server/am/BroadcastQueueInjector;->mBroadcastMap:Ljava/util/ArrayList;

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9e

    .line 308
    sget-object v14, Lcom/android/server/am/BroadcastQueueInjector;->mBroadcastMap:Ljava/util/ArrayList;

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v14

    .line 309
    .local v14, "index":I
    sget-object v15, Lcom/android/server/am/BroadcastQueueInjector;->BR_LIST:Ljava/util/ArrayList;

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lmiui/mqsas/sdk/event/BroadcastEvent;

    .line 310
    .local v15, "BE":Lmiui/mqsas/sdk/event/BroadcastEvent;
    invoke-virtual {v15}, Lmiui/mqsas/sdk/event/BroadcastEvent;->addCount()V

    .line 311
    move-object/from16 v20, v8

    move/from16 v21, v9

    sub-long v8, v4, v0

    .line 311
    .end local v8    # "caller":Ljava/lang/String;
    .end local v9    # "pid":I
    .local v20, "caller":Ljava/lang/String;
    .local v21, "pid":I
    invoke-virtual {v15, v8, v9}, Lmiui/mqsas/sdk/event/BroadcastEvent;->addTotalTime(J)V

    .line 312
    if-eqz v12, :cond_95

    .line 313
    invoke-virtual {v15, v10}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setReason(Ljava/lang/String;)V

    .line 314
    invoke-virtual {v15, v0, v1}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setEnTime(J)V

    .line 315
    invoke-virtual {v15, v2, v3}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setDisTime(J)V

    .line 316
    invoke-virtual {v15, v4, v5}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setFinTime(J)V

    .line 317
    invoke-virtual {v15, v6}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setNumReceivers(I)V

    .line 319
    .end local v14    # "index":I
    .end local v15    # "BE":Lmiui/mqsas/sdk/event/BroadcastEvent;
    :cond_95
    nop

    .line 351
    move-wide/from16 v0, v18

    move-object/from16 v9, v20

    move/from16 v14, v21

    goto/16 :goto_11d

    .line 320
    .end local v20    # "caller":Ljava/lang/String;
    .end local v21    # "pid":I
    .restart local v8    # "caller":Ljava/lang/String;
    .restart local v9    # "pid":I
    :cond_9e
    move-object/from16 v20, v8

    move/from16 v21, v9

    .line 320
    .end local v8    # "caller":Ljava/lang/String;
    .end local v9    # "pid":I
    .restart local v20    # "caller":Ljava/lang/String;
    .restart local v21    # "pid":I
    sget v8, Lcom/android/server/am/BroadcastQueueInjector;->mIndex:I

    if-lt v8, v14, :cond_d0

    .line 321
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v8

    .line 322
    .local v8, "message":Landroid/os/Message;
    const/4 v9, 0x1

    iput v9, v8, Landroid/os/Message;->what:I

    .line 323
    new-instance v9, Landroid/content/pm/ParceledListSlice;

    sget-object v14, Lcom/android/server/am/BroadcastQueueInjector;->BR_LIST:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    invoke-direct {v9, v14}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    iput-object v9, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 324
    invoke-static {}, Lcom/android/server/am/BroadcastQueueInjector;->getBRReportHandler()Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 325
    sget-object v9, Lcom/android/server/am/BroadcastQueueInjector;->BR_LIST:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 326
    sget-object v9, Lcom/android/server/am/BroadcastQueueInjector;->mBroadcastMap:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 327
    const/4 v9, 0x0

    sput v9, Lcom/android/server/am/BroadcastQueueInjector;->mIndex:I

    .line 329
    .end local v8    # "message":Landroid/os/Message;
    :cond_d0
    sget-object v8, Lcom/android/server/am/BroadcastQueueInjector;->mBroadcastMap:Ljava/util/ArrayList;

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    sget v8, Lcom/android/server/am/BroadcastQueueInjector;->mIndex:I

    const/4 v9, 0x1

    add-int/2addr v8, v9

    sput v8, Lcom/android/server/am/BroadcastQueueInjector;->mIndex:I

    .line 331
    new-instance v8, Lmiui/mqsas/sdk/event/BroadcastEvent;

    invoke-direct {v8}, Lmiui/mqsas/sdk/event/BroadcastEvent;-><init>()V

    .line 332
    .local v8, "broadcast":Lmiui/mqsas/sdk/event/BroadcastEvent;
    const/16 v9, 0x40

    invoke-virtual {v8, v9}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setType(I)V

    .line 333
    if-eqz v12, :cond_f6

    .line 334
    invoke-virtual {v8, v10}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setReason(Ljava/lang/String;)V

    .line 335
    invoke-virtual {v8, v0, v1}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setEnTime(J)V

    .line 336
    invoke-virtual {v8, v2, v3}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setDisTime(J)V

    .line 337
    invoke-virtual {v8, v4, v5}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setFinTime(J)V

    .line 338
    invoke-virtual {v8, v6}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setNumReceivers(I)V

    .line 340
    :cond_f6
    invoke-virtual {v8, v7}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setAction(Ljava/lang/String;)V

    .line 341
    move-object/from16 v9, v20

    invoke-virtual {v8, v9}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setCallerPackage(Ljava/lang/String;)V

    .line 342
    .end local v20    # "caller":Ljava/lang/String;
    .local v9, "caller":Ljava/lang/String;
    const/4 v14, 0x1

    invoke-virtual {v8, v14}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setCount(I)V

    .line 343
    sub-long v14, v4, v0

    invoke-virtual {v8, v14, v15}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setTotalTime(J)V

    .line 344
    move/from16 v14, v21

    invoke-virtual {v8, v14}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setPid(I)V

    .line 346
    .end local v21    # "pid":I
    .local v14, "pid":I
    invoke-virtual {v8, v11}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setPackageName(Ljava/lang/String;)V

    .line 347
    move-wide/from16 v0, v18

    invoke-virtual {v8, v0, v1}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setTimeStamp(J)V

    .line 348
    .end local v18    # "timeStamp":J
    .local v0, "timeStamp":J
    const/4 v15, 0x1

    invoke-virtual {v8, v15}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setSystem(Z)V

    .line 349
    sget-object v15, Lcom/android/server/am/BroadcastQueueInjector;->BR_LIST:Ljava/util/ArrayList;

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    .end local v8    # "broadcast":Lmiui/mqsas/sdk/event/BroadcastEvent;
    :goto_11d
    return-void
.end method

.method private static processAbnormalBroadcast(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;Ljava/lang/String;I)V
    .registers 7
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "r"    # Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;
    .param p2, "packageLabel"    # Ljava/lang/String;
    .param p3, "count"    # I

    .line 502
    const/4 v0, 0x0

    .line 503
    .local v0, "showDialogSuccess":Z
    sget v1, Lcom/android/server/am/BroadcastQueueInjector;->ACTIVE_ORDERED_BROADCAST_LIMIT:I

    mul-int/lit8 v1, v1, 0x3

    if-ge p3, v1, :cond_1b

    .line 504
    const-string v1, "BroadcastQueueInjector"

    const-string v2, "abnormal ordered broadcast, showWarningDialog"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    invoke-static {}, Lcom/android/server/am/MiuiWarnings;->getInstance()Lcom/android/server/am/MiuiWarnings;

    move-result-object v1

    new-instance v2, Lcom/android/server/am/BroadcastQueueInjector$3;

    invoke-direct {v2, p0, p1}, Lcom/android/server/am/BroadcastQueueInjector$3;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;)V

    invoke-virtual {v1, p2, v2}, Lcom/android/server/am/MiuiWarnings;->showWarningDialog(Ljava/lang/String;Lcom/android/server/am/MiuiWarnings$WarningCallback;)Z

    move-result v0

    .line 524
    :cond_1b
    if-nez v0, :cond_26

    .line 525
    invoke-static {p0, p1}, Lcom/android/server/am/BroadcastQueueInjector;->forceStopAbnormalApp(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;)V

    .line 526
    sget-object v1, Lcom/android/server/am/BroadcastQueueInjector;->sAbnormalBroadcastWarning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 528
    :cond_26
    return-void
.end method
