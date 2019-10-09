.class public Lcom/android/server/am/ForegroundInfoManager;
.super Ljava/lang/Object;
.source "ForegroundInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ForegroundInfoManager$ActivityChangeInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ProcessManager"


# instance fields
.field private final mActivityChangeListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lmiui/process/IActivityChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mActivityLock:Ljava/lang/Object;

.field private mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private mForegroundInfo:Lmiui/process/ForegroundInfo;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mForegroundLock"
    .end annotation
.end field

.field private final mForegroundInfoListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lmiui/process/IForegroundInfoListener;",
            ">;"
        }
    .end annotation
.end field

.field private mForegroundLock:Ljava/lang/Object;

.field private mLastActivityComponent:Landroid/content/ComponentName;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mActivityLock"
    .end annotation
.end field

.field private mProcessManagerService:Lcom/android/server/am/ProcessManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ProcessManagerService;Lcom/android/server/am/ActivityManagerService;)V
    .registers 4
    .param p1, "pms"    # Lcom/android/server/am/ProcessManagerService;
    .param p2, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ForegroundInfoManager;->mForegroundInfoListeners:Landroid/os/RemoteCallbackList;

    .line 29
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ForegroundInfoManager;->mActivityChangeListeners:Landroid/os/RemoteCallbackList;

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ForegroundInfoManager;->mForegroundLock:Ljava/lang/Object;

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ForegroundInfoManager;->mActivityLock:Ljava/lang/Object;

    .line 66
    iput-object p1, p0, Lcom/android/server/am/ForegroundInfoManager;->mProcessManagerService:Lcom/android/server/am/ProcessManagerService;

    .line 67
    iput-object p2, p0, Lcom/android/server/am/ForegroundInfoManager;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 68
    new-instance v0, Lmiui/process/ForegroundInfo;

    invoke-direct {v0}, Lmiui/process/ForegroundInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ForegroundInfoManager;->mForegroundInfo:Lmiui/process/ForegroundInfo;

    .line 69
    return-void
.end method

.method private notifyForegroundInfoLocked()V
    .registers 4

    .line 110
    iget-object v0, p0, Lcom/android/server/am/ForegroundInfoManager;->mForegroundInfoListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1f

    .line 112
    :try_start_a
    iget-object v1, p0, Lcom/android/server/am/ForegroundInfoManager;->mForegroundInfoListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lmiui/process/IForegroundInfoListener;

    iget-object v2, p0, Lcom/android/server/am/ForegroundInfoManager;->mForegroundInfo:Lmiui/process/ForegroundInfo;

    invoke-interface {v1, v2}, Lmiui/process/IForegroundInfoListener;->onForegroundInfoChanged(Lmiui/process/ForegroundInfo;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_17} :catch_18

    .line 115
    goto :goto_1c

    .line 113
    :catch_18
    move-exception v1

    .line 114
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 110
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1c
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 117
    .end local v0    # "i":I
    :cond_1f
    iget-object v0, p0, Lcom/android/server/am/ForegroundInfoManager;->mForegroundInfoListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 118
    return-void
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 208
    const-string v0, "ForegroundInfo Listener:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/android/server/am/ForegroundInfoManager;->mForegroundLock:Ljava/lang/Object;

    monitor-enter v0

    .line 210
    :try_start_8
    iget-object v1, p0, Lcom/android/server/am/ForegroundInfoManager;->mForegroundInfoListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 210
    .local v1, "i":I
    :goto_10
    if-ltz v1, :cond_31

    .line 211
    const-string v2, "  #"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 213
    const-string v2, ": "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 214
    iget-object v2, p0, Lcom/android/server/am/ForegroundInfoManager;->mForegroundInfoListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lmiui/process/IForegroundInfoListener;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 210
    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    .line 216
    .end local v1    # "i":I
    :cond_31
    iget-object v1, p0, Lcom/android/server/am/ForegroundInfoManager;->mForegroundInfoListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 217
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_8 .. :try_end_37} :catchall_a0

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mForegroundInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/ForegroundInfoManager;->mForegroundInfo:Lmiui/process/ForegroundInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 220
    const-string v0, "ActivityChange Listener:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 221
    iget-object v1, p0, Lcom/android/server/am/ForegroundInfoManager;->mActivityLock:Ljava/lang/Object;

    monitor-enter v1

    .line 222
    :try_start_59
    iget-object v0, p0, Lcom/android/server/am/ForegroundInfoManager;->mActivityChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 222
    .local v0, "i":I
    :goto_61
    if-ltz v0, :cond_7c

    .line 223
    const-string v2, "  #"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 225
    const-string v2, ": "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 226
    iget-object v2, p0, Lcom/android/server/am/ForegroundInfoManager;->mActivityChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v0}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 222
    add-int/lit8 v0, v0, -0x1

    goto :goto_61

    .line 228
    .end local v0    # "i":I
    :cond_7c
    iget-object v0, p0, Lcom/android/server/am/ForegroundInfoManager;->mActivityChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 229
    monitor-exit v1
    :try_end_82
    .catchall {:try_start_59 .. :try_end_82} :catchall_9d

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mLastActivityComponent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/ForegroundInfoManager;->mLastActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 231
    return-void

    .line 229
    :catchall_9d
    move-exception v0

    :try_start_9e
    monitor-exit v1
    :try_end_9f
    .catchall {:try_start_9e .. :try_end_9f} :catchall_9d

    throw v0

    .line 217
    :catchall_a0
    move-exception v1

    :try_start_a1
    monitor-exit v0
    :try_end_a2
    .catchall {:try_start_a1 .. :try_end_a2} :catchall_a0

    throw v1
.end method

.method public getForegroundInfo()Lmiui/process/ForegroundInfo;
    .registers 4

    .line 121
    iget-object v0, p0, Lcom/android/server/am/ForegroundInfoManager;->mForegroundLock:Ljava/lang/Object;

    monitor-enter v0

    .line 122
    :try_start_3
    new-instance v1, Lmiui/process/ForegroundInfo;

    iget-object v2, p0, Lcom/android/server/am/ForegroundInfoManager;->mForegroundInfo:Lmiui/process/ForegroundInfo;

    invoke-direct {v1, v2}, Lmiui/process/ForegroundInfo;-><init>(Lmiui/process/ForegroundInfo;)V

    monitor-exit v0

    return-object v1

    .line 123
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public notifyActivitiesChangedLocked(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "curComponent"    # Landroid/content/ComponentName;

    .line 174
    iget-object v0, p0, Lcom/android/server/am/ForegroundInfoManager;->mActivityChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_23

    .line 176
    :try_start_a
    iget-object v1, p0, Lcom/android/server/am/ForegroundInfoManager;->mActivityChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lmiui/process/IActivityChangeListener;

    .line 177
    .local v1, "listener":Lmiui/process/IActivityChangeListener;
    iget-object v2, p0, Lcom/android/server/am/ForegroundInfoManager;->mActivityChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v0}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v2

    .line 178
    .local v2, "cookie":Ljava/lang/Object;
    invoke-virtual {p0, v1, v2, p1}, Lcom/android/server/am/ForegroundInfoManager;->notifyActivityChangedIfNeededLocked(Lmiui/process/IActivityChangeListener;Ljava/lang/Object;Landroid/content/ComponentName;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_1b} :catch_1c

    .line 181
    .end local v1    # "listener":Lmiui/process/IActivityChangeListener;
    .end local v2    # "cookie":Ljava/lang/Object;
    goto :goto_20

    .line 179
    :catch_1c
    move-exception v1

    .line 180
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 174
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_20
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 183
    .end local v0    # "i":I
    :cond_23
    iget-object v0, p0, Lcom/android/server/am/ForegroundInfoManager;->mActivityChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 184
    return-void
.end method

.method public notifyActivityChanged(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "curActivityComponent"    # Landroid/content/ComponentName;

    .line 162
    iget-object v0, p0, Lcom/android/server/am/ForegroundInfoManager;->mActivityLock:Ljava/lang/Object;

    monitor-enter v0

    .line 163
    if-eqz p1, :cond_17

    :try_start_5
    iget-object v1, p0, Lcom/android/server/am/ForegroundInfoManager;->mLastActivityComponent:Landroid/content/ComponentName;

    .line 164
    invoke-virtual {p1, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_17

    .line 168
    :cond_e
    invoke-virtual {p0, p1}, Lcom/android/server/am/ForegroundInfoManager;->notifyActivitiesChangedLocked(Landroid/content/ComponentName;)V

    .line 169
    iput-object p1, p0, Lcom/android/server/am/ForegroundInfoManager;->mLastActivityComponent:Landroid/content/ComponentName;

    .line 170
    monitor-exit v0

    .line 171
    return-void

    .line 170
    :catchall_15
    move-exception v1

    goto :goto_19

    .line 165
    :cond_17
    :goto_17
    monitor-exit v0

    return-void

    .line 170
    :goto_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_15

    throw v1
.end method

.method public notifyActivityChangedIfNeededLocked(Lmiui/process/IActivityChangeListener;Ljava/lang/Object;Landroid/content/ComponentName;)V
    .registers 9
    .param p1, "listener"    # Lmiui/process/IActivityChangeListener;
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "curComponent"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 188
    if-eqz p2, :cond_58

    instance-of v0, p2, Lcom/android/server/am/ForegroundInfoManager$ActivityChangeInfo;

    if-nez v0, :cond_7

    goto :goto_58

    .line 192
    :cond_7
    move-object v0, p2

    check-cast v0, Lcom/android/server/am/ForegroundInfoManager$ActivityChangeInfo;

    .line 193
    .local v0, "info":Lcom/android/server/am/ForegroundInfoManager$ActivityChangeInfo;
    iget-object v1, p0, Lcom/android/server/am/ForegroundInfoManager;->mLastActivityComponent:Landroid/content/ComponentName;

    const/4 v2, 0x0

    if-eqz v1, :cond_16

    .line 194
    iget-object v1, p0, Lcom/android/server/am/ForegroundInfoManager;->mLastActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_17

    :cond_16
    move-object v1, v2

    .line 195
    .local v1, "lastPackage":Ljava/lang/String;
    :goto_17
    iget-object v3, p0, Lcom/android/server/am/ForegroundInfoManager;->mLastActivityComponent:Landroid/content/ComponentName;

    if-eqz v3, :cond_22

    .line 196
    iget-object v2, p0, Lcom/android/server/am/ForegroundInfoManager;->mLastActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    nop

    .line 198
    .local v2, "lastActivity":Ljava/lang/String;
    :cond_22
    iget-object v3, v0, Lcom/android/server/am/ForegroundInfoManager$ActivityChangeInfo;->targetPackages:Ljava/util/List;

    if-eqz v3, :cond_57

    iget-object v3, v0, Lcom/android/server/am/ForegroundInfoManager$ActivityChangeInfo;->targetActivities:Ljava/util/List;

    if-eqz v3, :cond_57

    iget-object v3, v0, Lcom/android/server/am/ForegroundInfoManager$ActivityChangeInfo;->targetPackages:Ljava/util/List;

    .line 199
    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_52

    iget-object v3, v0, Lcom/android/server/am/ForegroundInfoManager$ActivityChangeInfo;->targetPackages:Ljava/util/List;

    .line 200
    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_52

    iget-object v3, v0, Lcom/android/server/am/ForegroundInfoManager$ActivityChangeInfo;->targetActivities:Ljava/util/List;

    .line 201
    invoke-virtual {p3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_52

    iget-object v3, v0, Lcom/android/server/am/ForegroundInfoManager$ActivityChangeInfo;->targetActivities:Ljava/util/List;

    .line 202
    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_57

    .line 203
    :cond_52
    iget-object v3, p0, Lcom/android/server/am/ForegroundInfoManager;->mLastActivityComponent:Landroid/content/ComponentName;

    invoke-interface {p1, v3, p3}, Lmiui/process/IActivityChangeListener;->onActivityChanged(Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 205
    :cond_57
    return-void

    .line 189
    .end local v0    # "info":Lcom/android/server/am/ForegroundInfoManager$ActivityChangeInfo;
    .end local v1    # "lastPackage":Ljava/lang/String;
    .end local v2    # "lastActivity":Ljava/lang/String;
    :cond_58
    :goto_58
    return-void
.end method

.method public notifyForegroundInfoChanged(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStack$ActivityState;ILandroid/content/pm/ApplicationInfo;)V
    .registers 10
    .param p1, "foregroundRecord"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "state"    # Lcom/android/server/am/ActivityStack$ActivityState;
    .param p3, "pid"    # I
    .param p4, "multiWindowAppInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 74
    iget-object v0, p0, Lcom/android/server/am/ForegroundInfoManager;->mForegroundLock:Ljava/lang/Object;

    monitor-enter v0

    .line 75
    :try_start_3
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 76
    .local v1, "foregroundAppInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_81

    iget-object v2, p0, Lcom/android/server/am/ForegroundInfoManager;->mForegroundInfo:Lmiui/process/ForegroundInfo;

    iget-object v2, v2, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_14

    goto :goto_81

    .line 82
    :cond_14
    iget-object v2, p0, Lcom/android/server/am/ForegroundInfoManager;->mForegroundInfo:Lmiui/process/ForegroundInfo;

    invoke-virtual {v2}, Lmiui/process/ForegroundInfo;->resetFlags()V

    .line 83
    iget-boolean v2, p1, Lcom/android/server/am/ActivityRecord;->isColdStart:Z

    if-eqz v2, :cond_27

    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne p2, v2, :cond_27

    .line 84
    iget-object v2, p0, Lcom/android/server/am/ForegroundInfoManager;->mForegroundInfo:Lmiui/process/ForegroundInfo;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lmiui/process/ForegroundInfo;->addFlags(I)V

    .line 87
    :cond_27
    iget-object v2, p0, Lcom/android/server/am/ForegroundInfoManager;->mForegroundInfo:Lmiui/process/ForegroundInfo;

    iget-object v3, p0, Lcom/android/server/am/ForegroundInfoManager;->mForegroundInfo:Lmiui/process/ForegroundInfo;

    iget-object v3, v3, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    iput-object v3, v2, Lmiui/process/ForegroundInfo;->mLastForegroundPackageName:Ljava/lang/String;

    .line 88
    iget-object v2, p0, Lcom/android/server/am/ForegroundInfoManager;->mForegroundInfo:Lmiui/process/ForegroundInfo;

    iget-object v3, p0, Lcom/android/server/am/ForegroundInfoManager;->mForegroundInfo:Lmiui/process/ForegroundInfo;

    iget v3, v3, Lmiui/process/ForegroundInfo;->mForegroundUid:I

    iput v3, v2, Lmiui/process/ForegroundInfo;->mLastForegroundUid:I

    .line 89
    iget-object v2, p0, Lcom/android/server/am/ForegroundInfoManager;->mForegroundInfo:Lmiui/process/ForegroundInfo;

    iget-object v3, p0, Lcom/android/server/am/ForegroundInfoManager;->mForegroundInfo:Lmiui/process/ForegroundInfo;

    iget v3, v3, Lmiui/process/ForegroundInfo;->mForegroundPid:I

    iput v3, v2, Lmiui/process/ForegroundInfo;->mLastForegroundPid:I

    .line 91
    iget-object v2, p0, Lcom/android/server/am/ForegroundInfoManager;->mForegroundInfo:Lmiui/process/ForegroundInfo;

    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v3, v2, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    .line 92
    iget-object v2, p0, Lcom/android/server/am/ForegroundInfoManager;->mForegroundInfo:Lmiui/process/ForegroundInfo;

    iget v3, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v3, v2, Lmiui/process/ForegroundInfo;->mForegroundUid:I

    .line 93
    iget-object v2, p0, Lcom/android/server/am/ForegroundInfoManager;->mForegroundInfo:Lmiui/process/ForegroundInfo;

    iput p3, v2, Lmiui/process/ForegroundInfo;->mForegroundPid:I

    .line 95
    if-eqz p4, :cond_5e

    .line 96
    iget-object v2, p0, Lcom/android/server/am/ForegroundInfoManager;->mForegroundInfo:Lmiui/process/ForegroundInfo;

    iget-object v3, p4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v3, v2, Lmiui/process/ForegroundInfo;->mMultiWindowForegroundPackageName:Ljava/lang/String;

    .line 97
    iget-object v2, p0, Lcom/android/server/am/ForegroundInfoManager;->mForegroundInfo:Lmiui/process/ForegroundInfo;

    iget v3, p4, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v3, v2, Lmiui/process/ForegroundInfo;->mMultiWindowForegroundUid:I

    goto :goto_68

    .line 99
    :cond_5e
    iget-object v2, p0, Lcom/android/server/am/ForegroundInfoManager;->mForegroundInfo:Lmiui/process/ForegroundInfo;

    const/4 v3, 0x0

    iput-object v3, v2, Lmiui/process/ForegroundInfo;->mMultiWindowForegroundPackageName:Ljava/lang/String;

    .line 100
    iget-object v2, p0, Lcom/android/server/am/ForegroundInfoManager;->mForegroundInfo:Lmiui/process/ForegroundInfo;

    const/4 v3, -0x1

    iput v3, v2, Lmiui/process/ForegroundInfo;->mMultiWindowForegroundUid:I

    .line 103
    :goto_68
    invoke-direct {p0}, Lcom/android/server/am/ForegroundInfoManager;->notifyForegroundInfoLocked()V

    .line 104
    iget-object v2, p0, Lcom/android/server/am/ForegroundInfoManager;->mProcessManagerService:Lcom/android/server/am/ProcessManagerService;

    iget-object v3, p0, Lcom/android/server/am/ForegroundInfoManager;->mForegroundInfo:Lmiui/process/ForegroundInfo;

    iget-object v3, v3, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/am/ProcessManagerService;->foregroundInfoChanged(Ljava/lang/String;)V

    .line 105
    iget-object v2, p0, Lcom/android/server/am/ForegroundInfoManager;->mForegroundInfo:Lmiui/process/ForegroundInfo;

    iget-object v2, v2, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/am/ForegroundInfoManager;->mForegroundInfo:Lmiui/process/ForegroundInfo;

    iget v3, v3, Lmiui/process/ForegroundInfo;->mForegroundUid:I

    invoke-static {v2, v3}, Lcom/android/server/am/ExtraActivityManagerService;->updateLastStartActivityUid(Ljava/lang/String;I)V

    .line 106
    .end local v1    # "foregroundAppInfo":Landroid/content/pm/ApplicationInfo;
    monitor-exit v0

    .line 107
    return-void

    .line 78
    .restart local v1    # "foregroundAppInfo":Landroid/content/pm/ApplicationInfo;
    :cond_81
    :goto_81
    const-string v2, "ProcessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "skip notify foregroundAppInfo:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    monitor-exit v0

    return-void

    .line 106
    .end local v1    # "foregroundAppInfo":Landroid/content/pm/ApplicationInfo;
    :catchall_9a
    move-exception v1

    monitor-exit v0
    :try_end_9c
    .catchall {:try_start_3 .. :try_end_9c} :catchall_9a

    throw v1
.end method

.method public registerActivityChangeListener(Ljava/util/List;Ljava/util/List;Lmiui/process/IActivityChangeListener;)V
    .registers 7
    .param p3, "listener"    # Lmiui/process/IActivityChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lmiui/process/IActivityChangeListener;",
            ")V"
        }
    .end annotation

    .line 144
    .local p1, "targetPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "targetActivities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p3, :cond_18

    .line 145
    iget-object v0, p0, Lcom/android/server/am/ForegroundInfoManager;->mActivityLock:Ljava/lang/Object;

    monitor-enter v0

    .line 146
    :try_start_5
    new-instance v1, Lcom/android/server/am/ForegroundInfoManager$ActivityChangeInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-direct {v1, p0, v2, p1, p2}, Lcom/android/server/am/ForegroundInfoManager$ActivityChangeInfo;-><init>(Lcom/android/server/am/ForegroundInfoManager;ILjava/util/List;Ljava/util/List;)V

    .line 148
    .local v1, "info":Lcom/android/server/am/ForegroundInfoManager$ActivityChangeInfo;
    iget-object v2, p0, Lcom/android/server/am/ForegroundInfoManager;->mActivityChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, p3, v1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 149
    .end local v1    # "info":Lcom/android/server/am/ForegroundInfoManager$ActivityChangeInfo;
    monitor-exit v0

    goto :goto_18

    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_15

    throw v1

    .line 151
    :cond_18
    :goto_18
    return-void
.end method

.method public registerForegroundInfoListener(Lmiui/process/IForegroundInfoListener;)V
    .registers 4
    .param p1, "listener"    # Lmiui/process/IForegroundInfoListener;

    .line 127
    if-eqz p1, :cond_f

    .line 128
    iget-object v0, p0, Lcom/android/server/am/ForegroundInfoManager;->mForegroundLock:Ljava/lang/Object;

    monitor-enter v0

    .line 129
    :try_start_5
    iget-object v1, p0, Lcom/android/server/am/ForegroundInfoManager;->mForegroundInfoListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 130
    monitor-exit v0

    goto :goto_f

    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw v1

    .line 132
    :cond_f
    :goto_f
    return-void
.end method

.method public unregisterActivityChangeListener(Lmiui/process/IActivityChangeListener;)V
    .registers 4
    .param p1, "listener"    # Lmiui/process/IActivityChangeListener;

    .line 154
    if-eqz p1, :cond_f

    .line 155
    iget-object v0, p0, Lcom/android/server/am/ForegroundInfoManager;->mActivityLock:Ljava/lang/Object;

    monitor-enter v0

    .line 156
    :try_start_5
    iget-object v1, p0, Lcom/android/server/am/ForegroundInfoManager;->mActivityChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 157
    monitor-exit v0

    goto :goto_f

    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw v1

    .line 159
    :cond_f
    :goto_f
    return-void
.end method

.method public unregisterForegroundInfoListener(Lmiui/process/IForegroundInfoListener;)V
    .registers 4
    .param p1, "listener"    # Lmiui/process/IForegroundInfoListener;

    .line 135
    if-eqz p1, :cond_f

    .line 136
    iget-object v0, p0, Lcom/android/server/am/ForegroundInfoManager;->mForegroundLock:Ljava/lang/Object;

    monitor-enter v0

    .line 137
    :try_start_5
    iget-object v1, p0, Lcom/android/server/am/ForegroundInfoManager;->mForegroundInfoListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 138
    monitor-exit v0

    goto :goto_f

    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw v1

    .line 140
    :cond_f
    :goto_f
    return-void
.end method
