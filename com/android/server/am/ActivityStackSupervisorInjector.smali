.class Lcom/android/server/am/ActivityStackSupervisorInjector;
.super Ljava/lang/Object;
.source "ActivityStackSupervisorInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityStackSupervisorInjector$OpCheckData;
    }
.end annotation


# static fields
.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "android.intent.extra.PACKAGE_NAME"

.field private static final INCALL_PACKAGE_NAME:Ljava/lang/String; = "com.android.incallui"

.field private static final INCALL_UI_NAME:Ljava/lang/String; = "com.android.incallui.InCallActivity"

.field private static final MAX_SWITCH_INTERVAL:I = 0x3e8

.field public static final MIUI_APP_LOCK_ACTION:Ljava/lang/String; = "miui.intent.action.CHECK_ACCESS_CONTROL"

.field public static final MIUI_APP_LOCK_ACTIVITY_NAME:Ljava/lang/String; = "com.miui.applicationlock.ConfirmAccessControl"

.field public static final MIUI_APP_LOCK_PACKAGE_NAME:Ljava/lang/String; = "com.miui.securitycenter"

.field public static final MIUI_APP_LOCK_REQUEST_CODE:I = -0x3e9

.field private static final TAG:Ljava/lang/String; = "ActivityStackSupervisor"

.field private static mLastIncallUiLaunchTime:J

.field private static sActivityRequestId:I

.field static final sSupportsMultiTaskInDockList:Ljava/util/ArrayList;
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
    .registers 2

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/ActivityStackSupervisorInjector;->sSupportsMultiTaskInDockList:Ljava/util/ArrayList;

    .line 61
    sget-object v0, Lcom/android/server/am/ActivityStackSupervisorInjector;->sSupportsMultiTaskInDockList:Ljava/util/ArrayList;

    const-string v1, "com.miui.hybrid"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/android/server/am/ActivityStackSupervisorInjector;->mLastIncallUiLaunchTime:J

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkXSpaceControl(Landroid/content/Context;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;ZIILjava/lang/String;)Landroid/content/Intent;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "fromActivity"    # Z
    .param p4, "requestCode"    # I
    .param p5, "userId"    # I
    .param p6, "callingPackage"    # Ljava/lang/String;

    .line 74
    invoke-static {p2, p6}, Lcom/miui/server/XSpaceManagerService;->isPublicIntent(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 75
    return-object p2

    .line 77
    :cond_7
    invoke-static/range {p0 .. p6}, Lcom/miui/server/XSpaceManagerService;->checkXSpaceControl(Landroid/content/Context;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;ZIILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static ensurePackageDexOpt(Ljava/lang/String;)Z
    .registers 2
    .param p0, "packageName"    # Ljava/lang/String;

    .line 120
    invoke-static {}, Lcom/android/server/pm/PackageDexOptimizerManager;->getInstance()Lcom/android/server/pm/PackageDexOptimizerManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/pm/PackageDexOptimizerManager;->ensurePackageDexOpt(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static exitfreeformIfNeeded(Lcom/android/server/am/TaskRecord;IILcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/TaskRecord;
    .registers 8
    .param p0, "task"    # Lcom/android/server/am/TaskRecord;
    .param p1, "taskId"    # I
    .param p2, "windowMode"    # I
    .param p3, "supervisor"    # Lcom/android/server/am/ActivityStackSupervisor;

    .line 248
    move-object v0, p0

    .line 249
    .local v0, "tTask":Lcom/android/server/am/TaskRecord;
    if-eqz v0, :cond_1a

    .line 250
    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getWindowingMode()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1a

    if-eq p2, v2, :cond_1a

    .line 251
    const/4 v1, 0x0

    .line 252
    .local v1, "op":Landroid/app/ActivityOptions;
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    .line 253
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 254
    const/4 v3, 0x2

    invoke-virtual {p3, p1, v3, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(IILandroid/app/ActivityOptions;Z)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 258
    .end local v1    # "op":Landroid/app/ActivityOptions;
    :cond_1a
    return-object v0
.end method

.method private static getNextRequestIdLocked()I
    .registers 2

    .line 211
    sget v0, Lcom/android/server/am/ActivityStackSupervisorInjector;->sActivityRequestId:I

    const v1, 0x7fffffff

    if-lt v0, v1, :cond_a

    .line 212
    const/4 v0, 0x0

    sput v0, Lcom/android/server/am/ActivityStackSupervisorInjector;->sActivityRequestId:I

    .line 214
    :cond_a
    sget v0, Lcom/android/server/am/ActivityStackSupervisorInjector;->sActivityRequestId:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/server/am/ActivityStackSupervisorInjector;->sActivityRequestId:I

    .line 215
    sget v0, Lcom/android/server/am/ActivityStackSupervisorInjector;->sActivityRequestId:I

    return v0
.end method

.method static isAllowedAppSwitch(Lcom/android/server/am/ActivityStack;Ljava/lang/String;Landroid/content/pm/ActivityInfo;)Z
    .registers 9
    .param p0, "stack"    # Lcom/android/server/am/ActivityStack;
    .param p1, "callingPackageName"    # Ljava/lang/String;
    .param p2, "aInfo"    # Landroid/content/pm/ActivityInfo;

    .line 137
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 138
    :cond_4
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 139
    .local v1, "topr":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_6e

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_6e

    const-string v2, "com.android.incallui.InCallActivity"

    iget-object v3, v1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6e

    const-string v2, "com.android.incallui"

    .line 140
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6e

    if-eqz p2, :cond_6e

    const-string v2, "com.android.incallui.InCallActivity"

    iget-object v3, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 141
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6e

    sget-wide v2, Lcom/android/server/am/ActivityStackSupervisorInjector;->mLastIncallUiLaunchTime:J

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    .line 142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_6e

    .line 143
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "app switch:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " stopped for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "com.android.incallui.InCallActivity"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x3e8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ms.Try later."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return v0

    .line 147
    :cond_6e
    if-eqz p2, :cond_80

    const-string v0, "com.android.incallui.InCallActivity"

    iget-object v2, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_80

    .line 148
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/android/server/am/ActivityStackSupervisorInjector;->mLastIncallUiLaunchTime:J

    .line 150
    :cond_80
    const/4 v0, 0x1

    return v0
.end method

.method static isAllowedAppSwitch(Lcom/android/server/am/ActivityStack;Ljava/lang/String;Landroid/content/pm/ActivityInfo;J)Z
    .registers 6
    .param p0, "stack"    # Lcom/android/server/am/ActivityStack;
    .param p1, "callingPackageName"    # Ljava/lang/String;
    .param p2, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p3, "lastTime"    # J

    .line 132
    invoke-static {p0, p1, p2}, Lcom/android/server/am/ActivityStackSupervisorInjector;->isAllowedAppSwitch(Lcom/android/server/am/ActivityStack;Ljava/lang/String;Landroid/content/pm/ActivityInfo;)Z

    move-result v0

    return v0
.end method

.method static isAppLockActivity(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Z
    .registers 4
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;

    .line 81
    if-eqz p0, :cond_29

    if-eqz p1, :cond_29

    const-string v0, "com.miui.securitycenter"

    .line 82
    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    const-string/jumbo v0, "miui.intent.action.CHECK_ACCESS_CONTROL"

    .line 83
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    const-string v0, "com.miui.applicationlock.ConfirmAccessControl"

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    const/4 v0, 0x1

    goto :goto_2a

    :cond_29
    const/4 v0, 0x0

    .line 81
    :goto_2a
    return v0
.end method

.method static isXSpaceActive()Z
    .registers 1

    .line 69
    sget-boolean v0, Lcom/miui/server/XSpaceManagerService;->sIsXSpaceActived:Z

    return v0
.end method

.method public static notPauseAtFreeformMode(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityStack;)Z
    .registers 6
    .param p0, "focusStack"    # Lcom/android/server/am/ActivityStack;
    .param p1, "curStack"    # Lcom/android/server/am/ActivityStack;

    .line 234
    invoke-static {}, Lcom/android/server/am/ActivityStackSupervisorInjector;->supportsFreeform()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 235
    return v1

    .line 237
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v0

    const/4 v2, 0x5

    const/4 v3, 0x1

    if-ne v0, v3, :cond_16

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v0

    if-eq v0, v2, :cond_1c

    .line 238
    :cond_16
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v0

    if-ne v0, v2, :cond_1e

    .line 237
    :cond_1c
    move v1, v3

    goto :goto_1f

    .line 238
    :cond_1e
    nop

    .line 237
    :goto_1f
    return v1
.end method

.method public static noteOperationLocked(IILjava/lang/String;Landroid/os/Handler;Lcom/android/server/am/ActivityStackSupervisorInjector$OpCheckData;)I
    .registers 28
    .param p0, "appOp"    # I
    .param p1, "callingUid"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "checker"    # Lcom/android/server/am/ActivityStackSupervisorInjector$OpCheckData;

    move/from16 v0, p0

    move/from16 v13, p1

    move-object/from16 v14, p2

    .line 154
    move-object/from16 v15, p4

    iget-object v12, v15, Lcom/android/server/am/ActivityStackSupervisorInjector$OpCheckData;->service:Lcom/android/server/am/ActivityManagerService;

    .line 155
    .local v12, "service":Lcom/android/server/am/ActivityManagerService;
    iget-object v1, v12, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    invoke-virtual {v1, v0, v13, v14}, Lcom/android/server/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v11

    .line 156
    .local v11, "mode":I
    const/4 v1, 0x5

    if-eq v11, v1, :cond_14

    .line 157
    return v11

    .line 159
    :cond_14
    iget v10, v15, Lcom/android/server/am/ActivityStackSupervisorInjector$OpCheckData;->userId:I

    .line 160
    .local v10, "userId":I
    invoke-static {}, Lcom/android/server/am/ActivityStackSupervisorInjector;->getNextRequestIdLocked()I

    move-result v16

    .line 161
    .local v16, "requestCode":I
    iget-object v1, v15, Lcom/android/server/am/ActivityStackSupervisorInjector$OpCheckData;->service:Lcom/android/server/am/ActivityManagerService;

    const/4 v2, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x1

    new-array v8, v9, [Landroid/content/Intent;

    iget-object v3, v15, Lcom/android/server/am/ActivityStackSupervisorInjector$OpCheckData;->orginalintent:Landroid/content/Intent;

    const/16 v17, 0x0

    aput-object v3, v8, v17

    new-array v5, v9, [Ljava/lang/String;

    iget-object v3, v15, Lcom/android/server/am/ActivityStackSupervisorInjector$OpCheckData;->orginalintent:Landroid/content/Intent;

    iget-object v4, v12, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 168
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v17

    const/high16 v18, 0x50000000

    const/16 v19, 0x0

    .line 161
    move-object v3, v14

    move v4, v13

    move-object/from16 v20, v5

    move v5, v10

    move-object/from16 v21, v8

    move/from16 v8, v16

    move-object/from16 v9, v21

    move/from16 v22, v10

    move-object/from16 v10, v20

    .line 161
    .end local v10    # "userId":I
    .local v22, "userId":I
    move/from16 v20, v11

    move/from16 v11, v18

    .line 161
    .end local v11    # "mode":I
    .local v20, "mode":I
    move-object/from16 v18, v12

    move-object/from16 v12, v19

    .line 161
    .end local v12    # "service":Lcom/android/server/am/ActivityManagerService;
    .local v18, "service":Lcom/android/server/am/ActivityManagerService;
    invoke-virtual/range {v1 .. v12}, Lcom/android/server/am/ActivityManagerService;->getIntentSenderLocked(ILjava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;

    move-result-object v8

    .line 171
    .local v8, "target":Landroid/content/IIntentSender;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.miui.intent.action.REQUEST_PERMISSIONS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v9, v1

    .line 172
    .local v9, "intent":Landroid/content/Intent;
    const-string v1, "com.lbe.security.miui"

    invoke-virtual {v9, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    const-string v1, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v9, v1, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    const-string v1, "android.intent.extra.UID"

    invoke-virtual {v9, v1, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 175
    const-string v1, "android.intent.extra.INTENT"

    new-instance v2, Landroid/content/IntentSender;

    invoke-direct {v2, v8}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    invoke-virtual {v9, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 176
    iget-object v1, v15, Lcom/android/server/am/ActivityStackSupervisorInjector$OpCheckData;->resultRecord:Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_82

    .line 177
    const-string v1, "EXTRA_RESULT_NEEDED"

    const/4 v2, 0x1

    invoke-virtual {v9, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 179
    :cond_82
    const-string/jumbo v1, "op"

    invoke-virtual {v9, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 181
    iget-object v1, v15, Lcom/android/server/am/ActivityStackSupervisorInjector$OpCheckData;->stackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v15, Lcom/android/server/am/ActivityStackSupervisorInjector$OpCheckData;->resolvedType:Ljava/lang/String;

    iget v4, v15, Lcom/android/server/am/ActivityStackSupervisorInjector$OpCheckData;->startFlags:I

    const/4 v5, 0x0

    move-object v2, v9

    move/from16 v6, v22

    move v7, v13

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/app/ProfilerInfo;II)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 183
    .local v1, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v1, :cond_d7

    .line 184
    iput-object v1, v15, Lcom/android/server/am/ActivityStackSupervisorInjector$OpCheckData;->newAInfo:Landroid/content/pm/ActivityInfo;

    .line 185
    iput-object v9, v15, Lcom/android/server/am/ActivityStackSupervisorInjector$OpCheckData;->newIntent:Landroid/content/Intent;

    .line 186
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_ae

    .line 187
    iget-object v2, v15, Lcom/android/server/am/ActivityStackSupervisorInjector$OpCheckData;->resolvedType:Ljava/lang/String;

    move/from16 v3, v22

    invoke-static {v9, v2, v3}, Lcom/android/server/am/ActivityStackSupervisorInjector;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 188
    .end local v22    # "userId":I
    .local v2, "rInfo":Landroid/content/pm/ResolveInfo;
    .local v3, "userId":I
    iput-object v2, v15, Lcom/android/server/am/ActivityStackSupervisorInjector$OpCheckData;->newRInfo:Landroid/content/pm/ResolveInfo;

    .line 188
    .end local v2    # "rInfo":Landroid/content/pm/ResolveInfo;
    goto :goto_b0

    .line 190
    .end local v3    # "userId":I
    .restart local v22    # "userId":I
    :cond_ae
    move/from16 v3, v22

    .line 190
    .end local v22    # "userId":I
    .restart local v3    # "userId":I
    :goto_b0
    const-string v2, "ActivityStackSupervisor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MIUILOG - Launching Request permission [Activity] uid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "  pkg : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " op : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    return v17

    .line 194
    .end local v3    # "userId":I
    .restart local v22    # "userId":I
    :cond_d7
    move/from16 v3, v22

    .line 194
    .end local v22    # "userId":I
    .restart local v3    # "userId":I
    return v20
.end method

.method private static resolveIntent(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;
    .registers 5
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "resolvedType"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 203
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const v1, 0x10400

    invoke-interface {v0, p0, p1, v1, p2}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    return-object v0

    .line 205
    :catch_c
    move-exception v0

    .line 207
    const/4 v0, 0x0

    return-object v0
.end method

.method static resolveXSpaceIntent(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Lcom/android/server/am/ActivityStackSupervisor;Landroid/app/ProfilerInfo;Ljava/lang/String;IILjava/lang/String;)Landroid/content/pm/ActivityInfo;
    .registers 24
    .param p0, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "stack"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p3, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "startFlags"    # I
    .param p6, "userId"    # I
    .param p7, "callingPackage"    # Ljava/lang/String;

    move-object/from16 v8, p1

    move/from16 v9, p6

    .line 90
    move-object/from16 v10, p7

    if-eqz v9, :cond_c

    const/16 v0, 0x3e7

    if-ne v9, v0, :cond_12

    .line 91
    :cond_c
    invoke-static {v8, v10}, Lcom/miui/server/XSpaceManagerService;->isPublicIntent(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 92
    :cond_12
    return-object p0

    .line 94
    :cond_13
    invoke-static {v8, v10}, Lcom/miui/server/XSpaceManagerService;->shouldResolveAgain(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 96
    :try_start_19
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1d} :catch_2b

    const v2, 0x10400

    move-object/from16 v11, p4

    :try_start_22
    invoke-interface {v0, v8, v11, v2, v9}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_28} :catch_29

    .line 100
    .end local p0    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v0, "aInfo":Landroid/content/pm/ActivityInfo;
    goto :goto_36

    .line 98
    .end local v0    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local p0    # "aInfo":Landroid/content/pm/ActivityInfo;
    :catch_29
    move-exception v0

    goto :goto_2e

    :catch_2b
    move-exception v0

    move-object/from16 v11, p4

    .line 99
    .local v0, "e":Landroid/os/RemoteException;
    :goto_2e
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_34

    .line 102
    :cond_32
    move-object/from16 v11, p4

    :goto_34
    move-object/from16 v0, p0

    .end local p0    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v0, "aInfo":Landroid/content/pm/ActivityInfo;
    :goto_36
    invoke-static {v8, v10}, Lcom/miui/server/XSpaceManagerService;->getCachedUserId(Landroid/content/Intent;Ljava/lang/String;)I

    move-result v12

    .line 103
    .local v12, "cachedUserId":I
    const/16 v1, -0x2710

    if-eq v12, v1, :cond_57

    .line 105
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13

    .line 106
    .local v13, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 107
    .local v14, "token":J
    move-object/from16 v1, p2

    move-object v2, v8

    move-object v3, v11

    move/from16 v4, p5

    move-object/from16 v5, p3

    move v6, v12

    move v7, v13

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/app/ProfilerInfo;II)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 108
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 110
    .end local v13    # "callingUid":I
    .end local v14    # "token":J
    :cond_57
    return-object v0
.end method

.method public static supportsFreeform()Z
    .registers 3

    .line 242
    const-string/jumbo v0, "persist.sys.miui_optimization"

    const-string v1, "1"

    const-string/jumbo v2, "ro.miui.cts"

    .line 243
    invoke-static {v2}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 242
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lmiui/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static supportsMultiTaskInDock(Ljava/lang/String;)Z
    .registers 2
    .param p0, "packageName"    # Ljava/lang/String;

    .line 198
    sget-object v0, Lcom/android/server/am/ActivityStackSupervisorInjector;->sSupportsMultiTaskInDockList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static updateInfoBeforeRealStartActivity(Lcom/android/server/am/ActivityStack;Landroid/app/IApplicationThread;ILjava/lang/String;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;II)V
    .registers 9
    .param p0, "stack"    # Lcom/android/server/am/ActivityStack;
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingUid"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p6, "resultTo"    # Landroid/os/IBinder;
    .param p7, "requestCode"    # I
    .param p8, "userId"    # I

    .line 116
    invoke-static {p0, p5, p4}, Lcom/android/server/am/MiuiMultiTaskManager;->updateMultiTaskInfoIfNeed(Lcom/android/server/am/ActivityStack;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)V

    .line 117
    return-void
.end method

.method static updateScreenPaperMode(Ljava/lang/String;)V
    .registers 1
    .param p0, "packageName"    # Ljava/lang/String;

    .line 65
    invoke-static {p0}, Lcom/android/server/display/ScreenEffectService;->updateLocalScreenEffect(Ljava/lang/String;)V

    .line 66
    return-void
.end method
