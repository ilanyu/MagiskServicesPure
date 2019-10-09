.class Lcom/android/server/am/SafeActivityOptions;
.super Ljava/lang/Object;
.source "SafeActivityOptions.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityManager"


# instance fields
.field private mCallerOptions:Landroid/app/ActivityOptions;

.field private final mOriginalCallingPid:I

.field private final mOriginalCallingUid:I

.field private final mOriginalOptions:Landroid/app/ActivityOptions;

.field private mRealCallingPid:I

.field private mRealCallingUid:I


# direct methods
.method constructor <init>(Landroid/app/ActivityOptions;)V
    .registers 3
    .param p1, "options"    # Landroid/app/ActivityOptions;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iput v0, p0, Lcom/android/server/am/SafeActivityOptions;->mOriginalCallingPid:I

    .line 80
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iput v0, p0, Lcom/android/server/am/SafeActivityOptions;->mOriginalCallingUid:I

    .line 81
    iput-object p1, p0, Lcom/android/server/am/SafeActivityOptions;->mOriginalOptions:Landroid/app/ActivityOptions;

    .line 82
    return-void
.end method

.method private abort()V
    .registers 2

    .line 161
    iget-object v0, p0, Lcom/android/server/am/SafeActivityOptions;->mOriginalOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_9

    .line 162
    iget-object v0, p0, Lcom/android/server/am/SafeActivityOptions;->mOriginalOptions:Landroid/app/ActivityOptions;

    invoke-static {v0}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 164
    :cond_9
    iget-object v0, p0, Lcom/android/server/am/SafeActivityOptions;->mCallerOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_12

    .line 165
    iget-object v0, p0, Lcom/android/server/am/SafeActivityOptions;->mCallerOptions:Landroid/app/ActivityOptions;

    invoke-static {v0}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 167
    :cond_12
    return-void
.end method

.method static abort(Lcom/android/server/am/SafeActivityOptions;)V
    .registers 1
    .param p0, "options"    # Lcom/android/server/am/SafeActivityOptions;

    .line 170
    if-eqz p0, :cond_5

    .line 171
    invoke-direct {p0}, Lcom/android/server/am/SafeActivityOptions;->abort()V

    .line 173
    :cond_5
    return-void
.end method

.method private checkPermissions(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityStackSupervisor;Landroid/app/ActivityOptions;II)V
    .registers 13
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p3, "callerApp"    # Lcom/android/server/am/ProcessRecord;
    .param p4, "supervisor"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p5, "options"    # Landroid/app/ActivityOptions;
    .param p6, "callingPid"    # I
    .param p7, "callingUid"    # I

    .line 199
    invoke-virtual {p5}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5e

    iget-object v0, p4, Lcom/android/server/am/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    .line 200
    invoke-virtual {v0, p7}, Lcom/android/server/am/RecentTasks;->isCallerRecents(I)Z

    move-result v0

    if-nez v0, :cond_5e

    .line 201
    iget-object v0, p4, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v2, "android.permission.START_TASKS_FROM_RECENTS"

    invoke-virtual {v0, v2, p6, p7}, Lcom/android/server/am/ActivityManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    .line 203
    .local v0, "startInTaskPerm":I
    if-eq v0, v1, :cond_1a

    .end local v0    # "startInTaskPerm":I
    goto :goto_5e

    .line 204
    .restart local v0    # "startInTaskPerm":I
    :cond_1a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: starting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/android/server/am/SafeActivityOptions;->getIntentString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " (pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") with launchTaskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {p5}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 208
    .local v1, "msg":Ljava/lang/String;
    const-string v2, "ActivityManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 214
    .end local v0    # "startInTaskPerm":I
    .end local v1    # "msg":Ljava/lang/String;
    :cond_5e
    :goto_5e
    invoke-virtual {p5}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v0

    .line 215
    .local v0, "launchDisplayId":I
    if-eqz p2, :cond_ad

    if-eq v0, v1, :cond_ad

    .line 216
    invoke-virtual {p4, p6, p7, v0, p2}, Lcom/android/server/am/ActivityStackSupervisor;->isCallerAllowedToLaunchOnDisplay(IIILandroid/content/pm/ActivityInfo;)Z

    move-result v1

    if-eqz v1, :cond_6d

    goto :goto_ad

    .line 218
    :cond_6d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: starting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/android/server/am/SafeActivityOptions;->getIntentString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " (pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") with launchDisplayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 222
    .restart local v1    # "msg":Ljava/lang/String;
    const-string v2, "ActivityManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 226
    .end local v1    # "msg":Ljava/lang/String;
    :cond_ad
    :goto_ad
    invoke-virtual {p5}, Landroid/app/ActivityOptions;->getLockTaskMode()Z

    move-result v1

    .line 227
    .local v1, "lockTaskMode":Z
    if-eqz p2, :cond_105

    if-eqz v1, :cond_105

    iget-object v2, p4, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 228
    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getLockTaskController()Lcom/android/server/am/LockTaskController;

    move-result-object v2

    .line 229
    invoke-static {p7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 228
    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/LockTaskController;->isPackageWhitelisted(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c8

    goto :goto_105

    .line 230
    :cond_c8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission Denial: starting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/android/server/am/SafeActivityOptions;->getIntentString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " (pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") with lockTaskMode=true"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 233
    .local v2, "msg":Ljava/lang/String;
    const-string v3, "ActivityManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 238
    .end local v2    # "msg":Ljava/lang/String;
    :cond_105
    :goto_105
    invoke-virtual {p5}, Landroid/app/ActivityOptions;->getRemoteAnimationAdapter()Landroid/view/RemoteAnimationAdapter;

    move-result-object v2

    .line 239
    .local v2, "adapter":Landroid/view/RemoteAnimationAdapter;
    if-eqz v2, :cond_153

    iget-object v3, p4, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v4, "android.permission.CONTROL_REMOTE_APP_TRANSITION_ANIMATIONS"

    invoke-virtual {v3, v4, p6, p7}, Lcom/android/server/am/ActivityManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v3

    if-nez v3, :cond_116

    goto :goto_153

    .line 242
    :cond_116
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: starting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/android/server/am/SafeActivityOptions;->getIntentString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " (pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") with remoteAnimationAdapter"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 245
    .local v3, "msg":Ljava/lang/String;
    const-string v4, "ActivityManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    new-instance v4, Ljava/lang/SecurityException;

    invoke-direct {v4, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 248
    .end local v3    # "msg":Ljava/lang/String;
    :cond_153
    :goto_153
    return-void
.end method

.method static fromBundle(Landroid/os/Bundle;)Lcom/android/server/am/SafeActivityOptions;
    .registers 3
    .param p0, "bOptions"    # Landroid/os/Bundle;

    .line 66
    if-eqz p0, :cond_c

    .line 67
    new-instance v0, Lcom/android/server/am/SafeActivityOptions;

    invoke-static {p0}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/am/SafeActivityOptions;-><init>(Landroid/app/ActivityOptions;)V

    goto :goto_d

    .line 68
    :cond_c
    const/4 v0, 0x0

    .line 66
    :goto_d
    return-object v0
.end method

.method private getIntentString(Landroid/content/Intent;)Ljava/lang/String;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 251
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_7
    const-string v0, "(no intent)"

    :goto_9
    return-object v0
.end method

.method private setCallingPidForRemoteAnimationAdapter(Landroid/app/ActivityOptions;I)V
    .registers 6
    .param p1, "options"    # Landroid/app/ActivityOptions;
    .param p2, "callingPid"    # I

    .line 142
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getRemoteAnimationAdapter()Landroid/view/RemoteAnimationAdapter;

    move-result-object v0

    .line 143
    .local v0, "adapter":Landroid/view/RemoteAnimationAdapter;
    if-nez v0, :cond_7

    .line 144
    return-void

    .line 146
    :cond_7
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne p2, v1, :cond_15

    .line 147
    const-string v1, "ActivityManager"

    const-string v2, "Safe activity options constructed after clearing calling id"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    return-void

    .line 150
    :cond_15
    invoke-virtual {v0, p2}, Landroid/view/RemoteAnimationAdapter;->setCallingPid(I)V

    .line 151
    return-void
.end method


# virtual methods
.method getActivityOptionsBundle()Landroid/os/Bundle;
    .registers 2

    .line 114
    iget-object v0, p0, Lcom/android/server/am/SafeActivityOptions;->mOriginalOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/am/SafeActivityOptions;->mOriginalOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method getOptions(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityStackSupervisor;)Landroid/app/ActivityOptions;
    .registers 14
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p3, "callerApp"    # Lcom/android/server/am/ProcessRecord;
    .param p4, "supervisor"    # Lcom/android/server/am/ActivityStackSupervisor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/android/server/am/SafeActivityOptions;->mOriginalOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_19

    .line 129
    iget-object v6, p0, Lcom/android/server/am/SafeActivityOptions;->mOriginalOptions:Landroid/app/ActivityOptions;

    iget v7, p0, Lcom/android/server/am/SafeActivityOptions;->mOriginalCallingPid:I

    iget v8, p0, Lcom/android/server/am/SafeActivityOptions;->mOriginalCallingUid:I

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/SafeActivityOptions;->checkPermissions(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityStackSupervisor;Landroid/app/ActivityOptions;II)V

    .line 131
    iget-object v0, p0, Lcom/android/server/am/SafeActivityOptions;->mOriginalOptions:Landroid/app/ActivityOptions;

    iget v1, p0, Lcom/android/server/am/SafeActivityOptions;->mOriginalCallingPid:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/SafeActivityOptions;->setCallingPidForRemoteAnimationAdapter(Landroid/app/ActivityOptions;I)V

    .line 133
    :cond_19
    iget-object v0, p0, Lcom/android/server/am/SafeActivityOptions;->mCallerOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_32

    .line 134
    iget-object v6, p0, Lcom/android/server/am/SafeActivityOptions;->mCallerOptions:Landroid/app/ActivityOptions;

    iget v7, p0, Lcom/android/server/am/SafeActivityOptions;->mRealCallingPid:I

    iget v8, p0, Lcom/android/server/am/SafeActivityOptions;->mRealCallingUid:I

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/SafeActivityOptions;->checkPermissions(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityStackSupervisor;Landroid/app/ActivityOptions;II)V

    .line 136
    iget-object v0, p0, Lcom/android/server/am/SafeActivityOptions;->mCallerOptions:Landroid/app/ActivityOptions;

    iget v1, p0, Lcom/android/server/am/SafeActivityOptions;->mRealCallingPid:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/SafeActivityOptions;->setCallingPidForRemoteAnimationAdapter(Landroid/app/ActivityOptions;I)V

    .line 138
    :cond_32
    iget-object v0, p0, Lcom/android/server/am/SafeActivityOptions;->mOriginalOptions:Landroid/app/ActivityOptions;

    iget-object v1, p0, Lcom/android/server/am/SafeActivityOptions;->mCallerOptions:Landroid/app/ActivityOptions;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/SafeActivityOptions;->mergeActivityOptions(Landroid/app/ActivityOptions;Landroid/app/ActivityOptions;)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method getOptions(Lcom/android/server/am/ActivityRecord;)Landroid/app/ActivityOptions;
    .registers 6
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 101
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/am/SafeActivityOptions;->getOptions(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityStackSupervisor;)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method getOptions(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/app/ActivityOptions;
    .registers 3
    .param p1, "supervisor"    # Lcom/android/server/am/ActivityStackSupervisor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 109
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, p1}, Lcom/android/server/am/SafeActivityOptions;->getOptions(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityStackSupervisor;)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method mergeActivityOptions(Landroid/app/ActivityOptions;Landroid/app/ActivityOptions;)Landroid/app/ActivityOptions;
    .registers 6
    .param p1, "options1"    # Landroid/app/ActivityOptions;
    .param p2, "options2"    # Landroid/app/ActivityOptions;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 182
    if-nez p1, :cond_3

    .line 183
    return-object p2

    .line 185
    :cond_3
    if-nez p2, :cond_6

    .line 186
    return-object p1

    .line 188
    :cond_6
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 189
    .local v0, "b1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 190
    .local v1, "b2":Landroid/os/Bundle;
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 191
    invoke-static {v0}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object v2

    return-object v2
.end method

.method popAppVerificationBundle()Landroid/os/Bundle;
    .registers 2

    .line 157
    iget-object v0, p0, Lcom/android/server/am/SafeActivityOptions;->mOriginalOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/am/SafeActivityOptions;->mOriginalOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->popAppVerificationBundle()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method setCallerOptions(Landroid/app/ActivityOptions;)V
    .registers 3
    .param p1, "options"    # Landroid/app/ActivityOptions;

    .line 90
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iput v0, p0, Lcom/android/server/am/SafeActivityOptions;->mRealCallingPid:I

    .line 91
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iput v0, p0, Lcom/android/server/am/SafeActivityOptions;->mRealCallingUid:I

    .line 92
    iput-object p1, p0, Lcom/android/server/am/SafeActivityOptions;->mCallerOptions:Landroid/app/ActivityOptions;

    .line 93
    return-void
.end method
