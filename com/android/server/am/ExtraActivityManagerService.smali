.class public Lcom/android/server/am/ExtraActivityManagerService;
.super Ljava/lang/Object;
.source "ExtraActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ExtraActivityManagerService$CompatibleMessage;
    }
.end annotation


# static fields
.field private static final ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ACTIVITY_RESTRICTION_APPOP:I = 0x2

.field private static final ACTIVITY_RESTRICTION_NONE:I = 0x0

.field private static final ACTIVITY_RESTRICTION_PERMISSION:I = 0x1

.field private static final INCOMPATIBLE_ACTIVITIES:[Ljava/lang/String;

.field private static final INCOMPATIBLE_PACKAGES:[Ljava/lang/String;

.field static final SHOW_INCOMPATIBLE_ERROR:I = 0x1

.field private static TAG:Ljava/lang/String;

.field private static mDefaultHomePkgNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mLastStartActivityUid:I

.field private static mPerfService:Lcom/android/internal/app/IPerfShielder;

.field private static mSplashScreenServiceDelegate:Lcom/miui/server/SplashScreenServiceDelegate;

.field private static mSystemReady:Z

.field private static sAmInstance:Lcom/android/server/am/ActivityManagerService;

.field static final sHandler:Landroid/os/Handler;

.field private static sMainStack:Ljava/lang/reflect/Field;

.field private static sRemoveTaskByIdLocked:Ljava/lang/reflect/Method;

.field private static sScheduleDestroyActivities:Ljava/lang/reflect/Method;

.field private static sScheduleDestroyAllActivities:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 110
    const-class v0, Lcom/android/server/am/ExtraActivityManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ExtraActivityManagerService;->TAG:Ljava/lang/String;

    .line 124
    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_d
    const-class v5, Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v6, "mStackSupervisor"

    invoke-static {v5, v6}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    sput-object v5, Lcom/android/server/am/ExtraActivityManagerService;->sMainStack:Ljava/lang/reflect/Field;

    .line 125
    sget-object v5, Lcom/android/server/am/ExtraActivityManagerService;->sMainStack:Ljava/lang/reflect/Field;

    if-eqz v5, :cond_4c

    .line 126
    const-class v5, Lcom/android/server/am/ActivityStackSupervisor;

    const-string/jumbo v6, "removeTaskByIdLocked"

    new-array v7, v0, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v3

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v2

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v1

    invoke-static {v5, v6, v7}, Lmiui/util/ReflectionUtils;->findMethodBestMatch(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lcom/android/server/am/ExtraActivityManagerService;->sRemoveTaskByIdLocked:Ljava/lang/reflect/Method;

    .line 128
    const-class v5, Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v6, "scheduleDestroyAllActivities"

    new-array v7, v1, [Ljava/lang/Class;

    const-class v8, Lcom/android/server/am/ProcessRecord;

    aput-object v8, v7, v3

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v2

    invoke-static {v5, v6, v7}, Lmiui/util/ReflectionUtils;->findMethodBestMatch(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lcom/android/server/am/ExtraActivityManagerService;->sScheduleDestroyAllActivities:Ljava/lang/reflect/Method;

    .line 130
    sput-object v4, Lcom/android/server/am/ExtraActivityManagerService;->sScheduleDestroyActivities:Ljava/lang/reflect/Method;
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_4c} :catch_4d

    .line 145
    :cond_4c
    goto :goto_7c

    .line 132
    :catch_4d
    move-exception v5

    .line 135
    .local v5, "e":Ljava/lang/Exception;
    :try_start_4e
    const-class v6, Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v7, "mMainStack"

    invoke-static {v6, v7}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    sput-object v6, Lcom/android/server/am/ExtraActivityManagerService;->sMainStack:Ljava/lang/reflect/Field;

    .line 136
    sget-object v6, Lcom/android/server/am/ExtraActivityManagerService;->sMainStack:Ljava/lang/reflect/Field;

    if-eqz v6, :cond_78

    .line 137
    const-class v6, Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v7, "scheduleDestroyActivities"

    new-array v0, v0, [Ljava/lang/Class;

    const-class v8, Lcom/android/server/am/ProcessRecord;

    aput-object v8, v0, v3

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v0, v2

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v6, v7, v0}, Lmiui/util/ReflectionUtils;->findMethodBestMatch(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ExtraActivityManagerService;->sScheduleDestroyActivities:Ljava/lang/reflect/Method;

    .line 139
    sput-object v4, Lcom/android/server/am/ExtraActivityManagerService;->sScheduleDestroyAllActivities:Ljava/lang/reflect/Method;

    .line 141
    :cond_78
    sput-object v4, Lcom/android/server/am/ExtraActivityManagerService;->sRemoveTaskByIdLocked:Ljava/lang/reflect/Method;
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_7a} :catch_7b

    .line 144
    goto :goto_7c

    .line 142
    :catch_7b
    move-exception v0

    .line 363
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_7c
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/am/ExtraActivityManagerService;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    .line 366
    sget-object v0, Lcom/android/server/am/ExtraActivityManagerService;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    const-string v2, "android.permission.CAMERA"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    sget-object v0, Lcom/android/server/am/ExtraActivityManagerService;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    const-string v1, "android.media.action.VIDEO_CAPTURE"

    const-string v2, "android.permission.CAMERA"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    sget-object v0, Lcom/android/server/am/ExtraActivityManagerService;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    const-string v1, "android.intent.action.CALL"

    const-string v2, "android.permission.CALL_PHONE"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    new-instance v0, Lcom/android/server/am/ExtraActivityManagerService$1;

    invoke-direct {v0}, Lcom/android/server/am/ExtraActivityManagerService$1;-><init>()V

    sput-object v0, Lcom/android/server/am/ExtraActivityManagerService;->sHandler:Landroid/os/Handler;

    .line 496
    const-string v0, "com.tencent.mobileqq.activity.QQLSActivity"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ExtraActivityManagerService;->INCOMPATIBLE_ACTIVITIES:[Ljava/lang/String;

    .line 500
    const-string v0, "com.tencent.mobileqq"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ExtraActivityManagerService;->INCOMPATIBLE_PACKAGES:[Ljava/lang/String;

    .line 699
    sput-object v4, Lcom/android/server/am/ExtraActivityManagerService;->sAmInstance:Lcom/android/server/am/ActivityManagerService;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static activityIdle(Landroid/content/pm/ActivityInfo;)V
    .registers 3
    .param p0, "aInfo"    # Landroid/content/pm/ActivityInfo;

    .line 947
    sget-boolean v0, Lcom/android/server/am/ExtraActivityManagerService;->mSystemReady:Z

    if-nez v0, :cond_c

    .line 948
    sget-object v0, Lcom/android/server/am/ExtraActivityManagerService;->TAG:Ljava/lang/String;

    const-string v1, "System was not ready,activityIdle failed."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    return-void

    .line 951
    :cond_c
    if-nez p0, :cond_16

    .line 952
    sget-object v0, Lcom/android/server/am/ExtraActivityManagerService;->TAG:Ljava/lang/String;

    const-string v1, "aInfo is null!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    return-void

    .line 955
    :cond_16
    sget-object v0, Lcom/android/server/am/ExtraActivityManagerService;->mSplashScreenServiceDelegate:Lcom/miui/server/SplashScreenServiceDelegate;

    if-eqz v0, :cond_1f

    .line 956
    sget-object v0, Lcom/android/server/am/ExtraActivityManagerService;->mSplashScreenServiceDelegate:Lcom/miui/server/SplashScreenServiceDelegate;

    invoke-virtual {v0, p0}, Lcom/miui/server/SplashScreenServiceDelegate;->activityIdle(Landroid/content/pm/ActivityInfo;)V

    .line 958
    :cond_1f
    return-void
.end method

.method static addActivityLaunchTime(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;JJZ)V
    .registers 7
    .param p0, "record"    # Lcom/android/server/am/ActivityRecord;
    .param p1, "launchFromPackage"    # Ljava/lang/String;
    .param p2, "launchStartTime"    # J
    .param p4, "launchEndTime"    # J
    .param p6, "isColdStart"    # Z

    .line 1215
    return-void
.end method

.method public static adjustMediaButtonReceivers(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;)V"
        }
    .end annotation

    .line 179
    .local p1, "receivers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .local p2, "procs":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz p1, :cond_4e

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_a

    goto :goto_4e

    .line 183
    :cond_a
    nop

    .line 184
    invoke-static {p0}, Landroid/app/ExtraActivityManager;->getPackageNameListForRecentTasks(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 185
    .local v0, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_4d

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_18

    goto :goto_4d

    .line 189
    :cond_18
    const/4 v1, 0x0

    .line 190
    .local v1, "headIdx":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 191
    .local v2, "receiverSize":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_21
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 192
    .local v4, "name":Ljava/lang/String;
    move v5, v1

    .local v1, "i":I
    .local v5, "headIdx":I
    :goto_2e
    if-ge v1, v2, :cond_49

    .line 193
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 194
    .local v6, "r":Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/server/am/ExtraActivityManagerService;->getPackageNameForReceiver(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_46

    .line 195
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 196
    invoke-interface {p1, v5, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 197
    add-int/lit8 v5, v5, 0x1

    .line 192
    .end local v6    # "r":Ljava/lang/Object;
    :cond_46
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 200
    .end local v1    # "i":I
    .end local v4    # "name":Ljava/lang/String;
    :cond_49
    nop

    .line 191
    move v1, v5

    goto :goto_21

    .line 201
    .end local v5    # "headIdx":I
    .local v1, "headIdx":I
    :cond_4c
    return-void

    .line 186
    .end local v1    # "headIdx":I
    .end local v2    # "receiverSize":I
    :cond_4d
    :goto_4d
    return-void

    .line 180
    .end local v0    # "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4e
    :goto_4e
    return-void
.end method

.method public static adjustMediaButtonReceivers(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p3, "action"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 150
    .local p1, "receivers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .local p2, "procs":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    const-string v0, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 151
    invoke-static {p0, p1, p2}, Lcom/android/server/am/ExtraActivityManagerService;->adjustMediaButtonReceivers(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V

    .line 153
    :cond_b
    return-void
.end method

.method public static checkRunningCompatibility(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Z)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "systemReady"    # Z

    .line 673
    const/4 v0, 0x1

    if-nez p2, :cond_4

    return v0

    .line 674
    :cond_4
    if-eqz p1, :cond_13

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_c

    goto :goto_13

    .line 675
    :cond_c
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/server/am/ExtraActivityManagerService;->checkRunningCompatibility(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 674
    :cond_13
    :goto_13
    return v0
.end method

.method public static checkRunningCompatibility(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;IZ)Z
    .registers 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "caller"    # Landroid/app/IApplicationThread;
    .param p3, "service"    # Landroid/content/Intent;
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "userId"    # I
    .param p6, "systemReady"    # Z

    .line 506
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v7}, Lcom/android/server/am/ExtraActivityManagerService;->checkRunningCompatibility(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;IZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static checkRunningCompatibility(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;IZLjava/lang/String;)Z
    .registers 26
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "caller"    # Landroid/app/IApplicationThread;
    .param p3, "service"    # Landroid/content/Intent;
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "userId"    # I
    .param p6, "systemReady"    # Z
    .param p7, "callingPackage"    # Ljava/lang/String;

    move/from16 v14, p5

    move/from16 v13, p6

    .line 511
    const/4 v12, 0x1

    if-nez v13, :cond_8

    .line 512
    return v12

    .line 515
    :cond_8
    :try_start_8
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const/16 v1, 0x400

    move-object/from16 v11, p3

    move-object/from16 v10, p4

    invoke-interface {v0, v11, v10, v1, v14}, Landroid/content/pm/IPackageManager;->resolveService(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    move-object v9, v0

    .line 517
    .local v9, "rInfo":Landroid/content/pm/ResolveInfo;
    const/4 v0, 0x0

    if-eqz v9, :cond_1d

    iget-object v1, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    goto :goto_1e

    :cond_1d
    move-object v1, v0

    :goto_1e
    move-object v8, v1

    .line 519
    .local v8, "sInfo":Landroid/content/pm/ServiceInfo;
    if-eqz v8, :cond_24

    iget-object v0, v8, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    nop

    :cond_24
    move-object/from16 v7, p0

    invoke-static {v7, v0, v13}, Lcom/android/server/am/ExtraActivityManagerService;->checkRunningCompatibility(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Z)Z

    move-result v0

    const/4 v6, 0x0

    if-nez v0, :cond_2e

    .line 520
    return v6

    .line 523
    :cond_2e
    const/16 v0, 0x8

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p7

    move-object v4, v11

    move-object v5, v8

    move v11, v6

    move v6, v0

    move v7, v14

    invoke-static/range {v1 .. v7}, Lcom/android/server/am/ExtraActivityManagerService;->checkWakePath(Lcom/android/server/am/ActivityManagerService;Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Landroid/content/pm/ComponentInfo;II)Z

    move-result v0

    if-nez v0, :cond_42

    .line 524
    return v11

    .line 527
    :cond_42
    if-eqz v8, :cond_132

    iget-object v0, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_132

    .line 528
    const-string v0, ""

    move-object v1, v0

    .line 529
    .local v1, "callerName":Ljava/lang/String;
    if-eqz p7, :cond_50

    .line 530
    move-object/from16 v0, p7

    .line 530
    .end local v1    # "callerName":Ljava/lang/String;
    .local v0, "callerName":Ljava/lang/String;
    goto :goto_72

    .line 532
    .end local v0    # "callerName":Ljava/lang/String;
    .restart local v1    # "callerName":Ljava/lang/String;
    :cond_50
    monitor-enter p1
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_51} :catch_135

    :try_start_51
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 533
    invoke-virtual/range {p1 .. p2}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v0
    :try_end_58
    .catchall {:try_start_51 .. :try_end_58} :catchall_125

    .line 534
    .local v0, "callerApp":Lcom/android/server/am/ProcessRecord;
    if-eqz v0, :cond_6d

    :try_start_5a
    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_6d

    .line 535
    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    :try_end_62
    .catchall {:try_start_5a .. :try_end_62} :catchall_65

    move-object v0, v3

    .line 537
    .end local v1    # "callerName":Ljava/lang/String;
    .local v0, "callerName":Ljava/lang/String;
    move-object v1, v0

    goto :goto_6d

    .line 537
    .end local v0    # "callerName":Ljava/lang/String;
    .restart local v1    # "callerName":Ljava/lang/String;
    :catchall_65
    move-exception v0

    move-object v7, v8

    move-object/from16 v17, v9

    move v3, v12

    move v4, v14

    goto/16 :goto_12b

    :cond_6d
    :goto_6d
    :try_start_6d
    monitor-exit p1
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_125

    :try_start_6e
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 541
    move-object v0, v1

    .line 541
    .end local v1    # "callerName":Ljava/lang/String;
    .restart local v0    # "callerName":Ljava/lang/String;
    :goto_72
    invoke-static {}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->getSingletonService()Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    move-result-object v1

    if-eqz v1, :cond_dc

    .line 542
    invoke-static {}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->getSingletonService()Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    move-result-object v1

    iget-object v3, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x2

    iget-object v5, v8, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    iget-object v6, v8, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    new-array v7, v11, [Ljava/lang/Object;
    :try_end_85
    .catch Landroid/os/RemoteException; {:try_start_6e .. :try_end_85} :catch_135

    move-object/from16 v16, v8

    move-object v8, v1

    .end local v8    # "sInfo":Landroid/content/pm/ServiceInfo;
    .local v16, "sInfo":Landroid/content/pm/ServiceInfo;
    move-object/from16 v17, v9

    move-object v9, v3

    .line 542
    .end local v9    # "rInfo":Landroid/content/pm/ResolveInfo;
    .local v17, "rInfo":Landroid/content/pm/ResolveInfo;
    move-object v10, v0

    move v1, v11

    move v11, v4

    move v3, v12

    move v12, v14

    move-object v13, v5

    move v4, v14

    move-object v14, v6

    move-object v15, v7

    :try_start_94
    invoke-virtual/range {v8 .. v15}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->checkPackageState(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v5

    if-eq v5, v3, :cond_d9

    .line 549
    const-string v5, "WhetstonePackageState"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Permission denied by Whetstone, cannot start service from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, v16

    iget-object v8, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .end local v16    # "sInfo":Landroid/content/pm/ServiceInfo;
    .local v7, "sInfo":Landroid/content/pm/ServiceInfo;
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " in "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v7, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", caller: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", UserId: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    return v1

    .line 557
    .end local v7    # "sInfo":Landroid/content/pm/ServiceInfo;
    .restart local v16    # "sInfo":Landroid/content/pm/ServiceInfo;
    :cond_d9
    move-object/from16 v7, v16

    .line 557
    .end local v16    # "sInfo":Landroid/content/pm/ServiceInfo;
    .restart local v7    # "sInfo":Landroid/content/pm/ServiceInfo;
    goto :goto_e1

    .line 557
    .end local v7    # "sInfo":Landroid/content/pm/ServiceInfo;
    .end local v17    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v8    # "sInfo":Landroid/content/pm/ServiceInfo;
    .restart local v9    # "rInfo":Landroid/content/pm/ResolveInfo;
    :cond_dc
    move-object v7, v8

    move-object/from16 v17, v9

    move v3, v12

    move v4, v14

    .line 557
    .end local v8    # "sInfo":Landroid/content/pm/ServiceInfo;
    .end local v9    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v7    # "sInfo":Landroid/content/pm/ServiceInfo;
    .restart local v17    # "rInfo":Landroid/content/pm/ResolveInfo;
    :goto_e1
    sget-boolean v1, Lcom/miui/whetstone/WhetstonePackageState;->DEBUG:Z

    if-eqz v1, :cond_134

    .line 558
    const-string v1, "WhetstonePackageState"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "start service from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v7, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", caller: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", UserId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_122
    .catch Landroid/os/RemoteException; {:try_start_94 .. :try_end_122} :catch_123

    .end local v0    # "callerName":Ljava/lang/String;
    .end local v7    # "sInfo":Landroid/content/pm/ServiceInfo;
    .end local v17    # "rInfo":Landroid/content/pm/ResolveInfo;
    goto :goto_134

    .line 562
    :catch_123
    move-exception v0

    goto :goto_138

    .line 537
    .restart local v1    # "callerName":Ljava/lang/String;
    .restart local v8    # "sInfo":Landroid/content/pm/ServiceInfo;
    .restart local v9    # "rInfo":Landroid/content/pm/ResolveInfo;
    :catchall_125
    move-exception v0

    move-object v7, v8

    move-object/from16 v17, v9

    move v3, v12

    move v4, v14

    .line 537
    .end local v8    # "sInfo":Landroid/content/pm/ServiceInfo;
    .end local v9    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v7    # "sInfo":Landroid/content/pm/ServiceInfo;
    .restart local v17    # "rInfo":Landroid/content/pm/ResolveInfo;
    :goto_12b
    :try_start_12b
    monitor-exit p1
    :try_end_12c
    .catchall {:try_start_12b .. :try_end_12c} :catchall_130

    :try_start_12c
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
    :try_end_130
    .catch Landroid/os/RemoteException; {:try_start_12c .. :try_end_130} :catch_123

    :catchall_130
    move-exception v0

    goto :goto_12b

    .line 564
    .end local v1    # "callerName":Ljava/lang/String;
    .end local v7    # "sInfo":Landroid/content/pm/ServiceInfo;
    .end local v17    # "rInfo":Landroid/content/pm/ResolveInfo;
    :cond_132
    move v3, v12

    move v4, v14

    :cond_134
    :goto_134
    goto :goto_138

    .line 562
    :catch_135
    move-exception v0

    move v3, v12

    move v4, v14

    .line 565
    :goto_138
    return v3
.end method

.method public static checkRunningCompatibility(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Landroid/app/IApplicationThread;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;IZLjava/lang/String;)Z
    .registers 25
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "caller"    # Landroid/app/IApplicationThread;
    .param p3, "info"    # Landroid/content/pm/ActivityInfo;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "userId"    # I
    .param p6, "systemReady"    # Z
    .param p7, "callingPackage"    # Ljava/lang/String;

    move-object/from16 v8, p3

    move/from16 v14, p5

    .line 570
    const/4 v0, 0x1

    if-nez v8, :cond_8

    return v0

    .line 571
    :cond_8
    const/4 v13, 0x0

    move v1, v13

    .line 571
    .local v1, "i":I
    :goto_a
    sget-object v2, Lcom/android/server/am/ExtraActivityManagerService;->INCOMPATIBLE_ACTIVITIES:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_2b

    .line 572
    sget-object v2, Lcom/android/server/am/ExtraActivityManagerService;->INCOMPATIBLE_ACTIVITIES:[Ljava/lang/String;

    aget-object v2, v2, v1

    iget-object v3, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    sget-object v2, Lcom/android/server/am/ExtraActivityManagerService;->INCOMPATIBLE_PACKAGES:[Ljava/lang/String;

    aget-object v2, v2, v1

    iget-object v3, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    return v13

    .line 571
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 574
    .end local v1    # "i":I
    :cond_2b
    iget-object v1, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v12, p0

    move/from16 v11, p6

    invoke-static {v12, v1, v11}, Lcom/android/server/am/ExtraActivityManagerService;->checkRunningCompatibility(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Z)Z

    move-result v1

    if-nez v1, :cond_38

    .line 575
    return v13

    .line 578
    :cond_38
    const/4 v6, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p7

    move-object/from16 v4, p4

    move-object v5, v8

    move v7, v14

    invoke-static/range {v1 .. v7}, Lcom/android/server/am/ExtraActivityManagerService;->checkWakePath(Lcom/android/server/am/ActivityManagerService;Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Landroid/content/pm/ComponentInfo;II)Z

    move-result v1

    if-nez v1, :cond_4a

    .line 579
    return v13

    .line 582
    :cond_4a
    iget-object v1, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_112

    .line 583
    const-string v1, ""

    .line 584
    .local v1, "callerName":Ljava/lang/String;
    monitor-enter p1

    :try_start_51
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 585
    invoke-virtual/range {p1 .. p2}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v2

    .line 586
    .local v2, "callerApp":Lcom/android/server/am/ProcessRecord;
    if-eqz v2, :cond_63

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_63

    .line 587
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object v1, v3

    .line 589
    .end local v2    # "callerApp":Lcom/android/server/am/ProcessRecord;
    :cond_63
    monitor-exit p1
    :try_end_64
    .catchall {:try_start_51 .. :try_end_64} :catchall_109

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 592
    invoke-static {}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->getSingletonService()Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    move-result-object v2

    if-eqz v2, :cond_c6

    .line 593
    invoke-static {}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->getSingletonService()Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    move-result-object v9

    iget-object v10, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x1

    iget-object v3, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v4, v8, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    new-array v5, v13, [Ljava/lang/Object;

    move-object v11, v1

    move v12, v2

    move v2, v13

    move v13, v14

    move v6, v14

    move-object v14, v3

    move-object v15, v4

    move-object/from16 v16, v5

    invoke-virtual/range {v9 .. v16}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->checkPackageState(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v0, :cond_c7

    .line 600
    const-string v0, "WhetstonePackageState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission denied by Whetstone, cannot start activity from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v8, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", caller: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", UserId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    return v2

    .line 608
    :cond_c6
    move v6, v14

    :cond_c7
    sget-boolean v2, Lcom/miui/whetstone/WhetstonePackageState;->DEBUG:Z

    if-eqz v2, :cond_113

    .line 609
    const-string v2, "WhetstonePackageState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "start activity from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v8, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", caller: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", UserId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "callerName":Ljava/lang/String;
    goto :goto_113

    .line 589
    .restart local v1    # "callerName":Ljava/lang/String;
    :catchall_109
    move-exception v0

    move v6, v14

    :goto_10b
    :try_start_10b
    monitor-exit p1
    :try_end_10c
    .catchall {:try_start_10b .. :try_end_10c} :catchall_110

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_110
    move-exception v0

    goto :goto_10b

    .line 615
    .end local v1    # "callerName":Ljava/lang/String;
    :cond_112
    move v6, v14

    :cond_113
    :goto_113
    return v0
.end method

.method public static checkRunningCompatibility(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Landroid/app/IApplicationThread;Lcom/android/server/am/ContentProviderRecord;IZ)Z
    .registers 22
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "caller"    # Landroid/app/IApplicationThread;
    .param p3, "record"    # Lcom/android/server/am/ContentProviderRecord;
    .param p4, "userId"    # I
    .param p5, "systemReady"    # Z

    move-object/from16 v0, p3

    move/from16 v9, p4

    .line 620
    const/4 v10, 0x1

    if-nez p5, :cond_8

    .line 621
    return v10

    .line 623
    :cond_8
    if-eqz v0, :cond_11d

    iget-object v1, v0, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    if-nez v1, :cond_10

    goto/16 :goto_11d

    .line 627
    :cond_10
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    move-object v11, v1

    .line 628
    .local v11, "intent":Landroid/content/Intent;
    iget-object v1, v0, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 630
    const/4 v3, 0x0

    iget-object v5, v0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    const/4 v6, 0x4

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v4, v11

    move v7, v9

    invoke-static/range {v1 .. v7}, Lcom/android/server/am/ExtraActivityManagerService;->checkWakePath(Lcom/android/server/am/ActivityManagerService;Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Landroid/content/pm/ComponentInfo;II)Z

    move-result v1

    const/4 v12, 0x0

    if-nez v1, :cond_37

    .line 631
    return v12

    .line 634
    :cond_37
    iget-object v1, v0, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_11c

    .line 635
    const-string v1, ""

    .line 637
    .local v1, "callerName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p2}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v13

    .line 638
    .local v13, "callerApp":Lcom/android/server/am/ProcessRecord;
    if-eqz v13, :cond_4f

    iget-object v2, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_4f

    .line 639
    iget-object v2, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 643
    .end local v1    # "callerName":Ljava/lang/String;
    .local v14, "callerName":Ljava/lang/String;
    :cond_4f
    move-object v14, v1

    invoke-static {}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->getSingletonService()Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    move-result-object v1

    const/4 v15, 0x0

    if-eqz v1, :cond_cb

    .line 644
    invoke-static {}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->getSingletonService()Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    .line 645
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x8

    iget-object v3, v0, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    .line 649
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    .line 650
    iget-object v3, v0, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_73

    iget-object v3, v0, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    move-object v7, v3

    goto :goto_74

    :cond_73
    move-object v7, v15

    :goto_74
    new-array v8, v12, [Ljava/lang/Object;

    .line 644
    move-object v3, v14

    move v5, v9

    invoke-virtual/range {v1 .. v8}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->checkPackageState(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v1

    if-eq v1, v10, :cond_cb

    .line 651
    const-string v1, "WhetstonePackageState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission denied by Whetstone, cannot start contentProvider from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    .line 653
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    .line 654
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    iget-object v3, v0, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_af

    iget-object v3, v0, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    goto :goto_b0

    :cond_af
    move-object v3, v15

    :goto_b0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", caller: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", UserId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 651
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    return v12

    .line 661
    :cond_cb
    sget-boolean v1, Lcom/miui/whetstone/WhetstonePackageState;->DEBUG:Z

    if-eqz v1, :cond_11c

    .line 662
    const-string v1, "WhetstonePackageState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "start contentProvider from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    .line 663
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    iget-object v3, v0, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_101

    iget-object v3, v0, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    goto :goto_102

    :cond_101
    move-object v3, v15

    :goto_102
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", caller: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", UserId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 662
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    .end local v13    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .end local v14    # "callerName":Ljava/lang/String;
    :cond_11c
    return v10

    .line 624
    .end local v11    # "intent":Landroid/content/Intent;
    :cond_11d
    :goto_11d
    return v10
.end method

.method private static checkRunningCompatibility(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 696
    const/4 v0, 0x1

    return v0
.end method

.method private static checkStartActivityLocked(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Ljava/lang/String;ZLandroid/os/Bundle;)Z
    .registers 30
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "callerApp"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "callingUid"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "resolvedType"    # Ljava/lang/String;
    .param p7, "ignoreTargetSecurity"    # Z
    .param p8, "bOptions"    # Landroid/os/Bundle;

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p4

    .line 262
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 265
    .local v10, "startTime":J
    if-eqz v8, :cond_15

    .line 266
    iget v0, v8, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 267
    .local v0, "callingPid":I
    iget-object v1, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 277
    .end local p2    # "callingUid":I
    .local v1, "callingUid":I
    move v15, v0

    move v14, v1

    goto :goto_26

    .line 269
    .end local v0    # "callingPid":I
    .end local v1    # "callingUid":I
    .restart local p2    # "callingUid":I
    :cond_15
    if-ltz p2, :cond_1c

    .line 270
    const/4 v1, -0x1

    .line 277
    .local v1, "callingPid":I
    move/from16 v14, p2

    .end local v1    # "callingPid":I
    .end local p2    # "callingUid":I
    .local v14, "callingUid":I
    .local v15, "callingPid":I
    :goto_1a
    move v15, v1

    goto :goto_26

    .line 272
    .end local v14    # "callingUid":I
    .end local v15    # "callingPid":I
    .restart local p2    # "callingUid":I
    :cond_1c
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 273
    .restart local v1    # "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 277
    .end local p2    # "callingUid":I
    .local v0, "callingUid":I
    move v14, v0

    goto :goto_1a

    .end local v0    # "callingUid":I
    .end local v1    # "callingPid":I
    .restart local v14    # "callingUid":I
    .restart local v15    # "callingPid":I
    :goto_26
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    move-wide v12, v0

    .line 279
    .local v12, "origId":J
    const/16 v18, 0x0

    :try_start_2d
    const-string v0, "android.permission.START_ANY_ACTIVITY"

    invoke-virtual {v7, v0, v15, v14}, Lcom/android/server/am/ActivityManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v0
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_33} :catch_105
    .catchall {:try_start_2d .. :try_end_33} :catchall_fd

    move/from16 v19, v0

    .line 280
    .local v19, "startAnyPerm":I
    const/4 v6, 0x1

    if-nez v19, :cond_3d

    .line 281
    nop

    .line 328
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 281
    return v6

    .line 284
    :cond_3d
    move-object v1, v7

    move-object v2, v9

    move-object/from16 v3, p3

    move v4, v15

    move v5, v14

    move v8, v6

    move/from16 v6, p7

    :try_start_46
    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ExtraActivityManagerService;->getComponentRestrictionForCallingPackage(Lcom/android/server/am/ActivityManagerService;Landroid/content/pm/ActivityInfo;Ljava/lang/String;IIZ)I

    move-result v0

    move v1, v0

    .line 286
    .local v1, "componentRestriction":I
    nop

    .line 287
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_50} :catch_105
    .catchall {:try_start_46 .. :try_end_50} :catchall_fd

    .line 286
    move-object/from16 v2, p3

    :try_start_52
    invoke-static {v7, v0, v2, v15, v14}, Lcom/android/server/am/ExtraActivityManagerService;->getActionRestrictionForCallingPackage(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_56} :catch_fb
    .catchall {:try_start_52 .. :try_end_56} :catchall_f9

    move v3, v0

    .line 288
    .local v3, "actionRestriction":I
    if-eq v1, v8, :cond_f1

    if-ne v3, v8, :cond_61

    .line 290
    move-object v8, v9

    move v6, v14

    move/from16 v20, v15

    goto/16 :goto_f5

    .line 293
    :cond_61
    const/4 v0, 0x2

    if-ne v3, v0, :cond_69

    .line 294
    nop

    .line 328
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 294
    return v18

    .line 295
    :cond_69
    if-ne v1, v0, :cond_70

    .line 296
    nop

    .line 328
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 296
    return v18

    .line 299
    :cond_70
    :try_start_70
    invoke-static/range {p8 .. p8}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object v0
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_74} :catch_fb
    .catchall {:try_start_70 .. :try_end_74} :catchall_f9

    move-object v4, v0

    .line 300
    .local v4, "options":Landroid/app/ActivityOptions;
    if-eqz v4, :cond_99

    :try_start_77
    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v0

    const/4 v5, -0x1

    if-eq v0, v5, :cond_99

    .line 301
    const-string v0, "android.permission.START_TASKS_FROM_RECENTS"

    invoke-virtual {v7, v0, v15, v14}, Lcom/android/server/am/ActivityManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v0
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_84} :catch_92
    .catchall {:try_start_77 .. :try_end_84} :catchall_8b

    .line 303
    .local v0, "startInTaskPerm":I
    if-eqz v0, :cond_99

    .line 304
    nop

    .line 328
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 304
    return v18

    .line 328
    .end local v0    # "startInTaskPerm":I
    .end local v1    # "componentRestriction":I
    .end local v3    # "actionRestriction":I
    .end local v4    # "options":Landroid/app/ActivityOptions;
    .end local v19    # "startAnyPerm":I
    :catchall_8b
    move-exception v0

    move-object v8, v9

    move v6, v14

    move/from16 v20, v15

    goto/16 :goto_119

    .line 324
    :catch_92
    move-exception v0

    move-object v8, v9

    move v6, v14

    move/from16 v20, v15

    goto/16 :goto_10c

    .line 308
    .restart local v1    # "componentRestriction":I
    .restart local v3    # "actionRestriction":I
    .restart local v4    # "options":Landroid/app/ActivityOptions;
    .restart local v19    # "startAnyPerm":I
    :cond_99
    :try_start_99
    iget-object v0, v7, Lcom/android/server/am/ActivityManagerService;->mIntentFirewall:Lcom/android/server/firewall/IntentFirewall;

    iget-object v5, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_9d} :catch_fb
    .catchall {:try_start_99 .. :try_end_9d} :catchall_f9

    move-wide v8, v12

    move-object v12, v0

    .end local v12    # "origId":J
    .local v8, "origId":J
    move-object/from16 v13, p5

    move v6, v14

    .end local v14    # "callingUid":I
    .local v6, "callingUid":I
    move/from16 v20, v15

    .end local v15    # "callingPid":I
    .local v20, "callingPid":I
    move-object/from16 v16, p6

    move-object/from16 v17, v5

    :try_start_a8
    invoke-virtual/range {v12 .. v17}, Lcom/android/server/firewall/IntentFirewall;->checkStartActivity(Landroid/content/Intent;IILjava/lang/String;Landroid/content/pm/ApplicationInfo;)Z

    move-result v0
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_ac} :catch_ec
    .catchall {:try_start_a8 .. :try_end_ac} :catchall_e7

    if-nez v0, :cond_b3

    .line 309
    nop

    .line 328
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 309
    return v18

    .line 312
    :cond_b3
    :try_start_b3
    iget-object v0, v7, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_b3 .. :try_end_b5} :catch_ec
    .catchall {:try_start_b3 .. :try_end_b5} :catchall_e7

    if-eqz v0, :cond_d9

    .line 316
    :try_start_b7
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object v0

    .line 317
    .local v0, "watchIntent":Landroid/content/Intent;
    iget-object v5, v7, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;
    :try_end_bd
    .catch Landroid/os/RemoteException; {:try_start_b7 .. :try_end_bd} :catch_d4
    .catch Ljava/lang/Exception; {:try_start_b7 .. :try_end_bd} :catch_ec
    .catchall {:try_start_b7 .. :try_end_bd} :catchall_e7

    move-wide v12, v8

    move-object/from16 v8, p4

    :try_start_c0
    iget-object v9, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .end local v8    # "origId":J
    .restart local v12    # "origId":J
    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v5, v0, v9}, Landroid/app/IActivityController;->activityStarting(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v5
    :try_end_c8
    .catch Landroid/os/RemoteException; {:try_start_c0 .. :try_end_c8} :catch_d2
    .catch Ljava/lang/Exception; {:try_start_c0 .. :try_end_c8} :catch_d0
    .catchall {:try_start_c0 .. :try_end_c8} :catchall_118

    if-nez v5, :cond_cf

    .line 319
    nop

    .line 328
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 319
    return v18

    .line 322
    .end local v0    # "watchIntent":Landroid/content/Intent;
    :cond_cf
    goto :goto_dc

    .line 324
    .end local v1    # "componentRestriction":I
    .end local v3    # "actionRestriction":I
    .end local v4    # "options":Landroid/app/ActivityOptions;
    .end local v19    # "startAnyPerm":I
    :catch_d0
    move-exception v0

    goto :goto_10c

    .line 321
    .restart local v1    # "componentRestriction":I
    .restart local v3    # "actionRestriction":I
    .restart local v4    # "options":Landroid/app/ActivityOptions;
    .restart local v19    # "startAnyPerm":I
    :catch_d2
    move-exception v0

    goto :goto_d8

    .end local v12    # "origId":J
    .restart local v8    # "origId":J
    :catch_d4
    move-exception v0

    move-wide v12, v8

    move-object/from16 v8, p4

    .end local v1    # "componentRestriction":I
    .end local v3    # "actionRestriction":I
    .end local v4    # "options":Landroid/app/ActivityOptions;
    .end local v8    # "origId":J
    .end local v19    # "startAnyPerm":I
    .restart local v12    # "origId":J
    :goto_d8
    goto :goto_dc

    .line 328
    .end local v12    # "origId":J
    .restart local v8    # "origId":J
    :cond_d9
    move-wide v12, v8

    move-object/from16 v8, p4

    .end local v8    # "origId":J
    .restart local v12    # "origId":J
    :goto_dc
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 329
    nop

    .line 331
    const-string v0, "checkStartActivityLocked"

    invoke-static {v10, v11, v0}, Lcom/android/server/am/ExtraActivityManagerService;->checkTime(JLjava/lang/String;)V

    .line 332
    const/4 v1, 0x1

    return v1

    .line 328
    .end local v12    # "origId":J
    .restart local v8    # "origId":J
    :catchall_e7
    move-exception v0

    move-wide v12, v8

    move-object/from16 v8, p4

    .end local v8    # "origId":J
    .restart local v12    # "origId":J
    goto :goto_119

    .line 324
    .end local v12    # "origId":J
    .restart local v8    # "origId":J
    :catch_ec
    move-exception v0

    move-wide v12, v8

    move-object/from16 v8, p4

    .end local v8    # "origId":J
    .restart local v12    # "origId":J
    goto :goto_10c

    .line 290
    .end local v6    # "callingUid":I
    .end local v20    # "callingPid":I
    .restart local v1    # "componentRestriction":I
    .restart local v3    # "actionRestriction":I
    .restart local v14    # "callingUid":I
    .restart local v15    # "callingPid":I
    .restart local v19    # "startAnyPerm":I
    :cond_f1
    move-object v8, v9

    move v6, v14

    move/from16 v20, v15

    .line 328
    .end local v14    # "callingUid":I
    .end local v15    # "callingPid":I
    .restart local v6    # "callingUid":I
    .restart local v20    # "callingPid":I
    :goto_f5
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 290
    return v18

    .line 328
    .end local v1    # "componentRestriction":I
    .end local v3    # "actionRestriction":I
    .end local v6    # "callingUid":I
    .end local v19    # "startAnyPerm":I
    .end local v20    # "callingPid":I
    .restart local v14    # "callingUid":I
    .restart local v15    # "callingPid":I
    :catchall_f9
    move-exception v0

    goto :goto_100

    .line 324
    :catch_fb
    move-exception v0

    goto :goto_108

    .line 328
    :catchall_fd
    move-exception v0

    move-object/from16 v2, p3

    :goto_100
    move-object v8, v9

    move v6, v14

    move/from16 v20, v15

    .end local v14    # "callingUid":I
    .end local v15    # "callingPid":I
    .restart local v6    # "callingUid":I
    .restart local v20    # "callingPid":I
    goto :goto_119

    .line 324
    .end local v6    # "callingUid":I
    .end local v20    # "callingPid":I
    .restart local v14    # "callingUid":I
    .restart local v15    # "callingPid":I
    :catch_105
    move-exception v0

    move-object/from16 v2, p3

    :goto_108
    move-object v8, v9

    move v6, v14

    move/from16 v20, v15

    .line 325
    .end local v14    # "callingUid":I
    .end local v15    # "callingPid":I
    .local v0, "e":Ljava/lang/Exception;
    .restart local v6    # "callingUid":I
    .restart local v20    # "callingPid":I
    :goto_10c
    :try_start_10c
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->TAG:Ljava/lang/String;

    const-string v3, "checkStartActivityLocked: An exception occured. "

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_113
    .catchall {:try_start_10c .. :try_end_113} :catchall_118

    .line 326
    nop

    .line 328
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 326
    return v18

    .line 328
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_118
    move-exception v0

    :goto_119
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method static checkStartActivityPermission(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Landroid/app/IApplicationThread;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Ljava/lang/String;ZIZIILjava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
    .registers 42
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "caller"    # Landroid/app/IApplicationThread;
    .param p3, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "resolvedType"    # Ljava/lang/String;
    .param p6, "fromActivity"    # Z
    .param p7, "requestCode"    # I
    .param p8, "ignoreTargetSecurity"    # Z
    .param p9, "userId"    # I
    .param p10, "callingUid"    # I
    .param p11, "callingPackage"    # Ljava/lang/String;
    .param p12, "bOptions"    # Landroid/os/Bundle;

    move-object/from16 v10, p1

    move-object/from16 v11, p3

    .line 224
    if-eqz v11, :cond_99

    .line 225
    const/4 v1, 0x0

    .line 226
    .local v1, "callerApp":Lcom/android/server/am/ProcessRecord;
    const/4 v2, 0x0

    .line 227
    .local v2, "callerAppInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v12, 0x0

    .line 228
    .local v12, "calleeAlreadyStarted":Z
    const/4 v13, 0x0

    .line 229
    .local v13, "havePermission":Z
    monitor-enter p1

    :try_start_b
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 230
    if-eqz p2, :cond_23

    .line 231
    invoke-virtual/range {p1 .. p2}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    move-object v1, v0

    .line 232
    if-nez v1, :cond_1c

    .line 233
    monitor-exit p1
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_8f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object p4

    .line 235
    :cond_1c
    :try_start_1c
    iget-object v0, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;
    :try_end_1e
    .catchall {:try_start_1c .. :try_end_1e} :catchall_8f

    .line 238
    .end local v2    # "callerAppInfo":Landroid/content/pm/ApplicationInfo;
    .local v0, "callerAppInfo":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v28, v0

    move-object/from16 v27, v1

    goto :goto_27

    .line 238
    .end local v0    # "callerAppInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v2    # "callerAppInfo":Landroid/content/pm/ApplicationInfo;
    :cond_23
    move-object/from16 v27, v1

    move-object/from16 v28, v2

    .line 238
    .end local v1    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .end local v2    # "callerAppInfo":Landroid/content/pm/ApplicationInfo;
    .local v27, "callerApp":Lcom/android/server/am/ProcessRecord;
    .local v28, "callerAppInfo":Landroid/content/pm/ApplicationInfo;
    :goto_27
    move-object v1, v10

    move-object/from16 v2, v27

    move/from16 v3, p10

    move-object/from16 v4, p11

    move-object v5, v11

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p8

    move-object/from16 v9, p12

    :try_start_37
    invoke-static/range {v1 .. v9}, Lcom/android/server/am/ExtraActivityManagerService;->checkStartActivityLocked(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Ljava/lang/String;ZLandroid/os/Bundle;)Z

    move-result v0

    move v13, v0

    .line 239
    if-eqz v13, :cond_4e

    .line 241
    iget-object v0, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, v11, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iget-object v2, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v10, v0, v1, v2}, Lcom/android/server/am/ExtraActivityManagerService;->packageIsRunningLocked(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 242
    const/4 v0, 0x1

    .line 245
    .end local v12    # "calleeAlreadyStarted":Z
    .local v0, "calleeAlreadyStarted":Z
    move v12, v0

    .line 245
    .end local v0    # "calleeAlreadyStarted":Z
    .restart local v12    # "calleeAlreadyStarted":Z
    :cond_4e
    monitor-exit p1
    :try_end_4f
    .catchall {:try_start_37 .. :try_end_4f} :catchall_87

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 247
    if-eqz v13, :cond_99

    .line 248
    const-string/jumbo v0, "security"

    move-object/from16 v3, p0

    invoke-virtual {v3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/security/SecurityManager;

    .line 249
    .local v0, "securityManager":Lmiui/security/SecurityManager;
    iget-object v1, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 250
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v23

    .line 249
    move-object v14, v0

    move-object v15, v3

    move-object/from16 v16, v28

    move-object/from16 v17, p11

    move-object/from16 v18, v1

    move-object/from16 v19, p4

    move/from16 v20, p6

    move/from16 v21, p7

    move/from16 v22, v12

    move/from16 v24, p10

    move-object/from16 v25, p12

    invoke-virtual/range {v14 .. v25}, Lmiui/security/SecurityManager;->getCheckIntent(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;ZIZIILandroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    .line 252
    .local v1, "checkIntent":Landroid/content/Intent;
    if-eqz v1, :cond_9b

    .line 253
    move-object v0, v1

    .line 257
    .end local v1    # "checkIntent":Landroid/content/Intent;
    .end local v12    # "calleeAlreadyStarted":Z
    .end local v13    # "havePermission":Z
    .end local v27    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .end local v28    # "callerAppInfo":Landroid/content/pm/ApplicationInfo;
    .end local p4    # "intent":Landroid/content/Intent;
    .local v0, "intent":Landroid/content/Intent;
    move-object/from16 v26, v0

    goto :goto_9d

    .line 245
    .end local v0    # "intent":Landroid/content/Intent;
    .restart local v12    # "calleeAlreadyStarted":Z
    .restart local v13    # "havePermission":Z
    .restart local v27    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v28    # "callerAppInfo":Landroid/content/pm/ApplicationInfo;
    .restart local p4    # "intent":Landroid/content/Intent;
    :catchall_87
    move-exception v0

    move-object/from16 v3, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    goto :goto_92

    .line 245
    .end local v27    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .end local v28    # "callerAppInfo":Landroid/content/pm/ApplicationInfo;
    .local v1, "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v2    # "callerAppInfo":Landroid/content/pm/ApplicationInfo;
    :catchall_8f
    move-exception v0

    move-object/from16 v3, p0

    :goto_92
    :try_start_92
    monitor-exit p1
    :try_end_93
    .catchall {:try_start_92 .. :try_end_93} :catchall_97

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_97
    move-exception v0

    goto :goto_92

    .line 257
    .end local v1    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .end local v2    # "callerAppInfo":Landroid/content/pm/ApplicationInfo;
    .end local v12    # "calleeAlreadyStarted":Z
    .end local v13    # "havePermission":Z
    :cond_99
    move-object/from16 v3, p0

    :cond_9b
    move-object/from16 v26, p4

    .line 257
    .end local p4    # "intent":Landroid/content/Intent;
    .local v26, "intent":Landroid/content/Intent;
    :goto_9d
    return-object v26
.end method

.method private static checkTime(JLjava/lang/String;)V
    .registers 9
    .param p0, "startTime"    # J
    .param p2, "where"    # Ljava/lang/String;

    .line 1055
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1056
    .local v0, "now":J
    sub-long v2, v0, p0

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-lez v2, :cond_2d

    .line 1058
    sget-object v2, Lcom/android/server/am/ExtraActivityManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MIUILOG-checkTime:Slow operation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v4, v0, p0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ms so far, now at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    :cond_2d
    return-void
.end method

.method static checkWakePath(Lcom/android/server/am/ActivityManagerService;Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Landroid/content/pm/ComponentInfo;II)Z
    .registers 29
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "info"    # Landroid/content/pm/ComponentInfo;
    .param p5, "wakeType"    # I
    .param p6, "userId"    # I

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    .line 995
    const/4 v0, 0x1

    if-eqz v1, :cond_b9

    if-eqz v2, :cond_b9

    if-nez v3, :cond_f

    goto/16 :goto_b9

    .line 999
    :cond_f
    invoke-static {}, Lmiui/security/WakePathChecker;->getInstance()Lmiui/security/WakePathChecker;

    move-result-object v12

    .line 1000
    .local v12, "checker":Lmiui/security/WakePathChecker;
    move/from16 v13, p5

    move/from16 v14, p6

    invoke-virtual {v12, v2, v3, v13, v14}, Lmiui/security/WakePathChecker;->updatePath(Landroid/content/Intent;Landroid/content/pm/ComponentInfo;II)V

    .line 1002
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 1003
    .local v10, "startTime":J
    const/4 v15, 0x1

    .line 1004
    .local v15, "ret":Z
    const-string v4, ""

    .line 1005
    .local v4, "callerPkg":Ljava/lang/String;
    if-eqz p1, :cond_4c

    .line 1006
    monitor-enter p0

    :try_start_24
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1007
    const-string v5, "checkWakePath: synchronized (ams), get caller package info."

    invoke-static {v10, v11, v5}, Lcom/android/server/am/ExtraActivityManagerService;->checkTime(JLjava/lang/String;)V

    .line 1008
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v5

    .line 1009
    .local v5, "callerApp":Lcom/android/server/am/ProcessRecord;
    if-eqz v5, :cond_41

    iget-object v6, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-nez v6, :cond_37

    goto :goto_41

    .line 1012
    :cond_37
    iget-object v6, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object v4, v6

    .line 1014
    .end local v5    # "callerApp":Lcom/android/server/am/ProcessRecord;
    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_24 .. :try_end_3d} :catchall_46

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_54

    .line 1010
    .restart local v5    # "callerApp":Lcom/android/server/am/ProcessRecord;
    :cond_41
    :goto_41
    :try_start_41
    monitor-exit p0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_46

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v0

    .line 1014
    .end local v5    # "callerApp":Lcom/android/server/am/ProcessRecord;
    :catchall_46
    move-exception v0

    :try_start_47
    monitor-exit p0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 1016
    :cond_4c
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_56

    .line 1017
    move-object/from16 v4, p2

    .line 1023
    .end local v4    # "callerPkg":Ljava/lang/String;
    .local v9, "callerPkg":Ljava/lang/String;
    :goto_54
    move-object v9, v4

    goto :goto_59

    .line 1019
    .end local v9    # "callerPkg":Ljava/lang/String;
    .restart local v4    # "callerPkg":Ljava/lang/String;
    :cond_56
    const-string v4, "android"

    goto :goto_54

    .line 1023
    .end local v4    # "callerPkg":Ljava/lang/String;
    .restart local v9    # "callerPkg":Ljava/lang/String;
    :goto_59
    const/4 v4, -0x1

    .line 1024
    .local v4, "calleeUid":I
    iget-object v8, v3, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 1025
    .local v8, "calleePkg":Ljava/lang/String;
    iget-object v7, v3, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    .line 1026
    .local v7, "className":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v16

    .line 1027
    .local v16, "action":Ljava/lang/String;
    iget-object v5, v3, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v5, :cond_6a

    .line 1028
    iget-object v5, v3, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1031
    .end local v4    # "calleeUid":I
    .local v6, "calleeUid":I
    :cond_6a
    move v6, v4

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_72

    .line 1032
    return v0

    .line 1035
    :cond_72
    invoke-static {v9, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_79

    .line 1036
    return v0

    .line 1039
    :cond_79
    if-ltz v6, :cond_9c

    .line 1040
    monitor-enter p0

    :try_start_7c
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1041
    const-string v4, "checkWakePath: synchronized (ams), callee package is running?"

    invoke-static {v10, v11, v4}, Lcom/android/server/am/ExtraActivityManagerService;->checkTime(JLjava/lang/String;)V

    .line 1043
    iget-object v4, v3, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    invoke-static {v1, v8, v4, v6}, Lcom/android/server/am/ExtraActivityManagerService;->packageIsRunningLocked(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_91

    .line 1044
    monitor-exit p0
    :try_end_8d
    .catchall {:try_start_7c .. :try_end_8d} :catchall_96

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v0

    .line 1046
    :cond_91
    :try_start_91
    monitor-exit p0
    :try_end_92
    .catchall {:try_start_91 .. :try_end_92} :catchall_96

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_9c

    :catchall_96
    move-exception v0

    :try_start_97
    monitor-exit p0
    :try_end_98
    .catchall {:try_start_97 .. :try_end_98} :catchall_96

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 1049
    :cond_9c
    :goto_9c
    move-object v4, v12

    move-object/from16 v5, v16

    move/from16 v17, v6

    move-object v6, v7

    .end local v6    # "calleeUid":I
    .local v17, "calleeUid":I
    move-object/from16 v18, v7

    move-object v7, v9

    .end local v7    # "className":Ljava/lang/String;
    .local v18, "className":Ljava/lang/String;
    move-object/from16 v19, v8

    .end local v8    # "calleePkg":Ljava/lang/String;
    .local v19, "calleePkg":Ljava/lang/String;
    move-object/from16 v20, v9

    move/from16 v9, v17

    .end local v9    # "callerPkg":Ljava/lang/String;
    .local v20, "callerPkg":Ljava/lang/String;
    move-wide v2, v10

    move v10, v13

    .end local v10    # "startTime":J
    .local v2, "startTime":J
    move v11, v14

    invoke-virtual/range {v4 .. v11}, Lmiui/security/WakePathChecker;->matchWakePathRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)Z

    move-result v4

    xor-int/2addr v0, v4

    .line 1050
    .end local v15    # "ret":Z
    .local v0, "ret":Z
    const-string v4, "checkWakePath"

    invoke-static {v2, v3, v4}, Lcom/android/server/am/ExtraActivityManagerService;->checkTime(JLjava/lang/String;)V

    .line 1051
    return v0

    .line 996
    .end local v0    # "ret":Z
    .end local v2    # "startTime":J
    .end local v12    # "checker":Lmiui/security/WakePathChecker;
    .end local v16    # "action":Ljava/lang/String;
    .end local v17    # "calleeUid":I
    .end local v18    # "className":Ljava/lang/String;
    .end local v19    # "calleePkg":Ljava/lang/String;
    .end local v20    # "callerPkg":Ljava/lang/String;
    :cond_b9
    :goto_b9
    move/from16 v13, p5

    move/from16 v14, p6

    return v0
.end method

.method public static closeCheckPriority()V
    .registers 2

    .line 1358
    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    .line 1359
    .local v0, "service":Lcom/android/server/am/ActivityManagerService;
    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1360
    invoke-static {v0}, Lcom/android/server/am/ActiveServicesInjector;->closeCheckPriority(Lcom/android/server/am/ActivityManagerService;)V

    .line 1361
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_10

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1362
    return-void

    .line 1361
    :catchall_10
    move-exception v1

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method static destroyActivity(Landroid/content/pm/ActivityInfo;)V
    .registers 3
    .param p0, "aInfo"    # Landroid/content/pm/ActivityInfo;

    .line 976
    sget-boolean v0, Lcom/android/server/am/ExtraActivityManagerService;->mSystemReady:Z

    if-nez v0, :cond_c

    .line 977
    sget-object v0, Lcom/android/server/am/ExtraActivityManagerService;->TAG:Ljava/lang/String;

    const-string v1, "System was not ready,destroyActivity failed."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    return-void

    .line 980
    :cond_c
    if-nez p0, :cond_16

    .line 981
    sget-object v0, Lcom/android/server/am/ExtraActivityManagerService;->TAG:Ljava/lang/String;

    const-string v1, "aInfo is null!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    return-void

    .line 984
    :cond_16
    sget-object v0, Lcom/android/server/am/ExtraActivityManagerService;->mSplashScreenServiceDelegate:Lcom/miui/server/SplashScreenServiceDelegate;

    if-eqz v0, :cond_1f

    .line 985
    sget-object v0, Lcom/android/server/am/ExtraActivityManagerService;->mSplashScreenServiceDelegate:Lcom/miui/server/SplashScreenServiceDelegate;

    invoke-virtual {v0, p0}, Lcom/miui/server/SplashScreenServiceDelegate;->destroyActivity(Landroid/content/pm/ActivityInfo;)V

    .line 987
    :cond_1f
    return-void
.end method

.method private static ensureDeviceProvisioned(Landroid/content/Context;)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .line 864
    invoke-static {p0}, Lcom/android/server/am/ExtraActivityManagerService;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6d

    .line 865
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 867
    .local v0, "pm":Landroid/content/pm/PackageManager;
    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v1, :cond_18

    .line 868
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.provision"

    const-string v3, "com.android.provision.activities.DefaultActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    .local v1, "checkEnableName":Landroid/content/ComponentName;
    goto :goto_21

    .line 871
    .end local v1    # "checkEnableName":Landroid/content/ComponentName;
    :cond_18
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.google.android.setupwizard"

    const-string v3, "com.google.android.setupwizard.SetupWizardActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    .restart local v1    # "checkEnableName":Landroid/content/ComponentName;
    :goto_21
    if-eqz v0, :cond_6d

    .line 876
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6d

    .line 877
    sget-object v2, Lcom/android/server/am/ExtraActivityManagerService;->TAG:Ljava/lang/String;

    const-string v3, "The device provisioned state is inconsistent,try to restore."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "device_provisioned"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 879
    sget-boolean v2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v2, :cond_63

    .line 880
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.provision"

    const-string v5, "com.android.provision.activities.DefaultActivity"

    invoke-direct {v2, v3, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    .local v2, "name":Landroid/content/ComponentName;
    invoke-virtual {v0, v2, v4, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 884
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 885
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 886
    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 887
    const-string v4, "android.intent.category.HOME"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 888
    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 889
    .end local v2    # "name":Landroid/content/ComponentName;
    .end local v3    # "intent":Landroid/content/Intent;
    goto :goto_6d

    .line 890
    :cond_63
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "user_setup_complete"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 895
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    .end local v1    # "checkEnableName":Landroid/content/ComponentName;
    :cond_6d
    :goto_6d
    return-void
.end method

.method public static finishActivity(Lcom/android/server/am/ActivityManagerService;Landroid/os/IBinder;ILandroid/content/Intent;)Landroid/os/IBinder;
    .registers 8
    .param p0, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Landroid/content/Intent;

    .line 204
    if-nez p1, :cond_41

    .line 205
    monitor-enter p0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 206
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "security"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/security/SecurityManager;

    .line 207
    .local v0, "securityManager":Lmiui/security/SecurityManager;
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 208
    .local v1, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_36

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_36

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    .line 209
    invoke-virtual {v0, v2}, Lmiui/security/SecurityManager;->getApplicationAccessControlEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_36

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    .line 210
    invoke-virtual {v0, v2, v3}, Lmiui/security/SecurityManager;->checkAccessControlPass(Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_36

    .line 211
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object p1, v2

    monitor-exit p0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_3b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v2

    .line 213
    .end local v0    # "securityManager":Lmiui/security/SecurityManager;
    .end local v1    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_36
    :try_start_36
    monitor-exit p0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_3b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_41

    :catchall_3b
    move-exception v0

    :try_start_3c
    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 215
    :cond_41
    :goto_41
    return-object p1
.end method

.method public static finishBooting(Lcom/android/server/am/ActivityManagerService;)V
    .registers 2
    .param p0, "service"    # Lcom/android/server/am/ActivityManagerService;

    .line 466
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/XSpaceManagerService;->init(Landroid/content/Context;)V

    .line 467
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiui/drm/DrmBroadcast;->getInstance(Landroid/content/Context;)Lmiui/drm/DrmBroadcast;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/drm/DrmBroadcast;->broadcast()V

    .line 468
    return-void
.end method

.method static forceStopUserLocked(ILjava/lang/String;)V
    .registers 2
    .param p0, "userId"    # I
    .param p1, "reason"    # Ljava/lang/String;

    .line 1078
    return-void
.end method

.method private static getActionRestrictionForCallingPackage(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;Ljava/lang/String;II)I
    .registers 10
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingPid"    # I
    .param p4, "callingUid"    # I

    .line 383
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 384
    return v0

    .line 387
    :cond_4
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 388
    .local v1, "permission":Ljava/lang/String;
    if-nez v1, :cond_f

    .line 389
    return v0

    .line 394
    :cond_f
    :try_start_f
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x1000

    .line 395
    invoke-virtual {v2, p2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2
    :try_end_1b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f .. :try_end_1b} :catch_41

    .line 398
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    nop

    .line 397
    nop

    .line 400
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    .line 401
    return v0

    .line 404
    :cond_26
    invoke-virtual {p0, v1, p3, p4}, Lcom/android/server/am/ActivityManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2f

    .line 406
    const/4 v0, 0x1

    return v0

    .line 409
    :cond_2f
    invoke-static {v1}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v3

    .line 410
    .local v3, "opCode":I
    if-ne v3, v4, :cond_36

    .line 411
    return v0

    .line 414
    :cond_36
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    invoke-virtual {v4, v3, p4, p2}, Lcom/android/server/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_40

    .line 416
    const/4 v0, 0x2

    return v0

    .line 419
    :cond_40
    return v0

    .line 396
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v3    # "opCode":I
    :catch_41
    move-exception v2

    .line 397
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v0
.end method

.method private static getActivityManagerService()Lcom/android/server/am/ActivityManagerService;
    .registers 1

    .line 702
    sget-object v0, Lcom/android/server/am/ExtraActivityManagerService;->sAmInstance:Lcom/android/server/am/ActivityManagerService;

    if-nez v0, :cond_e

    .line 703
    const-string v0, "activity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityManagerService;

    sput-object v0, Lcom/android/server/am/ExtraActivityManagerService;->sAmInstance:Lcom/android/server/am/ActivityManagerService;

    .line 705
    :cond_e
    sget-object v0, Lcom/android/server/am/ExtraActivityManagerService;->sAmInstance:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method public static getCachedLostRamKb()J
    .registers 4

    .line 1437
    invoke-static {}, Lcom/android/server/am/MiuiActivityHelper;->getCachedLostRam()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private static getComponentRestrictionForCallingPackage(Lcom/android/server/am/ActivityManagerService;Landroid/content/pm/ActivityInfo;Ljava/lang/String;IIZ)I
    .registers 13
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "activityInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingPid"    # I
    .param p4, "callingUid"    # I
    .param p5, "ignoreTargetSecurity"    # Z

    .line 337
    const/4 v0, -0x1

    if-nez p5, :cond_16

    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-boolean v6, p1, Landroid/content/pm/ActivityInfo;->exported:Z

    move-object v1, p0

    move v3, p3

    move v4, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v1

    if-ne v1, v0, :cond_16

    .line 340
    const/4 v0, 0x1

    return v0

    .line 343
    :cond_16
    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_1c

    .line 344
    return v2

    .line 347
    :cond_1c
    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-static {v1}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v1

    .line 348
    .local v1, "opCode":I
    if-ne v1, v0, :cond_25

    .line 349
    return v2

    .line 352
    :cond_25
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    invoke-virtual {v0, v1, p4, p2}, Lcom/android/server/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_31

    .line 354
    if-nez p5, :cond_31

    .line 355
    const/4 v0, 0x2

    return v0

    .line 359
    :cond_31
    return v2
.end method

.method public static getConnProviderNamesLocked(Ljava/lang/String;I)Ljava/util/List;
    .registers 12
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1410
    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    .line 1411
    .local v0, "service":Lcom/android/server/am/ActivityManagerService;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1412
    .local v1, "providerNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    monitor-enter v0

    :try_start_a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1413
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService;->mProviderMap:Lcom/android/server/am/ProviderMap;

    if-nez v2, :cond_1e

    .line 1414
    sget-object v2, Lcom/android/server/am/ExtraActivityManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "mProviderMap is null !!!"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1415
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_a .. :try_end_1a} :catchall_6a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    .line 1417
    :cond_1e
    :try_start_1e
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1418
    .local v2, "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ContentProviderRecord;>;"
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService;->mProviderMap:Lcom/android/server/am/ProviderMap;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v4, p0

    move v8, p1

    move-object v9, v2

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/ProviderMap;->collectPackageProvidersLocked(Ljava/lang/String;Ljava/util/Set;ZZILjava/util/ArrayList;)Z

    .line 1420
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_32
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_65

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ContentProviderRecord;

    .line 1421
    .local v4, "cpr":Lcom/android/server/am/ContentProviderRecord;
    iget-object v5, v4, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_44
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_64

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ContentProviderConnection;

    .line 1422
    .local v6, "conn":Lcom/android/server/am/ContentProviderConnection;
    if-eqz v6, :cond_63

    iget-object v7, v6, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    if-eqz v7, :cond_63

    iget-object v7, v6, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v7, v7, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    if-eqz v7, :cond_63

    .line 1424
    iget-object v7, v6, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v7, v7, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1426
    .end local v6    # "conn":Lcom/android/server/am/ContentProviderConnection;
    :cond_63
    goto :goto_44

    .line 1427
    .end local v4    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    :cond_64
    goto :goto_32

    .line 1428
    :cond_65
    monitor-exit v0
    :try_end_66
    .catchall {:try_start_1e .. :try_end_66} :catchall_6a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    .line 1429
    .end local v2    # "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ContentProviderRecord;>;"
    :catchall_6a
    move-exception v2

    :try_start_6b
    monitor-exit v0
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method public static getCurAdjByPid(I)I
    .registers 5
    .param p0, "pid"    # I

    .line 729
    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    .line 730
    .local v0, "amService":Lcom/android/server/am/ActivityManagerService;
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v1

    .line 731
    :try_start_7
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v2, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 732
    .local v2, "processRecord":Lcom/android/server/am/ProcessRecord;
    if-eqz v2, :cond_15

    .line 733
    iget v3, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    monitor-exit v1

    return v3

    .line 735
    .end local v2    # "processRecord":Lcom/android/server/am/ProcessRecord;
    :cond_15
    monitor-exit v1

    .line 736
    const v1, 0x7fffffff

    return v1

    .line 735
    :catchall_1a
    move-exception v2

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_1a

    throw v2
.end method

.method public static getCurSchedGroupByPid(I)I
    .registers 5
    .param p0, "pid"    # I

    .line 751
    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    .line 752
    .local v0, "amService":Lcom/android/server/am/ActivityManagerService;
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v1

    .line 753
    :try_start_7
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v2, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 754
    .local v2, "processRecord":Lcom/android/server/am/ProcessRecord;
    if-eqz v2, :cond_15

    .line 755
    iget v3, v2, Lcom/android/server/am/ProcessRecord;->curSchedGroup:I

    monitor-exit v1

    return v3

    .line 757
    .end local v2    # "processRecord":Lcom/android/server/am/ProcessRecord;
    :cond_15
    monitor-exit v1

    .line 758
    const/4 v1, -0x1

    return v1

    .line 757
    :catchall_18
    move-exception v2

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_18

    throw v2
.end method

.method public static getCurrentUserId()I
    .registers 3

    .line 1106
    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    .line 1107
    .local v0, "amService":Lcom/android/server/am/ActivityManagerService;
    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_4b

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 1109
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_15

    goto :goto_4b

    .line 1111
    :cond_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: getCurrentUserId() from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1112
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1113
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " requires "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1115
    .local v1, "msg":Ljava/lang/String;
    sget-object v2, Lcom/android/server/am/ExtraActivityManagerService;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1118
    .end local v1    # "msg":Ljava/lang/String;
    :cond_4b
    :goto_4b
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v1}, Lcom/android/server/am/UserController;->getCurrentOrTargetUserId()I

    move-result v1

    return v1
.end method

.method public static getExtraInstallFlags(I)I
    .registers 3
    .param p0, "pid"    # I

    .line 778
    const/4 v0, 0x0

    .line 780
    .local v0, "installFlags":I
    invoke-static {p0}, Lcom/android/server/am/ExtraActivityManagerService;->getCurSchedGroupByPid(I)I

    move-result v1

    if-nez v1, :cond_a

    .line 781
    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    .line 783
    :cond_a
    return v0
.end method

.method public static getMemoryTrimLevel()I
    .registers 3

    .line 1365
    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    .line 1367
    .local v0, "service":Lcom/android/server/am/ActivityManagerService;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 1371
    monitor-enter v0

    :try_start_f
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1372
    iget v1, v0, Lcom/android/server/am/ActivityManagerService;->mLastMemoryLevel:I

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_19

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 1373
    :catchall_19
    move-exception v1

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 1368
    :cond_1f
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Isolated process not allowed to call getMemoryTrimLevel"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getPackageNameByPid(I)Ljava/lang/String;
    .registers 5
    .param p0, "pid"    # I

    .line 709
    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    .line 710
    .local v0, "amService":Lcom/android/server/am/ActivityManagerService;
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v1

    .line 711
    :try_start_7
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v2, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 712
    .local v2, "processRecord":Lcom/android/server/am/ProcessRecord;
    if-eqz v2, :cond_17

    .line 713
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    monitor-exit v1

    return-object v3

    .line 715
    .end local v2    # "processRecord":Lcom/android/server/am/ProcessRecord;
    :cond_17
    monitor-exit v1

    .line 716
    const/4 v1, 0x0

    return-object v1

    .line 715
    :catchall_1a
    move-exception v2

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_1a

    throw v2
.end method

.method private static getPackageNameForReceiver(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .param p0, "receiver"    # Ljava/lang/Object;

    .line 446
    const/4 v0, 0x0

    .line 447
    .local v0, "pkgName":Ljava/lang/String;
    instance-of v1, p0, Lcom/android/server/am/BroadcastFilter;

    if-eqz v1, :cond_b

    .line 448
    move-object v1, p0

    check-cast v1, Lcom/android/server/am/BroadcastFilter;

    iget-object v0, v1, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    goto :goto_1a

    .line 449
    :cond_b
    instance-of v1, p0, Landroid/content/pm/ResolveInfo;

    if-eqz v1, :cond_1a

    .line 450
    move-object v1, p0

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 451
    .local v1, "rinfo":Landroid/content/pm/ResolveInfo;
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_1a

    .line 452
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 456
    .end local v1    # "rinfo":Landroid/content/pm/ResolveInfo;
    :cond_1a
    :goto_1a
    return-object v0
.end method

.method public static getProcStateByPid(I)I
    .registers 5
    .param p0, "pid"    # I

    .line 740
    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    .line 741
    .local v0, "amService":Lcom/android/server/am/ActivityManagerService;
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v1

    .line 742
    :try_start_7
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v2, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 743
    .local v2, "processRecord":Lcom/android/server/am/ProcessRecord;
    if-eqz v2, :cond_15

    .line 744
    iget v3, v2, Lcom/android/server/am/ProcessRecord;->curProcState:I

    monitor-exit v1

    return v3

    .line 746
    .end local v2    # "processRecord":Lcom/android/server/am/ProcessRecord;
    :cond_15
    monitor-exit v1

    .line 747
    const/4 v1, -0x1

    return v1

    .line 746
    :catchall_18
    move-exception v2

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_18

    throw v2
.end method

.method public static getProcessNameByPid(I)Ljava/lang/String;
    .registers 4
    .param p0, "pid"    # I

    .line 720
    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    .line 722
    .local v0, "amService":Lcom/android/server/am/ActivityManagerService;
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v1

    .line 723
    :try_start_7
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v2, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 724
    .local v2, "app":Lcom/android/server/am/ProcessRecord;
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_1a

    .line 725
    if-nez v2, :cond_17

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_19

    :cond_17
    iget-object v1, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    :goto_19
    return-object v1

    .line 724
    .end local v2    # "app":Lcom/android/server/am/ProcessRecord;
    :catchall_1a
    move-exception v2

    :try_start_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v2
.end method

.method public static getRenderThreadTidByPid(I)I
    .registers 6
    .param p0, "pid"    # I

    .line 762
    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    .line 763
    .local v0, "amService":Lcom/android/server/am/ActivityManagerService;
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v1

    .line 764
    :try_start_7
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v2, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_1e

    .line 765
    .local v2, "proc":Lcom/android/server/am/ProcessRecord;
    const/4 v3, 0x0

    if-eqz v2, :cond_1c

    .line 767
    :try_start_12
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getRenderThreadTid()I

    move-result v4
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_16} :catch_19
    .catchall {:try_start_12 .. :try_end_16} :catchall_1e

    move v3, v4

    .line 768
    .local v3, "tid":I
    :try_start_17
    monitor-exit v1

    return v3

    .line 769
    .end local v3    # "tid":I
    :catch_19
    move-exception v4

    .line 770
    .local v4, "e":Ljava/lang/Exception;
    monitor-exit v1

    return v3

    .line 773
    .end local v2    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_1c
    monitor-exit v1

    .line 774
    return v3

    .line 773
    :catchall_1e
    move-exception v2

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_17 .. :try_end_20} :catchall_1e

    throw v2
.end method

.method public static getRunningProcessInfos()Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 1296
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1297
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1298
    .local v1, "pids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v2

    .line 1299
    .local v2, "service":Lcom/android/server/am/ActivityManagerService;
    const/4 v3, 0x0

    .line 1300
    .local v3, "bundle":Landroid/os/Bundle;
    monitor-enter v2

    :try_start_10
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1301
    iget-object v4, v2, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .line 1301
    .local v4, "i":I
    :goto_1b
    if-ltz v4, :cond_7f

    .line 1302
    iget-object v5, v2, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    .line 1303
    .local v5, "proc":Lcom/android/server/am/ProcessRecord;
    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord;->getSetAdjWithServices()I

    move-result v6

    .line 1304
    .local v6, "curAdj":I
    iget-object v7, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v7, :cond_73

    const/16 v7, 0x1f4

    if-ge v6, v7, :cond_73

    .line 1305
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    move-object v3, v7

    .line 1306
    const-string/jumbo v7, "pid"

    iget v8, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1307
    const-string v7, "adj"

    invoke-virtual {v3, v7, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1308
    const-string/jumbo v7, "lastPss"

    iget-wide v8, v5, Lcom/android/server/am/ProcessRecord;->lastPss:J

    invoke-virtual {v3, v7, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1309
    const-string/jumbo v7, "lastPssTime"

    iget-wide v8, v5, Lcom/android/server/am/ProcessRecord;->lastPssTime:J

    invoke-virtual {v3, v7, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1310
    const-string/jumbo v7, "processName"

    iget-object v8, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1311
    const-string/jumbo v7, "packageUid"

    iget-object v8, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1312
    const-string/jumbo v7, "packageName"

    iget-object v8, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1313
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1315
    :cond_73
    iget v7, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1301
    .end local v5    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v6    # "curAdj":I
    add-int/lit8 v4, v4, -0x1

    goto :goto_1b

    .line 1317
    .end local v4    # "i":I
    :cond_7f
    monitor-exit v2
    :try_end_80
    .catchall {:try_start_10 .. :try_end_80} :catchall_df

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1318
    iget-object v4, v2, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    monitor-enter v4

    .line 1319
    :try_start_86
    iget-object v5, v2, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v5}, Lcom/android/internal/os/ProcessCpuTracker;->countStats()I

    move-result v5

    .line 1320
    .local v5, "N":I
    const/4 v6, 0x0

    .line 1320
    .local v6, "i":I
    :goto_8d
    if-ge v6, v5, :cond_da

    .line 1321
    iget-object v7, v2, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v7, v6}, Lcom/android/internal/os/ProcessCpuTracker;->getStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;

    move-result-object v7

    .line 1322
    .local v7, "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    iget-wide v8, v7, Lcom/android/internal/os/ProcessCpuTracker$Stats;->vsize:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_d7

    iget v8, v7, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d7

    .line 1323
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    move-object v3, v8

    .line 1324
    const-string/jumbo v8, "pid"

    iget v9, v7, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {v3, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1325
    const-string v8, "adj"

    const/16 v9, -0x3e8

    invoke-virtual {v3, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1326
    const-string/jumbo v8, "lastPss"

    const-wide/16 v12, -0x1

    invoke-virtual {v3, v8, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1327
    const-string/jumbo v8, "lastPssTime"

    invoke-virtual {v3, v8, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1328
    const-string/jumbo v8, "processName"

    iget-object v9, v7, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    invoke-virtual {v3, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1329
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1320
    .end local v7    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_d7
    add-int/lit8 v6, v6, 0x1

    goto :goto_8d

    .line 1332
    .end local v5    # "N":I
    .end local v6    # "i":I
    :cond_da
    monitor-exit v4

    .line 1333
    return-object v0

    .line 1332
    :catchall_dc
    move-exception v5

    monitor-exit v4
    :try_end_de
    .catchall {:try_start_86 .. :try_end_de} :catchall_dc

    throw v5

    .line 1317
    :catchall_df
    move-exception v4

    :try_start_e0
    monitor-exit v2
    :try_end_e1
    .catchall {:try_start_e0 .. :try_end_e1} :catchall_df

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4
.end method

.method public static getTaskIntentForToken(Landroid/os/IBinder;)Ljava/util/ArrayList;
    .registers 8
    .param p0, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .line 1063
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityManagerService;

    .line 1064
    .local v0, "ams":Lcom/android/server/am/ActivityManagerService;
    monitor-enter v0

    :try_start_7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1065
    invoke-static {p0}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 1066
    .local v1, "activityRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_3b

    .line 1067
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1068
    .local v2, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_36

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 1069
    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    new-instance v5, Landroid/content/Intent;

    iget-object v6, v4, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1070
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    goto :goto_1f

    .line 1071
    :cond_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_7 .. :try_end_37} :catchall_41

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v2

    .line 1073
    .end local v1    # "activityRecord":Lcom/android/server/am/ActivityRecord;
    .end local v2    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    :cond_3b
    :try_start_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_41

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1074
    const/4 v1, 0x0

    return-object v1

    .line 1073
    :catchall_41
    move-exception v1

    :try_start_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public static getTopRunningActivityInfo()Ljava/util/HashMap;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1122
    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    .line 1123
    .local v0, "service":Lcom/android/server/am/ActivityManagerService;
    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1124
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 1125
    .local v1, "activityStack":Lcom/android/server/am/ActivityStack;
    if-eqz v1, :cond_43

    .line 1126
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 1127
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_43

    .line 1128
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1129
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v4, "packageName"

    iget-object v5, v2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1130
    const-string/jumbo v4, "token"

    iget-object v5, v2, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1131
    const-string/jumbo v4, "userId"

    iget v5, v2, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1132
    const-string v4, "intent"

    iget-object v5, v2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1133
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_5 .. :try_end_3f} :catchall_49

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v3

    .line 1136
    .end local v1    # "activityStack":Lcom/android/server/am/ActivityStack;
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_43
    :try_start_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_49

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1137
    const/4 v1, 0x0

    return-object v1

    .line 1136
    :catchall_49
    move-exception v1

    :try_start_4a
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public static handleExtraConfigurationChangesForSystem(ILandroid/content/res/Configuration;)V
    .registers 2
    .param p0, "changes"    # I
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 830
    invoke-static {}, Landroid/content/res/MiuiResources;->isPreloadedCacheEmpty()Z

    .line 833
    invoke-static {p0, p1}, Landroid/app/MiuiThemeHelper;->handleExtraConfigurationChangesForSystem(ILandroid/content/res/Configuration;)V

    .line 834
    return-void
.end method

.method static handleWindowManagerAndUserLru(Landroid/content/Context;IIILcom/android/server/wm/WindowManagerService;[II)V
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I
    .param p2, "userIdOrig"    # I
    .param p3, "oldUserId"    # I
    .param p4, "mWindowManager"    # Lcom/android/server/wm/WindowManagerService;
    .param p5, "mCurrentProfileIds"    # [I
    .param p6, "switchUserCallingUid"    # I

    .line 1085
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1086
    .local v0, "userIdInt":Ljava/lang/Integer;
    invoke-virtual {p4, p2, p5}, Lcom/android/server/wm/WindowManagerService;->setCurrentUser(I[I)V

    .line 1087
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "second_user_id"

    const/16 v3, -0x2710

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1089
    .local v1, "privacyUserId":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "kid_user_id"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1091
    .local v2, "kidSpaceUserId":I
    const-string v3, "ActivityManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "privacyUserId :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " userId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " userIdOrig:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " oldUserId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " kidSpaceUserId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    invoke-static {p6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    const/16 v4, 0x3e8

    if-ne v3, v4, :cond_77

    if-ne v1, p3, :cond_62

    if-eqz p1, :cond_6e

    :cond_62
    if-nez p3, :cond_66

    if-eq p1, v1, :cond_6e

    :cond_66
    if-ne v2, p3, :cond_6a

    if-eqz p1, :cond_6e

    :cond_6a
    if-nez p3, :cond_77

    if-ne p1, v2, :cond_77

    .line 1097
    :cond_6e
    const-string v3, "ActivityManagerService"

    const-string/jumbo v4, "switch without lock"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7b

    .line 1101
    :cond_77
    const/4 v3, 0x0

    invoke-virtual {p4, v3}, Lcom/android/server/wm/WindowManagerService;->lockNow(Landroid/os/Bundle;)V

    .line 1103
    :goto_7b
    return-void
.end method

.method public static hasForegroundActivities(I)Z
    .registers 5
    .param p0, "pid"    # I

    .line 787
    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    .line 788
    .local v0, "amService":Lcom/android/server/am/ActivityManagerService;
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v1

    .line 789
    :try_start_7
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v2, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 790
    .local v2, "processRecord":Lcom/android/server/am/ProcessRecord;
    if-eqz v2, :cond_15

    .line 791
    iget-boolean v3, v2, Lcom/android/server/am/ProcessRecord;->foregroundActivities:Z

    monitor-exit v1

    return v3

    .line 793
    .end local v2    # "processRecord":Lcom/android/server/am/ProcessRecord;
    :cond_15
    monitor-exit v1

    .line 794
    const/4 v1, 0x0

    return v1

    .line 793
    :catchall_18
    move-exception v2

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_18

    throw v2
.end method

.method public static hookStartActivity(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;
    .registers 3
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "callingPackage"    # Ljava/lang/String;

    .line 1406
    invoke-static {p0, p1}, Lcom/miui/hybrid/hook/HookClient;->redirectStartActivity(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static init()V
    .registers 3

    .line 460
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "sdcard"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v1, -0x1

    const/16 v2, 0x1ff

    invoke-static {v0, v2, v1, v1}, Lmiui/os/FileUtils;->mkdirs(Ljava/io/File;III)Z

    .line 461
    invoke-static {}, Lmiui/content/res/IconCustomizer;->checkModIconsTimestamp()V

    .line 462
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/ExtraActivityManagerService;->mSystemReady:Z

    .line 463
    return-void
.end method

.method static isAllowedStartActivity(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityStackSupervisor;Landroid/content/Intent;Ljava/lang/String;ILandroid/content/pm/ActivityInfo;)Z
    .registers 23
    .param p0, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "supervisor"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "callingUid"    # I
    .param p5, "aInfo"    # Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    .line 1142
    move-object/from16 v4, p5

    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    const/4 v6, 0x1

    const/16 v7, 0x3e8

    if-eq v5, v7, :cond_123

    .line 1143
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getMiuiFlags()I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_123

    .line 1144
    invoke-static/range {p3 .. p3}, Lcom/android/server/am/PendingIntentRecordInjector;->containsPendingIntent(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_123

    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1145
    invoke-static {v5}, Lcom/android/server/am/PendingIntentRecordInjector;->containsPendingIntent(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_123

    sget v5, Lcom/android/server/am/ExtraActivityManagerService;->mLastStartActivityUid:I

    if-ne v3, v5, :cond_31

    goto/16 :goto_123

    .line 1151
    :cond_31
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v5

    .line 1152
    .local v5, "stack":Lcom/android/server/am/ActivityStack;
    if-nez v5, :cond_38

    .line 1153
    return v6

    .line 1156
    :cond_38
    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowManagerService;->isKeyguardLocked()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_72

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    const/16 v9, 0x2724

    .line 1157
    invoke-virtual {v7, v9, v3, v2}, Lcom/android/server/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_72

    .line 1158
    sget-object v6, Lcom/android/server/am/ExtraActivityManagerService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MIUILOG- Permission Denied Activity KeyguardLocked: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " pkg : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " uid : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    return v8

    .line 1163
    :cond_72
    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    .line 1164
    .local v7, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v7, :cond_79

    .line 1165
    return v6

    .line 1167
    :cond_79
    iget-object v9, v7, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v3, v9, :cond_88

    .line 1168
    iget-object v8, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    sput v8, Lcom/android/server/am/ExtraActivityManagerService;->mLastStartActivityUid:I

    .line 1169
    return v6

    .line 1171
    :cond_88
    iget-object v9, v0, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    const/16 v10, 0x2725

    invoke-virtual {v9, v10, v3, v2}, Lcom/android/server/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_122

    .line 1173
    iget-object v9, v0, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v9}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v9

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v9

    .line 1174
    .local v9, "NP":I
    move v10, v8

    .line 1174
    .local v10, "ip":I
    :goto_9d
    if-ge v10, v9, :cond_ec

    .line 1175
    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v11}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v11

    invoke-virtual {v11, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/SparseArray;

    .line 1176
    .local v11, "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v12

    .line 1177
    .local v12, "NA":I
    move v13, v8

    .line 1177
    .local v13, "ia":I
    :goto_b0
    if-ge v13, v12, :cond_e8

    .line 1178
    invoke-virtual {v11, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/ProcessRecord;

    .line 1179
    .local v14, "app":Lcom/android/server/am/ProcessRecord;
    iget v15, v14, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v15, v3, :cond_e4

    iget-boolean v15, v14, Lcom/android/server/am/ProcessRecord;->foregroundActivities:Z

    if-nez v15, :cond_dd

    iget v15, v14, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/16 v8, 0x64

    if-ne v15, v8, :cond_e4

    const-string/jumbo v8, "visible"

    iget-object v15, v14, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1182
    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e4

    iget-object v8, v14, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    .line 1183
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_e4

    iget v8, v7, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    if-ne v3, v8, :cond_e4

    .line 1185
    :cond_dd
    iget-object v8, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    sput v8, Lcom/android/server/am/ExtraActivityManagerService;->mLastStartActivityUid:I

    .line 1186
    return v6

    .line 1177
    .end local v14    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_e4
    add-int/lit8 v13, v13, 0x1

    const/4 v8, 0x0

    goto :goto_b0

    .line 1174
    .end local v11    # "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    .end local v12    # "NA":I
    .end local v13    # "ia":I
    :cond_e8
    add-int/lit8 v10, v10, 0x1

    const/4 v8, 0x0

    goto :goto_9d

    .line 1190
    .end local v10    # "ip":I
    :cond_ec
    sget-object v6, Lcom/android/server/am/ExtraActivityManagerService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MIUILOG- Permission Denied Activity : "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " pkg : "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " uid : "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " tuid : "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v7, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    const/4 v6, 0x0

    return v6

    .line 1194
    .end local v9    # "NP":I
    :cond_122
    return v6

    .line 1147
    .end local v5    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v7    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_123
    :goto_123
    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    sput v5, Lcom/android/server/am/ExtraActivityManagerService;->mLastStartActivityUid:I

    .line 1148
    return v6
.end method

.method private static isDeviceProvisioned(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 859
    nop

    .line 860
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    .line 859
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_10

    const/4 v2, 0x1

    nop

    :cond_10
    return v2
.end method

.method static isUserSwitchable(I)Z
    .registers 2
    .param p0, "userId"    # I

    .line 1081
    const/4 v0, 0x1

    return v0
.end method

.method public static killUnusedApp(II)V
    .registers 10
    .param p0, "uid"    # I
    .param p1, "pid"    # I

    .line 1261
    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    .line 1262
    .local v0, "service":Lcom/android/server/am/ActivityManagerService;
    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1263
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 1263
    .local v1, "i":I
    :goto_10
    if-ltz v1, :cond_a3

    .line 1264
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 1265
    .local v3, "app":Lcom/android/server/am/ProcessRecord;
    if-nez v3, :cond_1e

    .line 1266
    goto/16 :goto_9f

    .line 1268
    :cond_1e
    iget v4, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v4, p0, :cond_9f

    iget v4, v3, Lcom/android/server/am/ProcessRecord;->pid:I

    if-ne v4, p1, :cond_9f

    .line 1269
    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v4, :cond_9f

    iget-boolean v4, v3, Lcom/android/server/am/ProcessRecord;->crashing:Z

    if-nez v4, :cond_9f

    iget-boolean v4, v3, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    if-nez v4, :cond_9f

    .line 1270
    iget v4, v3, Lcom/android/server/am/ProcessRecord;->setAdj:I

    .line 1271
    .local v4, "tempAdj":I
    const-string v5, "PerfShielderService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "check  package : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "  uid : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " pid : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " tempAdj : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    const/16 v5, 0xc8

    if-le v4, v5, :cond_a3

    iget-boolean v5, v3, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    if-nez v5, :cond_a3

    .line 1275
    const-string v5, "PerfShielderService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "kill app : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "  uid : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " pid : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    const-string v5, "User unused app kill it !!"

    invoke-virtual {v3, v5, v2}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    goto :goto_a3

    .line 1263
    .end local v3    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v4    # "tempAdj":I
    :cond_9f
    :goto_9f
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_10

    .line 1283
    .end local v1    # "i":I
    :cond_a3
    :goto_a3
    monitor-exit v0
    :try_end_a4
    .catchall {:try_start_5 .. :try_end_a4} :catchall_a8

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1284
    return-void

    .line 1283
    :catchall_a8
    move-exception v1

    :try_start_a9
    monitor-exit v0
    :try_end_aa
    .catchall {:try_start_a9 .. :try_end_aa} :catchall_a8

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method static onSystemReady(Landroid/content/Context;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 837
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/am/ExtraActivityManagerService;->mSystemReady:Z

    .line 838
    new-instance v0, Lcom/miui/server/SplashScreenServiceDelegate;

    invoke-direct {v0, p0}, Lcom/miui/server/SplashScreenServiceDelegate;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/am/ExtraActivityManagerService;->mSplashScreenServiceDelegate:Lcom/miui/server/SplashScreenServiceDelegate;

    .line 839
    const-string/jumbo v0, "perfshielder"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IPerfShielder$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IPerfShielder;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ExtraActivityManagerService;->mPerfService:Lcom/android/internal/app/IPerfShielder;

    .line 841
    :try_start_17
    sget-object v0, Lcom/android/server/am/ExtraActivityManagerService;->mPerfService:Lcom/android/internal/app/IPerfShielder;

    check-cast v0, Lcom/miui/server/PerfShielderService;

    invoke-virtual {v0}, Lcom/miui/server/PerfShielderService;->systemReady()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1e} :catch_1f

    .line 844
    goto :goto_23

    .line 842
    :catch_1f
    move-exception v0

    .line 843
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 846
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_23
    :try_start_23
    invoke-static {p0}, Lcom/android/server/am/ExtraActivityManagerService;->ensureDeviceProvisioned(Landroid/content/Context;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_26} :catch_27

    .line 849
    goto :goto_2f

    .line 847
    :catch_27
    move-exception v0

    .line 848
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->TAG:Ljava/lang/String;

    const-string v2, "ensureDeviceProvisioned occurs Exception."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 850
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2f
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/am/ExtraActivityManagerService$2;

    invoke-direct {v1}, Lcom/android/server/am/ExtraActivityManagerService$2;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 856
    return-void
.end method

.method private static packageIsRunningLocked(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 9
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "processName"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .line 1377
    const/4 v0, 0x0

    if-eqz p1, :cond_4d

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4d

    if-eqz p2, :cond_4d

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4d

    if-nez p3, :cond_14

    goto :goto_4d

    .line 1381
    :cond_14
    const/4 v1, 0x1

    invoke-virtual {p0, p2, p3, v1}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v2

    if-eqz v2, :cond_1c

    .line 1382
    return v1

    .line 1385
    :cond_1c
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    .local v2, "i":I
    :goto_23
    if-ltz v2, :cond_4c

    .line 1386
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 1387
    .local v3, "app":Lcom/android/server/am/ProcessRecord;
    if-nez v3, :cond_30

    .line 1388
    goto :goto_49

    .line 1391
    :cond_30
    iget v4, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v4, p3, :cond_49

    .line 1392
    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v4, :cond_49

    iget-boolean v4, v3, Lcom/android/server/am/ProcessRecord;->crashing:Z

    if-nez v4, :cond_49

    iget-boolean v4, v3, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    if-nez v4, :cond_49

    .line 1393
    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_49

    .line 1394
    return v1

    .line 1385
    .end local v3    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_49
    :goto_49
    add-int/lit8 v2, v2, -0x1

    goto :goto_23

    .line 1399
    .end local v2    # "i":I
    :cond_4c
    return v0

    .line 1378
    :cond_4d
    :goto_4d
    return v0
.end method

.method public static removeServicePriority(Lcom/android/internal/app/MiuiServicePriority;Z)V
    .registers 4
    .param p0, "servicePriority"    # Lcom/android/internal/app/MiuiServicePriority;
    .param p1, "inBlacklist"    # Z

    .line 1351
    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    .line 1352
    .local v0, "service":Lcom/android/server/am/ActivityManagerService;
    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1353
    invoke-static {v0, p0, p1}, Lcom/android/server/am/ActiveServicesInjector;->removeServicePriority(Lcom/android/server/am/ActivityManagerService;Lcom/android/internal/app/MiuiServicePriority;Z)V

    .line 1354
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_10

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1355
    return-void

    .line 1354
    :catchall_10
    move-exception v1

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public static removeTaskByIdLocked(IZZ)Z
    .registers 10
    .param p0, "taskId"    # I
    .param p1, "killProcess"    # Z
    .param p2, "removeFromRecents"    # Z

    .line 156
    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    .line 158
    .local v0, "amService":Lcom/android/server/am/ActivityManagerService;
    const/4 v1, 0x0

    :try_start_5
    sget-object v2, Lcom/android/server/am/ExtraActivityManagerService;->sRemoveTaskByIdLocked:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_33

    .line 159
    sget-object v2, Lcom/android/server/am/ExtraActivityManagerService;->sRemoveTaskByIdLocked:Ljava/lang/reflect/Method;

    sget-object v3, Lcom/android/server/am/ExtraActivityManagerService;->sMainStack:Ljava/lang/reflect/Field;

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v5, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_32} :catch_34

    return v2

    .line 163
    :cond_33
    goto :goto_38

    .line 161
    :catch_34
    move-exception v2

    .line 162
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 164
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_38
    return v1
.end method

.method static varargs reportActivityLaunchTime([Ljava/lang/Object;)V
    .registers 2
    .param p0, "list"    # [Ljava/lang/Object;

    .line 1218
    const/16 v0, 0x7588

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1219
    return-void
.end method

.method static reportAnr(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lmiui/mqsas/sdk/event/AnrEvent;)V
    .registers 13
    .param p0, "proc"    # Lcom/android/server/am/ProcessRecord;
    .param p1, "activity"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "event"    # Lmiui/mqsas/sdk/event/AnrEvent;

    .line 1222
    invoke-virtual {p2}, Lmiui/mqsas/sdk/event/AnrEvent;->getBgAnr()Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "com.android.systemui"

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 1223
    :cond_12
    const-wide/16 v0, 0x0

    .line 1224
    .local v0, "duration":J
    invoke-virtual {p2}, Lmiui/mqsas/sdk/event/AnrEvent;->isInputAnr()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 1225
    const-wide v0, 0x1dcd65000L

    goto :goto_4d

    .line 1226
    :cond_20
    invoke-virtual {p2}, Lmiui/mqsas/sdk/event/AnrEvent;->isBroadcastAnr()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 1227
    const-wide v0, 0x2540be400L

    goto :goto_4d

    .line 1228
    :cond_2c
    invoke-virtual {p2}, Lmiui/mqsas/sdk/event/AnrEvent;->isServiceAnr()Z

    move-result v2

    if-eqz v2, :cond_42

    .line 1229
    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    if-eqz v2, :cond_3c

    .line 1230
    const-wide v0, 0x4a817c800L

    goto :goto_4d

    .line 1232
    :cond_3c
    const-wide v0, 0x2e90edd000L

    goto :goto_4d

    .line 1234
    :cond_42
    invoke-virtual {p2}, Lmiui/mqsas/sdk/event/AnrEvent;->isProviderAnr()Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 1235
    const-wide v0, 0x4a817c800L

    .line 1237
    :cond_4d
    :goto_4d
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_54

    .line 1238
    return-void

    .line 1241
    :cond_54
    sget-object v2, Lcom/android/server/am/ExtraActivityManagerService;->mPerfService:Lcom/android/internal/app/IPerfShielder;

    if-eqz v2, :cond_71

    .line 1243
    :try_start_58
    sget-object v2, Lcom/android/server/am/ExtraActivityManagerService;->mPerfService:Lcom/android/internal/app/IPerfShielder;

    iget v3, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    if-nez p1, :cond_61

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    goto :goto_63

    :cond_61
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    .line 1244
    :goto_63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {p2}, Lmiui/mqsas/sdk/event/AnrEvent;->getCpuInfo()Ljava/lang/String;

    move-result-object v9

    .line 1243
    move-wide v5, v0

    invoke-interface/range {v2 .. v9}, Lcom/android/internal/app/IPerfShielder;->reportAnr(ILjava/lang/String;JJLjava/lang/String;)V
    :try_end_6f
    .catch Landroid/os/RemoteException; {:try_start_58 .. :try_end_6f} :catch_70

    .line 1246
    goto :goto_71

    .line 1245
    :catch_70
    move-exception v2

    .line 1249
    .end local v0    # "duration":J
    :cond_71
    :goto_71
    return-void
.end method

.method static requestSplashScreen(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Landroid/content/Intent;
    .registers 4
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;

    .line 898
    sget-boolean v0, Lcom/android/server/am/ExtraActivityManagerService;->mSystemReady:Z

    if-nez v0, :cond_c

    .line 899
    sget-object v0, Lcom/android/server/am/ExtraActivityManagerService;->TAG:Ljava/lang/String;

    const-string v1, "System was not ready,request splash failed."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    return-object p0

    .line 902
    :cond_c
    if-eqz p0, :cond_25

    if-nez p1, :cond_11

    goto :goto_25

    .line 906
    :cond_11
    sget-object v0, Lcom/android/server/am/ExtraActivityManagerService;->mSplashScreenServiceDelegate:Lcom/miui/server/SplashScreenServiceDelegate;

    if-eqz v0, :cond_1c

    .line 907
    sget-object v0, Lcom/android/server/am/ExtraActivityManagerService;->mSplashScreenServiceDelegate:Lcom/miui/server/SplashScreenServiceDelegate;

    invoke-virtual {v0, p0, p1}, Lcom/miui/server/SplashScreenServiceDelegate;->requestSplashScreen(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    .line 909
    :cond_1c
    sget-object v0, Lcom/android/server/am/ExtraActivityManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "mSplashScreenServiceDelegate is null!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    return-object p0

    .line 903
    :cond_25
    :goto_25
    sget-object v0, Lcom/android/server/am/ExtraActivityManagerService;->TAG:Ljava/lang/String;

    const-string v1, "Intent or aInfo is null!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    return-object p0
.end method

.method static requestSplashScreen(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/am/SafeActivityOptions;Landroid/app/IApplicationThread;Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityManagerService;)Landroid/content/Intent;
    .registers 9
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "options"    # Lcom/android/server/am/SafeActivityOptions;
    .param p3, "caller"    # Landroid/app/IApplicationThread;
    .param p4, "supervisor"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p5, "service"    # Lcom/android/server/am/ActivityManagerService;

    .line 916
    sget-boolean v0, Lcom/android/server/am/ExtraActivityManagerService;->mSystemReady:Z

    if-nez v0, :cond_c

    .line 917
    sget-object v0, Lcom/android/server/am/ExtraActivityManagerService;->TAG:Ljava/lang/String;

    const-string v1, "System was not ready,request splash failed."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    return-object p0

    .line 920
    :cond_c
    if-eqz p0, :cond_52

    if-nez p1, :cond_11

    goto :goto_52

    .line 925
    :cond_11
    const/4 v0, 0x0

    .line 926
    .local v0, "checkedOptions":Landroid/app/ActivityOptions;
    monitor-enter p5

    :try_start_13
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 927
    invoke-virtual {p5, p3}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    .line 928
    .local v1, "callerApp":Lcom/android/server/am/ProcessRecord;
    if-eqz p2, :cond_21

    .line 929
    invoke-virtual {p2, p0, p1, v1, p4}, Lcom/android/server/am/SafeActivityOptions;->getOptions(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityStackSupervisor;)Landroid/app/ActivityOptions;

    move-result-object v2

    goto :goto_22

    .line 930
    :cond_21
    const/4 v2, 0x0

    :goto_22
    move-object v0, v2

    .line 931
    .end local v1    # "callerApp":Lcom/android/server/am/ProcessRecord;
    monitor-exit p5
    :try_end_24
    .catchall {:try_start_13 .. :try_end_24} :catchall_4c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 933
    if-eqz v0, :cond_38

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_38

    .line 934
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->TAG:Ljava/lang/String;

    const-string v2, "The Activity is in freeForm windowing mode !"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    return-object p0

    .line 938
    :cond_38
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->mSplashScreenServiceDelegate:Lcom/miui/server/SplashScreenServiceDelegate;

    if-eqz v1, :cond_43

    .line 939
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->mSplashScreenServiceDelegate:Lcom/miui/server/SplashScreenServiceDelegate;

    invoke-virtual {v1, p0, p1}, Lcom/miui/server/SplashScreenServiceDelegate;->requestSplashScreen(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Landroid/content/Intent;

    move-result-object v1

    return-object v1

    .line 941
    :cond_43
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "mSplashScreenServiceDelegate is null!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    return-object p0

    .line 931
    :catchall_4c
    move-exception v1

    :try_start_4d
    monitor-exit p5
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 921
    .end local v0    # "checkedOptions":Landroid/app/ActivityOptions;
    :cond_52
    :goto_52
    sget-object v0, Lcom/android/server/am/ExtraActivityManagerService;->TAG:Ljava/lang/String;

    const-string v1, "Intent or aInfo is null!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    return-object p0
.end method

.method static resolveCheckIntent(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Lcom/android/server/am/ActivityStackSupervisor;Landroid/app/ProfilerInfo;I)Landroid/content/pm/ActivityInfo;
    .registers 13
    .param p0, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "stack"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p3, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p4, "userId"    # I

    .line 425
    if-eqz p1, :cond_62

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_62

    .line 426
    const/4 v0, 0x0

    .line 427
    .local v0, "transform":Z
    const-string/jumbo v1, "miui.intent.action.CHECK_ACCESS_CONTROL"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4c

    const-string v1, "android.app.action.CHECK_ACCESS_CONTROL_PAD"

    .line 428
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4c

    const-string v1, "android.app.action.CHECK_ALLOW_START_ACTIVITY"

    .line 429
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4c

    const-string v1, "android.app.action.CHECK_ALLOW_START_ACTIVITY_PAD"

    .line 430
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4c

    const-string v1, "com.miui.gamebooster.action.ACCESS_WINDOWCALLACTIVITY"

    .line 431
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4c

    .line 432
    invoke-static {p1}, Lcom/miui/server/AppRunningControlService;->isBlockActivity(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 433
    :cond_4c
    const/16 v1, 0x3e7

    if-ne p4, v1, :cond_51

    .line 434
    const/4 p4, 0x0

    .line 436
    :cond_51
    const/4 v0, 0x1

    .line 438
    :cond_52
    if-eqz v0, :cond_62

    .line 439
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    move-object v1, p2

    move-object v2, p1

    move-object v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/app/ProfilerInfo;II)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    .line 442
    .end local v0    # "transform":Z
    :cond_62
    return-object p0
.end method

.method static resolveSplashIntent(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Lcom/android/server/am/ActivityStackSupervisor;Landroid/app/ProfilerInfo;I)Landroid/content/pm/ActivityInfo;
    .registers 14
    .param p0, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "stack"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p3, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p4, "userId"    # I

    .line 962
    if-eqz p1, :cond_2e

    .line 963
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 964
    .local v0, "component":Landroid/content/ComponentName;
    if-eqz v0, :cond_2e

    const-string v1, "com.miui.systemAdSolution"

    .line 966
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 965
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    const-string v1, "com.miui.systemAdSolution.splashscreen.SplashActivity"

    .line 968
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 967
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 969
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    move-object v2, p2

    move-object v3, p1

    move-object v6, p3

    move v7, p4

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/app/ProfilerInfo;II)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    .line 972
    .end local v0    # "component":Landroid/content/ComponentName;
    :cond_2e
    return-object p0
.end method

.method public static scheduleDestroyActivities(IZLjava/lang/String;)V
    .registers 12
    .param p0, "pid"    # I
    .param p1, "oomAdj"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    .line 812
    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    .line 813
    .local v0, "amService":Lcom/android/server/am/ActivityManagerService;
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v1

    .line 814
    :try_start_7
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v2, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_4f

    .line 816
    .local v2, "processRecord":Lcom/android/server/am/ProcessRecord;
    if-eqz v2, :cond_4c

    .line 817
    :try_start_11
    sget-object v3, Lcom/android/server/am/ExtraActivityManagerService;->sScheduleDestroyAllActivities:Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-eqz v3, :cond_2a

    .line 818
    sget-object v3, Lcom/android/server/am/ExtraActivityManagerService;->sScheduleDestroyAllActivities:Ljava/lang/reflect/Method;

    sget-object v7, Lcom/android/server/am/ExtraActivityManagerService;->sMainStack:Ljava/lang/reflect/Field;

    invoke-virtual {v7, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v5

    aput-object p2, v6, v4

    invoke-virtual {v3, v7, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4c

    .line 819
    :cond_2a
    sget-object v3, Lcom/android/server/am/ExtraActivityManagerService;->sScheduleDestroyActivities:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_4c

    .line 820
    sget-object v3, Lcom/android/server/am/ExtraActivityManagerService;->sScheduleDestroyActivities:Ljava/lang/reflect/Method;

    sget-object v7, Lcom/android/server/am/ExtraActivityManagerService;->sMainStack:Ljava/lang/reflect/Field;

    invoke-virtual {v7, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v2, v8, v5

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v8, v4

    aput-object p2, v8, v6

    invoke-virtual {v3, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_46} :catch_47
    .catchall {:try_start_11 .. :try_end_46} :catchall_4f

    goto :goto_4c

    .line 823
    :catch_47
    move-exception v3

    .line 824
    .local v3, "e":Ljava/lang/Exception;
    :try_start_48
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .end local v2    # "processRecord":Lcom/android/server/am/ProcessRecord;
    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_4d

    .line 825
    .restart local v2    # "processRecord":Lcom/android/server/am/ProcessRecord;
    :cond_4c
    :goto_4c
    nop

    .line 826
    .end local v2    # "processRecord":Lcom/android/server/am/ProcessRecord;
    :goto_4d
    monitor-exit v1

    .line 827
    return-void

    .line 826
    :catchall_4f
    move-exception v2

    monitor-exit v1
    :try_end_51
    .catchall {:try_start_48 .. :try_end_51} :catchall_4f

    throw v2
.end method

.method public static scheduleTrimMemory(II)V
    .registers 6
    .param p0, "pid"    # I
    .param p1, "level"    # I

    .line 798
    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    .line 799
    .local v0, "amService":Lcom/android/server/am/ActivityManagerService;
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v1

    .line 800
    :try_start_7
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v2, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 801
    .local v2, "processRecord":Lcom/android/server/am/ProcessRecord;
    if-eqz v2, :cond_1f

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_21

    if-eqz v3, :cond_1f

    .line 803
    :try_start_15
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v3, p1}, Landroid/app/IApplicationThread;->scheduleTrimMemory(I)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1a} :catch_1b
    .catchall {:try_start_15 .. :try_end_1a} :catchall_21

    .line 806
    goto :goto_1f

    .line 804
    :catch_1b
    move-exception v3

    .line 805
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_1c
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 808
    .end local v2    # "processRecord":Lcom/android/server/am/ProcessRecord;
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_1f
    :goto_1f
    monitor-exit v1

    .line 809
    return-void

    .line 808
    :catchall_21
    move-exception v2

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_21

    throw v2
.end method

.method public static setForkedProcessGroup(IIILjava/lang/String;)V
    .registers 5
    .param p0, "puid"    # I
    .param p1, "ppid"    # I
    .param p2, "group"    # I
    .param p3, "processName"    # Ljava/lang/String;

    .line 1287
    sget-object v0, Lcom/android/server/am/ExtraActivityManagerService;->mPerfService:Lcom/android/internal/app/IPerfShielder;

    if-eqz v0, :cond_b

    .line 1289
    :try_start_4
    sget-object v0, Lcom/android/server/am/ExtraActivityManagerService;->mPerfService:Lcom/android/internal/app/IPerfShielder;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/internal/app/IPerfShielder;->setForkedProcessGroup(IIILjava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 1291
    goto :goto_b

    .line 1290
    :catch_a
    move-exception v0

    .line 1293
    :cond_b
    :goto_b
    return-void
.end method

.method static setSchedFgPid(I)V
    .registers 2
    .param p0, "pid"    # I

    .line 1252
    sget-object v0, Lcom/android/server/am/ExtraActivityManagerService;->mPerfService:Lcom/android/internal/app/IPerfShielder;

    if-eqz v0, :cond_b

    .line 1254
    :try_start_4
    sget-object v0, Lcom/android/server/am/ExtraActivityManagerService;->mPerfService:Lcom/android/internal/app/IPerfShielder;

    invoke-interface {v0, p0}, Lcom/android/internal/app/IPerfShielder;->setSchedFgPid(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 1256
    goto :goto_b

    .line 1255
    :catch_a
    move-exception v0

    .line 1258
    :cond_b
    :goto_b
    return-void
.end method

.method public static setServicePriority(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/app/MiuiServicePriority;",
            ">;)V"
        }
    .end annotation

    .line 1337
    .local p0, "servicePrioritys":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/MiuiServicePriority;>;"
    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    .line 1338
    .local v0, "service":Lcom/android/server/am/ActivityManagerService;
    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1339
    invoke-static {v0, p0}, Lcom/android/server/am/ActiveServicesInjector;->setServicePriority(Lcom/android/server/am/ActivityManagerService;Ljava/util/List;)V

    .line 1340
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_10

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1341
    return-void

    .line 1340
    :catchall_10
    move-exception v1

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public static setServicePriority(Ljava/util/List;J)V
    .registers 5
    .param p1, "noProcDelayTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/app/MiuiServicePriority;",
            ">;J)V"
        }
    .end annotation

    .line 1344
    .local p0, "servicePrioritys":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/MiuiServicePriority;>;"
    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    .line 1345
    .local v0, "service":Lcom/android/server/am/ActivityManagerService;
    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1346
    invoke-static {v0, p0, p1, p2}, Lcom/android/server/am/ActiveServicesInjector;->setServicePriority(Lcom/android/server/am/ActivityManagerService;Ljava/util/List;J)V

    .line 1347
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_10

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1348
    return-void

    .line 1347
    :catchall_10
    move-exception v1

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public static updateLastStartActivityUid(Ljava/lang/String;I)V
    .registers 9
    .param p0, "foregroundPackageName"    # Ljava/lang/String;
    .param p1, "lastUid"    # I

    .line 1445
    if-nez p0, :cond_3

    return-void

    .line 1446
    :cond_3
    sget-object v0, Lcom/android/server/am/ExtraActivityManagerService;->mDefaultHomePkgNames:Ljava/util/List;

    if-nez v0, :cond_41

    .line 1447
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1448
    .local v0, "homeActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 1450
    .local v1, "pm":Landroid/content/pm/IPackageManager;
    :try_start_10
    invoke-interface {v1, v0}, Landroid/content/pm/IPackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v2

    .line 1451
    .local v2, "currentDefaultHome":Landroid/content/ComponentName;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3f

    .line 1452
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 1453
    .local v4, "info":Landroid/content/pm/ResolveInfo;
    sget-object v5, Lcom/android/server/am/ExtraActivityManagerService;->mDefaultHomePkgNames:Ljava/util/List;

    if-nez v5, :cond_35

    .line 1454
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    sput-object v5, Lcom/android/server/am/ExtraActivityManagerService;->mDefaultHomePkgNames:Ljava/util/List;

    .line 1456
    :cond_35
    sget-object v5, Lcom/android/server/am/ExtraActivityManagerService;->mDefaultHomePkgNames:Ljava/util/List;

    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_3e} :catch_40

    .line 1457
    .end local v4    # "info":Landroid/content/pm/ResolveInfo;
    goto :goto_1e

    .line 1461
    .end local v2    # "currentDefaultHome":Landroid/content/ComponentName;
    :cond_3f
    goto :goto_41

    .line 1459
    :catch_40
    move-exception v2

    .line 1463
    .end local v0    # "homeActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    .end local v1    # "pm":Landroid/content/pm/IPackageManager;
    :cond_41
    :goto_41
    sget-object v0, Lcom/android/server/am/ExtraActivityManagerService;->mDefaultHomePkgNames:Ljava/util/List;

    if-nez v0, :cond_46

    return-void

    .line 1464
    :cond_46
    sget-object v0, Lcom/android/server/am/ExtraActivityManagerService;->mDefaultHomePkgNames:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 1465
    sput p1, Lcom/android/server/am/ExtraActivityManagerService;->mLastStartActivityUid:I

    .line 1467
    :cond_50
    return-void
.end method
