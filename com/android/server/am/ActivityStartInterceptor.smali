.class Lcom/android/server/am/ActivityStartInterceptor;
.super Ljava/lang/Object;
.source "ActivityStartInterceptor.java"


# instance fields
.field mAInfo:Landroid/content/pm/ActivityInfo;

.field mActivityOptions:Landroid/app/ActivityOptions;

.field private mCallingPackage:Ljava/lang/String;

.field mCallingPid:I

.field mCallingUid:I

.field mInTask:Lcom/android/server/am/TaskRecord;

.field mIntent:Landroid/content/Intent;

.field mRInfo:Landroid/content/pm/ResolveInfo;

.field private mRealCallingPid:I

.field private mRealCallingUid:I

.field mResolvedType:Ljava/lang/String;

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private final mServiceContext:Landroid/content/Context;

.field private mStartFlags:I

.field private final mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field private final mUserController:Lcom/android/server/am/UserController;

.field private mUserId:I

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityStackSupervisor;)V
    .registers 5
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "supervisor"    # Lcom/android/server/am/ActivityStackSupervisor;

    .line 103
    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/am/ActivityStartInterceptor;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityStackSupervisor;Landroid/content/Context;Lcom/android/server/am/UserController;)V

    .line 104
    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityStackSupervisor;Landroid/content/Context;Lcom/android/server/am/UserController;)V
    .registers 5
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "supervisor"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "userController"    # Lcom/android/server/am/UserController;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 110
    iput-object p2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 111
    iput-object p3, p0, Lcom/android/server/am/ActivityStartInterceptor;->mServiceContext:Landroid/content/Context;

    .line 112
    iput-object p4, p0, Lcom/android/server/am/ActivityStartInterceptor;->mUserController:Lcom/android/server/am/UserController;

    .line 113
    return-void
.end method

.method private createIntentSenderForOriginalIntent(II)Landroid/content/IntentSender;
    .registers 16
    .param p1, "callingUid"    # I
    .param p2, "flags"    # I

    .line 129
    invoke-direct {p0}, Lcom/android/server/am/ActivityStartInterceptor;->deferCrossProfileAppsAnimationIfNecessary()Landroid/os/Bundle;

    move-result-object v12

    .line 130
    .local v12, "activityOptions":Landroid/os/Bundle;
    iget-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mCallingPackage:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/am/ActivityStartInterceptor;->mUserId:I

    const/4 v1, 0x1

    new-array v8, v1, [Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    const/4 v5, 0x0

    aput-object v3, v8, v5

    new-array v9, v1, [Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    aput-object v1, v9, v5

    const/4 v1, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v3, p1

    move v10, p2

    move-object v11, v12

    invoke-virtual/range {v0 .. v11}, Lcom/android/server/am/ActivityManagerService;->getIntentSenderLocked(ILjava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;

    move-result-object v0

    .line 135
    .local v0, "target":Landroid/content/IIntentSender;
    new-instance v1, Landroid/content/IntentSender;

    invoke-direct {v1, v0}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    return-object v1
.end method

.method private deferCrossProfileAppsAnimationIfNecessary()Landroid/os/Bundle;
    .registers 4

    .line 182
    iget-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    .line 183
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getAnimationType()I

    move-result v0

    const/16 v2, 0xc

    if-ne v0, v2, :cond_1a

    .line 184
    iput-object v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    .line 185
    invoke-static {}, Landroid/app/ActivityOptions;->makeOpenCrossProfileAppsAnimation()Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 187
    :cond_1a
    return-object v1
.end method

.method private interceptHarmfulAppIfNeeded()Z
    .registers 10

    .line 322
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/am/ActivityStartInterceptor;->mUserId:I

    .line 323
    invoke-interface {v1, v2, v3}, Landroid/content/pm/IPackageManager;->getHarmfulAppWarning(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v1
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_11} :catch_56

    .line 326
    .local v1, "harmfulAppWarning":Ljava/lang/CharSequence;
    nop

    .line 325
    nop

    .line 328
    if-nez v1, :cond_16

    .line 329
    return v0

    .line 332
    :cond_16
    iget v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mCallingUid:I

    const/high16 v2, 0x54000000

    invoke-direct {p0, v0, v2}, Lcom/android/server/am/ActivityStartInterceptor;->createIntentSenderForOriginalIntent(II)Landroid/content/IntentSender;

    move-result-object v0

    .line 335
    .local v0, "target":Landroid/content/IntentSender;
    iget-object v2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mServiceContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/am/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v3, v0, v1}, Lcom/android/internal/app/HarmfulAppWarningActivity;->createHarmfulAppWarningIntent(Landroid/content/Context;Ljava/lang/String;Landroid/content/IntentSender;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 338
    iget v2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRealCallingPid:I

    iput v2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mCallingPid:I

    .line 339
    iget v2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRealCallingUid:I

    iput v2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mCallingUid:I

    .line 340
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    .line 342
    iget-object v3, p0, Lcom/android/server/am/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, p0, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/am/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    iget v6, p0, Lcom/android/server/am/ActivityStartInterceptor;->mUserId:I

    const/4 v7, 0x0

    iget v8, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRealCallingUid:I

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    .line 343
    iget-object v3, p0, Lcom/android/server/am/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, p0, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    iget v6, p0, Lcom/android/server/am/ActivityStartInterceptor;->mStartFlags:I

    invoke-virtual {v3, v4, v5, v6, v2}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    .line 344
    const/4 v2, 0x1

    return v2

    .line 324
    .end local v0    # "target":Landroid/content/IntentSender;
    .end local v1    # "harmfulAppWarning":Ljava/lang/CharSequence;
    :catch_56
    move-exception v1

    .line 325
    .local v1, "ex":Landroid/os/RemoteException;
    return v0
.end method

.method private interceptQuietProfileIfNeeded()Z
    .registers 10

    .line 192
    iget-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mUserManager:Landroid/os/UserManager;

    iget v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mUserId:I

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 193
    const/4 v0, 0x0

    return v0

    .line 196
    :cond_10
    iget v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mCallingUid:I

    const/high16 v1, 0x50000000

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/ActivityStartInterceptor;->createIntentSenderForOriginalIntent(II)Landroid/content/IntentSender;

    move-result-object v0

    .line 199
    .local v0, "target":Landroid/content/IntentSender;
    iget v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mUserId:I

    invoke-static {v1, v0}, Lcom/android/internal/app/UnlaunchableAppActivity;->createInQuietModeDialogIntent(ILandroid/content/IntentSender;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 200
    iget v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRealCallingPid:I

    iput v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mCallingPid:I

    .line 201
    iget v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRealCallingUid:I

    iput v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mCallingUid:I

    .line 202
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    .line 204
    iget-object v2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mUserManager:Landroid/os/UserManager;

    iget v3, p0, Lcom/android/server/am/ActivityStartInterceptor;->mUserId:I

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 205
    .local v2, "parent":Landroid/content/pm/UserInfo;
    iget-object v3, p0, Lcom/android/server/am/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, p0, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/am/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    iget v6, v2, Landroid/content/pm/UserInfo;->id:I

    const/4 v7, 0x0

    iget v8, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRealCallingUid:I

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    .line 206
    iget-object v3, p0, Lcom/android/server/am/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, p0, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    iget v6, p0, Lcom/android/server/am/ActivityStartInterceptor;->mStartFlags:I

    invoke-virtual {v3, v4, v5, v6, v1}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    .line 207
    const/4 v1, 0x1

    return v1
.end method

.method private interceptSuspendedByAdminPackage()Z
    .registers 12

    .line 211
    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 212
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 213
    .local v0, "devicePolicyManager":Landroid/app/admin/DevicePolicyManagerInternal;
    if-nez v0, :cond_c

    .line 214
    const/4 v1, 0x0

    return v1

    .line 216
    :cond_c
    iget v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mUserId:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManagerInternal;->createShowAdminSupportIntent(IZ)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 217
    iget-object v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    const-string v3, "android.app.extra.RESTRICTION"

    const-string/jumbo v4, "policy_suspend_packages"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    iget v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRealCallingPid:I

    iput v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mCallingPid:I

    .line 220
    iget v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRealCallingUid:I

    iput v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mCallingUid:I

    .line 221
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    .line 223
    iget-object v3, p0, Lcom/android/server/am/ActivityStartInterceptor;->mUserManager:Landroid/os/UserManager;

    iget v4, p0, Lcom/android/server/am/ActivityStartInterceptor;->mUserId:I

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 224
    .local v3, "parent":Landroid/content/pm/UserInfo;
    if-eqz v3, :cond_46

    .line 225
    iget-object v4, p0, Lcom/android/server/am/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v5, p0, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/server/am/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    iget v7, v3, Landroid/content/pm/UserInfo;->id:I

    const/4 v8, 0x0

    iget v9, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRealCallingUid:I

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    goto :goto_57

    .line 228
    :cond_46
    iget-object v5, p0, Lcom/android/server/am/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v6, p0, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/server/am/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    iget v8, p0, Lcom/android/server/am/ActivityStartInterceptor;->mUserId:I

    const/4 v9, 0x0

    iget v10, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRealCallingUid:I

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/am/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    .line 231
    :goto_57
    iget-object v4, p0, Lcom/android/server/am/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v5, p0, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    iget v7, p0, Lcom/android/server/am/ActivityStartInterceptor;->mStartFlags:I

    invoke-virtual {v4, v5, v6, v7, v1}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    .line 232
    return v2
.end method

.method private interceptSuspendedPackageIfNeeded()Z
    .registers 12

    .line 237
    iget-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_73

    iget-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_73

    iget-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x40000000    # 2.0f

    and-int/2addr v0, v2

    if-nez v0, :cond_17

    goto :goto_73

    .line 241
    :cond_17
    iget-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    .line 242
    .local v0, "pmi":Landroid/content/pm/PackageManagerInternal;
    if-nez v0, :cond_20

    .line 243
    return v1

    .line 245
    :cond_20
    iget-object v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 246
    .local v1, "suspendedPackage":Ljava/lang/String;
    iget v2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mUserId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManagerInternal;->getSuspendingPackage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 247
    .local v2, "suspendingPackage":Ljava/lang/String;
    const-string v3, "android"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 248
    invoke-direct {p0}, Lcom/android/server/am/ActivityStartInterceptor;->interceptSuspendedByAdminPackage()Z

    move-result v3

    return v3

    .line 250
    :cond_39
    iget v3, p0, Lcom/android/server/am/ActivityStartInterceptor;->mUserId:I

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManagerInternal;->getSuspendedDialogMessage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 251
    .local v3, "dialogMessage":Ljava/lang/String;
    iget v4, p0, Lcom/android/server/am/ActivityStartInterceptor;->mUserId:I

    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/app/SuspendedAppActivity;->createSuspendedAppInterceptIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 253
    iget v4, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRealCallingPid:I

    iput v4, p0, Lcom/android/server/am/ActivityStartInterceptor;->mCallingPid:I

    .line 254
    iget v4, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRealCallingUid:I

    iput v4, p0, Lcom/android/server/am/ActivityStartInterceptor;->mCallingUid:I

    .line 255
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/am/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    .line 256
    iget-object v5, p0, Lcom/android/server/am/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v6, p0, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/server/am/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    iget v8, p0, Lcom/android/server/am/ActivityStartInterceptor;->mUserId:I

    const/4 v9, 0x0

    iget v10, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRealCallingUid:I

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/am/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    .line 257
    iget-object v5, p0, Lcom/android/server/am/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v6, p0, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    iget v8, p0, Lcom/android/server/am/ActivityStartInterceptor;->mStartFlags:I

    invoke-virtual {v5, v6, v7, v8, v4}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/am/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    .line 258
    const/4 v4, 0x1

    return v4

    .line 239
    .end local v0    # "pmi":Landroid/content/pm/PackageManagerInternal;
    .end local v1    # "suspendedPackage":Ljava/lang/String;
    .end local v2    # "suspendingPackage":Ljava/lang/String;
    .end local v3    # "dialogMessage":Ljava/lang/String;
    :cond_73
    :goto_73
    return v1
.end method

.method private interceptWithConfirmCredentialsIfNeeded(Landroid/content/pm/ActivityInfo;I)Landroid/content/Intent;
    .registers 8
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "userId"    # I

    .line 300
    iget-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0, p2}, Lcom/android/server/am/UserController;->shouldConfirmCredentials(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 301
    return-object v1

    .line 304
    :cond_a
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/high16 v2, 0x54000000

    invoke-direct {p0, v0, v2}, Lcom/android/server/am/ActivityStartInterceptor;->createIntentSenderForOriginalIntent(II)Landroid/content/IntentSender;

    move-result-object v0

    .line 306
    .local v0, "target":Landroid/content/IntentSender;
    iget-object v2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mServiceContext:Landroid/content/Context;

    const-string/jumbo v3, "keyguard"

    .line 307
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    .line 308
    .local v2, "km":Landroid/app/KeyguardManager;
    invoke-virtual {v2, v1, v1, p2}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;

    move-result-object v3

    .line 309
    .local v3, "newIntent":Landroid/content/Intent;
    if-nez v3, :cond_26

    .line 310
    return-object v1

    .line 312
    :cond_26
    const v1, 0x10804000

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 314
    const-string v1, "android.intent.extra.PACKAGE_NAME"

    iget-object v4, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 315
    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 316
    return-object v3
.end method

.method private interceptWorkProfileChallengeIfNeeded()Z
    .registers 11

    .line 262
    iget-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    iget v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mUserId:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/ActivityStartInterceptor;->interceptWithConfirmCredentialsIfNeeded(Landroid/content/pm/ActivityInfo;I)Landroid/content/Intent;

    move-result-object v0

    .line 263
    .local v0, "interceptingIntent":Landroid/content/Intent;
    if-nez v0, :cond_c

    .line 264
    const/4 v1, 0x0

    return v1

    .line 266
    :cond_c
    iput-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 267
    iget v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRealCallingPid:I

    iput v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mCallingPid:I

    .line 268
    iget v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRealCallingUid:I

    iput v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mCallingUid:I

    .line 269
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    .line 273
    iget-object v2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mInTask:Lcom/android/server/am/TaskRecord;

    if-eqz v2, :cond_2a

    .line 274
    iget-object v2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    const-string v3, "android.intent.extra.TASK_ID"

    iget-object v4, p0, Lcom/android/server/am/ActivityStartInterceptor;->mInTask:Lcom/android/server/am/TaskRecord;

    iget v4, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 275
    iput-object v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mInTask:Lcom/android/server/am/TaskRecord;

    .line 277
    :cond_2a
    iget-object v2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    if-nez v2, :cond_34

    .line 278
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    .line 281
    :cond_34
    iget-object v2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->getHomeActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 282
    .local v2, "homeActivityRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_4d

    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v3

    if-eqz v3, :cond_4d

    .line 285
    iget-object v3, p0, Lcom/android/server/am/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v4

    iget v4, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v3, v4}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    .line 288
    :cond_4d
    iget-object v3, p0, Lcom/android/server/am/ActivityStartInterceptor;->mUserManager:Landroid/os/UserManager;

    iget v4, p0, Lcom/android/server/am/ActivityStartInterceptor;->mUserId:I

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 289
    .local v3, "parent":Landroid/content/pm/UserInfo;
    iget-object v4, p0, Lcom/android/server/am/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v5, p0, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/server/am/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    iget v7, v3, Landroid/content/pm/UserInfo;->id:I

    const/4 v8, 0x0

    iget v9, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRealCallingUid:I

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    .line 290
    iget-object v4, p0, Lcom/android/server/am/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v5, p0, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    iget v7, p0, Lcom/android/server/am/ActivityStartInterceptor;->mStartFlags:I

    invoke-virtual {v4, v5, v6, v7, v1}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    .line 291
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method intercept(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Landroid/content/pm/ActivityInfo;Ljava/lang/String;Lcom/android/server/am/TaskRecord;IILandroid/app/ActivityOptions;)Z
    .registers 11
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "rInfo"    # Landroid/content/pm/ResolveInfo;
    .param p3, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "inTask"    # Lcom/android/server/am/TaskRecord;
    .param p6, "callingPid"    # I
    .param p7, "callingUid"    # I
    .param p8, "activityOptions"    # Landroid/app/ActivityOptions;

    .line 146
    iget-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mServiceContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mUserManager:Landroid/os/UserManager;

    .line 148
    iput-object p1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 149
    iput p6, p0, Lcom/android/server/am/ActivityStartInterceptor;->mCallingPid:I

    .line 150
    iput p7, p0, Lcom/android/server/am/ActivityStartInterceptor;->mCallingUid:I

    .line 151
    iput-object p2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    .line 152
    iput-object p3, p0, Lcom/android/server/am/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    .line 153
    iput-object p4, p0, Lcom/android/server/am/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    .line 154
    iput-object p5, p0, Lcom/android/server/am/ActivityStartInterceptor;->mInTask:Lcom/android/server/am/TaskRecord;

    .line 155
    iput-object p8, p0, Lcom/android/server/am/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    .line 157
    invoke-direct {p0}, Lcom/android/server/am/ActivityStartInterceptor;->interceptSuspendedPackageIfNeeded()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_20

    .line 160
    return v1

    .line 162
    :cond_20
    invoke-direct {p0}, Lcom/android/server/am/ActivityStartInterceptor;->interceptQuietProfileIfNeeded()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 165
    return v1

    .line 167
    :cond_27
    invoke-direct {p0}, Lcom/android/server/am/ActivityStartInterceptor;->interceptHarmfulAppIfNeeded()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 170
    return v1

    .line 172
    :cond_2e
    invoke-direct {p0}, Lcom/android/server/am/ActivityStartInterceptor;->interceptWorkProfileChallengeIfNeeded()Z

    move-result v0

    return v0
.end method

.method setStates(IIIILjava/lang/String;)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "realCallingPid"    # I
    .param p3, "realCallingUid"    # I
    .param p4, "startFlags"    # I
    .param p5, "callingPackage"    # Ljava/lang/String;

    .line 121
    iput p2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRealCallingPid:I

    .line 122
    iput p3, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRealCallingUid:I

    .line 123
    iput p1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mUserId:I

    .line 124
    iput p4, p0, Lcom/android/server/am/ActivityStartInterceptor;->mStartFlags:I

    .line 125
    iput-object p5, p0, Lcom/android/server/am/ActivityStartInterceptor;->mCallingPackage:Ljava/lang/String;

    .line 126
    return-void
.end method
