.class public Lcom/android/server/content/SyncLogger;
.super Ljava/lang/Object;
.source "SyncLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/content/SyncLogger$RotatingFileLogger;
    }
.end annotation


# static fields
.field public static final CALLING_UID_SELF:I = -0x1

.field private static final TAG:Ljava/lang/String; = "SyncLogger"

.field private static sInstance:Lcom/android/server/content/SyncLogger;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/content/SyncLogger;
    .registers 3

    const-class v0, Lcom/android/server/content/SyncLogger;

    monitor-enter v0

    .line 67
    :try_start_3
    sget-object v1, Lcom/android/server/content/SyncLogger;->sInstance:Lcom/android/server/content/SyncLogger;

    if-nez v1, :cond_37

    .line 68
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v1, :cond_25

    const-string v1, "1"

    const-string v2, "debug.synclog"

    .line 70
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    const-string v1, "SyncLogger"

    const/4 v2, 0x2

    .line 71
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_23

    goto :goto_25

    :cond_23
    const/4 v1, 0x0

    goto :goto_26

    :cond_25
    :goto_25
    const/4 v1, 0x1

    .line 72
    .local v1, "enable":Z
    :goto_26
    if-eqz v1, :cond_30

    .line 73
    new-instance v2, Lcom/android/server/content/SyncLogger$RotatingFileLogger;

    invoke-direct {v2}, Lcom/android/server/content/SyncLogger$RotatingFileLogger;-><init>()V

    sput-object v2, Lcom/android/server/content/SyncLogger;->sInstance:Lcom/android/server/content/SyncLogger;

    goto :goto_37

    .line 75
    :cond_30
    new-instance v2, Lcom/android/server/content/SyncLogger;

    invoke-direct {v2}, Lcom/android/server/content/SyncLogger;-><init>()V

    sput-object v2, Lcom/android/server/content/SyncLogger;->sInstance:Lcom/android/server/content/SyncLogger;

    .line 78
    .end local v1    # "enable":Z
    :cond_37
    :goto_37
    sget-object v1, Lcom/android/server/content/SyncLogger;->sInstance:Lcom/android/server/content/SyncLogger;
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_3b

    monitor-exit v0

    return-object v1

    .line 66
    :catchall_3b
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public dumpAll(Ljava/io/PrintWriter;)V
    .registers 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 103
    return-void
.end method

.method public enabled()Z
    .registers 2

    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public jobParametersToString(Landroid/app/job/JobParameters;)Ljava/lang/String;
    .registers 3
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .line 96
    const-string v0, ""

    return-object v0
.end method

.method public varargs log([Ljava/lang/Object;)V
    .registers 2
    .param p1, "message"    # [Ljava/lang/Object;

    .line 85
    return-void
.end method

.method public purgeOldLogs()V
    .registers 1

    .line 92
    return-void
.end method
