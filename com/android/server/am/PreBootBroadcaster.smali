.class public abstract Lcom/android/server/am/PreBootBroadcaster;
.super Landroid/content/IIntentReceiver$Stub;
.source "PreBootBroadcaster.java"


# static fields
.field private static final MSG_HIDE:I = 0x2

.field private static final MSG_SHOW:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PreBootBroadcaster"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mIndex:I

.field private final mIntent:Landroid/content/Intent;

.field private final mProgress:Lcom/android/internal/util/ProgressReporter;

.field private final mQuiet:Z

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private final mTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserId:I


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;ILcom/android/internal/util/ProgressReporter;Z)V
    .registers 9
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "userId"    # I
    .param p3, "progress"    # Lcom/android/internal/util/ProgressReporter;
    .param p4, "quiet"    # Z

    .line 64
    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/PreBootBroadcaster;->mIndex:I

    .line 126
    new-instance v0, Lcom/android/server/am/PreBootBroadcaster$1;

    invoke-static {}, Lcom/android/server/UiThread;->get()Lcom/android/server/UiThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/UiThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/server/am/PreBootBroadcaster$1;-><init>(Lcom/android/server/am/PreBootBroadcaster;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v0, p0, Lcom/android/server/am/PreBootBroadcaster;->mHandler:Landroid/os/Handler;

    .line 65
    iput-object p1, p0, Lcom/android/server/am/PreBootBroadcaster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 66
    iput p2, p0, Lcom/android/server/am/PreBootBroadcaster;->mUserId:I

    .line 67
    iput-object p3, p0, Lcom/android/server/am/PreBootBroadcaster;->mProgress:Lcom/android/internal/util/ProgressReporter;

    .line 68
    iput-boolean p4, p0, Lcom/android/server/am/PreBootBroadcaster;->mQuiet:Z

    .line 70
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PRE_BOOT_COMPLETED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/PreBootBroadcaster;->mIntent:Landroid/content/Intent;

    .line 71
    iget-object v0, p0, Lcom/android/server/am/PreBootBroadcaster;->mIntent:Landroid/content/Intent;

    const v1, 0x2000100

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 73
    iget-object v0, p0, Lcom/android/server/am/PreBootBroadcaster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/PreBootBroadcaster;->mIntent:Landroid/content/Intent;

    .line 74
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 73
    const/high16 v3, 0x100000

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/PreBootBroadcaster;->mTargets:Ljava/util/List;

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/PreBootBroadcaster;)Lcom/android/server/am/ActivityManagerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/PreBootBroadcaster;

    .line 50
    iget-object v0, p0, Lcom/android/server/am/PreBootBroadcaster;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/PreBootBroadcaster;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/PreBootBroadcaster;

    .line 50
    iget v0, p0, Lcom/android/server/am/PreBootBroadcaster;->mUserId:I

    return v0
.end method


# virtual methods
.method public abstract onFinished()V
.end method

.method public performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .registers 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resultCode"    # I
    .param p3, "data"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;
    .param p5, "ordered"    # Z
    .param p6, "sticky"    # Z
    .param p7, "sendingUser"    # I

    .line 120
    invoke-virtual {p0}, Lcom/android/server/am/PreBootBroadcaster;->sendNext()V

    .line 121
    return-void
.end method

.method public sendNext()V
    .registers 23

    .line 78
    move-object/from16 v15, p0

    iget v0, v15, Lcom/android/server/am/PreBootBroadcaster;->mIndex:I

    iget-object v1, v15, Lcom/android/server/am/PreBootBroadcaster;->mTargets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_10

    .line 81
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/PreBootBroadcaster;->onFinished()V

    .line 82
    return-void

    .line 85
    :cond_10
    iget-object v0, v15, Lcom/android/server/am/PreBootBroadcaster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v1, v15, Lcom/android/server/am/PreBootBroadcaster;->mUserId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->isUserRunning(II)Z

    move-result v0

    if-nez v0, :cond_46

    .line 86
    const-string v0, "PreBootBroadcaster"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v15, Lcom/android/server/am/PreBootBroadcaster;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is no longer running; skipping remaining receivers"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v0, v15, Lcom/android/server/am/PreBootBroadcaster;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 88
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/PreBootBroadcaster;->onFinished()V

    .line 89
    return-void

    .line 98
    :cond_46
    iget-object v0, v15, Lcom/android/server/am/PreBootBroadcaster;->mTargets:Ljava/util/List;

    iget v1, v15, Lcom/android/server/am/PreBootBroadcaster;->mIndex:I

    add-int/lit8 v3, v1, 0x1

    iput v3, v15, Lcom/android/server/am/PreBootBroadcaster;->mIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/content/pm/ResolveInfo;

    .line 99
    .local v14, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v0, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v13

    .line 101
    .local v13, "componentName":Landroid/content/ComponentName;
    iget-object v0, v15, Lcom/android/server/am/PreBootBroadcaster;->mProgress:Lcom/android/internal/util/ProgressReporter;

    if-eqz v0, :cond_8a

    .line 102
    iget-object v0, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v15, Lcom/android/server/am/PreBootBroadcaster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 103
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 104
    .local v0, "label":Ljava/lang/CharSequence;
    iget-object v1, v15, Lcom/android/server/am/PreBootBroadcaster;->mProgress:Lcom/android/internal/util/ProgressReporter;

    iget v3, v15, Lcom/android/server/am/PreBootBroadcaster;->mIndex:I

    iget-object v4, v15, Lcom/android/server/am/PreBootBroadcaster;->mTargets:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iget-object v5, v15, Lcom/android/server/am/PreBootBroadcaster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v6, 0x104007d

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v2

    .line 105
    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 104
    invoke-virtual {v1, v3, v4, v2}, Lcom/android/internal/util/ProgressReporter;->setProgress(IILjava/lang/CharSequence;)V

    .line 108
    .end local v0    # "label":Ljava/lang/CharSequence;
    :cond_8a
    const-string v0, "PreBootBroadcaster"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pre-boot of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v15, Lcom/android/server/am/PreBootBroadcaster;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget v0, v15, Lcom/android/server/am/PreBootBroadcaster;->mUserId:I

    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/am/EventLogTags;->writeAmPreBoot(ILjava/lang/String;)V

    .line 111
    iget-object v0, v15, Lcom/android/server/am/PreBootBroadcaster;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v13}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 112
    iget-object v0, v15, Lcom/android/server/am/PreBootBroadcaster;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, v15, Lcom/android/server/am/PreBootBroadcaster;->mIntent:Landroid/content/Intent;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/16 v16, 0x0

    sget v17, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v18, 0x3e8

    iget v5, v15, Lcom/android/server/am/PreBootBroadcaster;->mUserId:I

    move/from16 v19, v5

    move-object v5, v15

    move-object/from16 v20, v13

    move/from16 v13, v16

    .end local v13    # "componentName":Landroid/content/ComponentName;
    .local v20, "componentName":Landroid/content/ComponentName;
    move-object/from16 v21, v14

    move/from16 v14, v17

    .end local v14    # "ri":Landroid/content/pm/ResolveInfo;
    .local v21, "ri":Landroid/content/pm/ResolveInfo;
    move/from16 v15, v18

    move/from16 v16, v19

    invoke-virtual/range {v0 .. v16}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I

    .line 115
    return-void
.end method
