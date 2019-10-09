.class public Lcom/android/server/AppOpsServiceState;
.super Ljava/lang/Object;
.source "AppOpsServiceState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AppOpsServiceState$Callback;,
        Lcom/android/server/AppOpsServiceState$UserState;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field private static final POWER_SAVE_MODE_OPEN:Ljava/lang/String; = "POWER_SAVE_MODE_OPEN"

.field private static final TAG:Ljava/lang/String; = "AppOpsServiceState"

.field private static sCtsIgnore:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefaultMode:I

.field private mGreaterThanL:Z

.field private mIPackageManager:Landroid/content/pm/IPackageManager;

.field private mLastNotifyOp:I

.field private mLastNotifyUid:I

.field private mPowerSaving:Z

.field private mSecurityManager:Lmiui/security/SecurityManager;

.field final mUidStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/AppOpsServiceState$UserState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 43
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/AppOpsServiceState;->sCtsIgnore:Ljava/util/HashSet;

    .line 68
    sget-object v0, Lcom/android/server/AppOpsServiceState;->sCtsIgnore:Ljava/util/HashSet;

    const-string v1, "android.app.usage.cts"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 69
    sget-object v0, Lcom/android/server/AppOpsServiceState;->sCtsIgnore:Ljava/util/HashSet;

    const-string v1, "com.android.cts.usepermission"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 70
    sget-object v0, Lcom/android/server/AppOpsServiceState;->sCtsIgnore:Ljava/util/HashSet;

    const-string v1, "com.android.cts.permission"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 71
    sget-object v0, Lcom/android/server/AppOpsServiceState;->sCtsIgnore:Ljava/util/HashSet;

    const-string v1, "com.android.cts.netlegacy22.permission"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 72
    sget-object v0, Lcom/android/server/AppOpsServiceState;->sCtsIgnore:Ljava/util/HashSet;

    const-string v1, "android.netlegacy22.permission.cts"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 73
    sget-object v0, Lcom/android/server/AppOpsServiceState;->sCtsIgnore:Ljava/util/HashSet;

    const-string v1, "android.provider.cts"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 74
    sget-object v0, Lcom/android/server/AppOpsServiceState;->sCtsIgnore:Ljava/util/HashSet;

    const-string v1, "android.telephony2.cts"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 75
    sget-object v0, Lcom/android/server/AppOpsServiceState;->sCtsIgnore:Ljava/util/HashSet;

    const-string v1, "android.permission.cts"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 76
    sget-object v0, Lcom/android/server/AppOpsServiceState;->sCtsIgnore:Ljava/util/HashSet;

    const-string v1, "com.android.cts.writeexternalstorageapp"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 77
    sget-object v0, Lcom/android/server/AppOpsServiceState;->sCtsIgnore:Ljava/util/HashSet;

    const-string v1, "com.android.cts.readexternalstorageapp"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 78
    sget-object v0, Lcom/android/server/AppOpsServiceState;->sCtsIgnore:Ljava/util/HashSet;

    const-string v1, "com.android.cts.externalstorageapp"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 79
    sget-object v0, Lcom/android/server/AppOpsServiceState;->sCtsIgnore:Ljava/util/HashSet;

    const-string v1, "android.server.alertwindowapp"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 80
    sget-object v0, Lcom/android/server/AppOpsServiceState;->sCtsIgnore:Ljava/util/HashSet;

    const-string v1, "android.server.alertwindowappsdk25"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 81
    sget-object v0, Lcom/android/server/AppOpsServiceState;->sCtsIgnore:Ljava/util/HashSet;

    const-string v1, "com.android.app2"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 82
    sget-object v0, Lcom/android/server/AppOpsServiceState;->sCtsIgnore:Ljava/util/HashSet;

    const-string v1, "com.android.cts.appbinding.app"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 83
    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/AppOpsServiceState;->mDefaultMode:I

    .line 50
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x16

    if-le v1, v2, :cond_d

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    iput-boolean v0, p0, Lcom/android/server/AppOpsServiceState;->mGreaterThanL:Z

    .line 55
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsServiceState;->mUidStates:Landroid/util/SparseArray;

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/AppOpsServiceState;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/AppOpsServiceState;

    .line 32
    invoke-direct {p0}, Lcom/android/server/AppOpsServiceState;->updatePowerState()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/AppOpsServiceState;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AppOpsServiceState;

    .line 32
    iget-object v0, p0, Lcom/android/server/AppOpsServiceState;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/AppOpsServiceState;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AppOpsServiceState;
    .param p1, "x1"    # I

    .line 32
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsServiceState;->startService(I)V

    return-void
.end method

.method private declared-synchronized getUidState(IZ)Lcom/android/server/AppOpsServiceState$UserState;
    .registers 6
    .param p1, "userHandle"    # I
    .param p2, "edit"    # Z

    monitor-enter p0

    .line 93
    :try_start_1
    iget-object v0, p0, Lcom/android/server/AppOpsServiceState;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsServiceState$UserState;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_1d

    .line 94
    .local v0, "userState":Lcom/android/server/AppOpsServiceState$UserState;
    if-nez v0, :cond_1b

    .line 95
    const/4 v1, 0x0

    if-nez p2, :cond_10

    .line 96
    monitor-exit p0

    return-object v1

    .line 98
    :cond_10
    :try_start_10
    new-instance v2, Lcom/android/server/AppOpsServiceState$UserState;

    invoke-direct {v2, v1}, Lcom/android/server/AppOpsServiceState$UserState;-><init>(Lcom/android/server/AppOpsServiceState$1;)V

    move-object v0, v2

    .line 99
    iget-object v1, p0, Lcom/android/server/AppOpsServiceState;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1b
    .catchall {:try_start_10 .. :try_end_1b} :catchall_1d

    .line 101
    :cond_1b
    monitor-exit p0

    return-object v0

    .line 92
    .end local v0    # "userState":Lcom/android/server/AppOpsServiceState$UserState;
    .end local p1    # "userHandle":I
    .end local p2    # "edit":Z
    :catchall_1d
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/AppOpsServiceState;
    throw p1
.end method

.method private inMiuiAllowedBlackList(I)Z
    .registers 4
    .param p1, "code"    # I

    .line 158
    const/4 v0, 0x0

    .line 159
    .local v0, "inList":Z
    const/4 v1, 0x3

    if-eq p1, v1, :cond_d

    const/16 v1, 0xb

    if-eq p1, v1, :cond_d

    const/16 v1, 0x1c

    if-eq p1, v1, :cond_d

    goto :goto_e

    .line 163
    :cond_d
    const/4 v0, 0x1

    .line 166
    :goto_e
    iget-boolean v1, p0, Lcom/android/server/AppOpsServiceState;->mGreaterThanL:Z

    if-eqz v1, :cond_1b

    const/16 v1, 0x3e

    if-le p1, v1, :cond_1b

    const/16 v1, 0x3e8

    if-ge p1, v1, :cond_1b

    .line 167
    const/4 v0, 0x1

    .line 169
    :cond_1b
    return v0
.end method

.method public static isCtsIgnore(Ljava/lang/String;)Z
    .registers 2
    .param p0, "packageName"    # Ljava/lang/String;

    .line 301
    sget-object v0, Lcom/android/server/AppOpsServiceState;->sCtsIgnore:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isSystemApp(IILjava/lang/String;)Z
    .registers 10
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 173
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x2710

    if-ge v0, v2, :cond_a

    .line 174
    return v1

    .line 176
    :cond_a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 178
    .local v2, "identity":J
    const/4 v0, 0x0

    :try_start_f
    iget-object v4, p0, Lcom/android/server/AppOpsServiceState;->mIPackageManager:Landroid/content/pm/IPackageManager;

    if-nez v4, :cond_19

    .line 179
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/AppOpsServiceState;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 181
    :cond_19
    iget-object v4, p0, Lcom/android/server/AppOpsServiceState;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-interface {v4, p3, v0, v5}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 182
    .local v4, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v4, :cond_35

    iget v5, v4, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_27} :catch_34
    .catchall {:try_start_f .. :try_end_27} :catchall_2f

    and-int/2addr v5, v1

    if-eqz v5, :cond_35

    .line 183
    nop

    .line 188
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 183
    return v1

    .line 188
    .end local v4    # "info":Landroid/content/pm/ApplicationInfo;
    :catchall_2f
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 185
    :catch_34
    move-exception v1

    .line 188
    :cond_35
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 189
    nop

    .line 190
    return v0
.end method

.method private startService(I)V
    .registers 6
    .param p1, "userId"    # I

    .line 305
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/android/server/AppOpsServiceState$2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/AppOpsServiceState$2;-><init>(Lcom/android/server/AppOpsServiceState;I)V

    const-wide/16 v2, 0x514

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 319
    return-void
.end method

.method private updatePowerState()V
    .registers 4

    .line 122
    iget-object v0, p0, Lcom/android/server/AppOpsServiceState;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "POWER_SAVE_MODE_OPEN"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    goto :goto_12

    :cond_11
    move v1, v2

    :goto_12
    iput-boolean v1, p0, Lcom/android/server/AppOpsServiceState;->mPowerSaving:Z

    .line 126
    return-void
.end method


# virtual methods
.method public allowedToMode(IILjava/lang/String;)I
    .registers 7
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 142
    iget-boolean v0, p0, Lcom/android/server/AppOpsServiceState;->mPowerSaving:Z

    .line 143
    .local v0, "checkAutoStart":Z
    if-nez v0, :cond_f

    .line 144
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 145
    .local v1, "userId":I
    if-eqz v1, :cond_f

    const/16 v2, 0x3e7

    if-eq v1, v2, :cond_f

    .line 146
    const/4 v0, 0x1

    .line 149
    .end local v1    # "userId":I
    :cond_f
    if-eqz v0, :cond_1d

    const/16 v1, 0x2718

    if-ne p1, v1, :cond_1d

    .line 150
    invoke-static {p3}, Landroid/app/AppOpsManagerInjector;->isAutoStartRestriction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 151
    const/4 v1, 0x1

    return v1

    .line 154
    :cond_1d
    const/4 v1, 0x0

    return v1
.end method

.method public askOperationLocked(IILjava/lang/String;)I
    .registers 8
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 205
    iget v0, p0, Lcom/android/server/AppOpsServiceState;->mDefaultMode:I

    .line 206
    .local v0, "result":I
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 207
    .local v1, "userId":I
    const/16 v2, 0x3e7

    if-ne v1, v2, :cond_13

    .line 208
    const/4 v1, 0x0

    .line 209
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-static {v1, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result p2

    .line 211
    :cond_13
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/server/AppOpsServiceState;->getUidState(IZ)Lcom/android/server/AppOpsServiceState$UserState;

    move-result-object v2

    .line 212
    .local v2, "uidState":Lcom/android/server/AppOpsServiceState$UserState;
    if-eqz v2, :cond_2b

    iget-object v3, v2, Lcom/android/server/AppOpsServiceState$UserState;->mCallbackBinder:Lcom/android/internal/app/IOpsCallback;

    if-eqz v3, :cond_2b

    .line 214
    :try_start_22
    iget-object v3, v2, Lcom/android/server/AppOpsServiceState$UserState;->mCallbackBinder:Lcom/android/internal/app/IOpsCallback;

    invoke-interface {v3, p2, p3, p1}, Lcom/android/internal/app/IOpsCallback;->askOperation(ILjava/lang/String;I)I

    move-result v3
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_28} :catch_2a

    move v0, v3

    .line 216
    goto :goto_2b

    .line 215
    :catch_2a
    move-exception v3

    .line 218
    :cond_2b
    :goto_2b
    return v0
.end method

.method public getSuggestMode(IILjava/lang/String;)I
    .registers 5
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 222
    const/4 v0, -0x1

    return v0
.end method

.method public init(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 86
    iput-object p1, p0, Lcom/android/server/AppOpsServiceState;->mContext:Landroid/content/Context;

    .line 87
    const-string/jumbo v0, "is_pad"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 88
    iput v1, p0, Lcom/android/server/AppOpsServiceState;->mDefaultMode:I

    .line 90
    :cond_e
    return-void
.end method

.method public isAppPermissionControlOpen(II)Z
    .registers 6
    .param p1, "op"    # I
    .param p2, "uid"    # I

    .line 194
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_21

    const/16 v0, 0x2718

    if-ne p1, v0, :cond_11

    goto :goto_21

    .line 197
    :cond_11
    const/4 v0, 0x1

    .line 198
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/server/AppOpsServiceState;->mSecurityManager:Lmiui/security/SecurityManager;

    if-eqz v1, :cond_20

    .line 199
    iget-object v1, p0, Lcom/android/server/AppOpsServiceState;->mSecurityManager:Lmiui/security/SecurityManager;

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lmiui/security/SecurityManager;->getAppPermissionControlOpen(I)Z

    move-result v0

    .line 201
    :cond_20
    return v0

    .line 195
    .end local v0    # "result":Z
    :cond_21
    :goto_21
    const/4 v0, 0x1

    return v0
.end method

.method public isMiuiAllowed(IILjava/lang/String;)Z
    .registers 6
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 129
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsServiceState;->inMiuiAllowedBlackList(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 130
    return v1

    .line 132
    :cond_8
    const/16 v0, 0x2718

    if-ne p1, v0, :cond_13

    invoke-static {p3}, Landroid/app/AppOpsManagerInjector;->isAutoStartRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 133
    return v1

    .line 135
    :cond_13
    const/16 v0, 0x2729

    if-ne p1, v0, :cond_18

    .line 136
    return v1

    .line 138
    :cond_18
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/AppOpsServiceState;->isSystemApp(IILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onAppApplyOperation(ILjava/lang/String;IIZ)V
    .registers 14
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "op"    # I
    .param p4, "mode"    # I
    .param p5, "isStartOperation"    # Z

    .line 226
    if-nez p4, :cond_3

    .line 227
    return-void

    .line 230
    :cond_3
    sparse-switch p3, :sswitch_data_32

    .line 257
    return-void

    .line 254
    :sswitch_7
    nop

    .line 261
    iget v0, p0, Lcom/android/server/AppOpsServiceState;->mLastNotifyUid:I

    if-ne v0, p1, :cond_11

    iget v0, p0, Lcom/android/server/AppOpsServiceState;->mLastNotifyOp:I

    if-ne v0, p3, :cond_11

    .line 262
    return-void

    .line 264
    :cond_11
    iput p1, p0, Lcom/android/server/AppOpsServiceState;->mLastNotifyUid:I

    .line 265
    iput p3, p0, Lcom/android/server/AppOpsServiceState;->mLastNotifyOp:I

    .line 267
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/AppOpsServiceState;->getUidState(IZ)Lcom/android/server/AppOpsServiceState$UserState;

    move-result-object v0

    .line 268
    .local v0, "uidState":Lcom/android/server/AppOpsServiceState$UserState;
    if-eqz v0, :cond_30

    iget-object v1, v0, Lcom/android/server/AppOpsServiceState$UserState;->mCallbackBinder:Lcom/android/internal/app/IOpsCallback;

    if-eqz v1, :cond_30

    .line 270
    :try_start_24
    iget-object v2, v0, Lcom/android/server/AppOpsServiceState$UserState;->mCallbackBinder:Lcom/android/internal/app/IOpsCallback;

    move v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/android/internal/app/IOpsCallback;->onAppApplyOperation(ILjava/lang/String;IIZ)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_2e} :catch_2f

    .line 272
    goto :goto_30

    .line 271
    :catch_2f
    move-exception v1

    .line 274
    :cond_30
    :goto_30
    return-void

    nop

    :sswitch_data_32
    .sparse-switch
        0x0 -> :sswitch_7
        0x1 -> :sswitch_7
        0x2 -> :sswitch_7
        0x4 -> :sswitch_7
        0x5 -> :sswitch_7
        0x6 -> :sswitch_7
        0x7 -> :sswitch_7
        0xa -> :sswitch_7
        0xc -> :sswitch_7
        0xd -> :sswitch_7
        0xe -> :sswitch_7
        0xf -> :sswitch_7
        0x14 -> :sswitch_7
        0x15 -> :sswitch_7
        0x16 -> :sswitch_7
        0x1a -> :sswitch_7
        0x1b -> :sswitch_7
        0x29 -> :sswitch_7
        0x2a -> :sswitch_7
        0x2715 -> :sswitch_7
        0x271a -> :sswitch_7
        0x271b -> :sswitch_7
        0x2721 -> :sswitch_7
    .end sparse-switch
.end method

.method public registerCallback(Lcom/android/internal/app/IOpsCallback;)I
    .registers 7
    .param p1, "callback"    # Lcom/android/internal/app/IOpsCallback;

    .line 277
    iget-object v0, p0, Lcom/android/server/AppOpsServiceState;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_APP_OPS_STATS"

    .line 278
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 277
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 280
    const/4 v0, -0x1

    if-nez p1, :cond_14

    .line 281
    return v0

    .line 283
    :cond_14
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 284
    .local v1, "callingUserId":I
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/server/AppOpsServiceState;->getUidState(IZ)Lcom/android/server/AppOpsServiceState$UserState;

    move-result-object v2

    .line 286
    .local v2, "uidState":Lcom/android/server/AppOpsServiceState$UserState;
    if-nez v2, :cond_20

    .line 287
    return v0

    .line 289
    :cond_20
    iput-object p1, v2, Lcom/android/server/AppOpsServiceState$UserState;->mCallbackBinder:Lcom/android/internal/app/IOpsCallback;

    .line 290
    iget-object v0, v2, Lcom/android/server/AppOpsServiceState$UserState;->mCallback:Lcom/android/server/AppOpsServiceState$Callback;

    if-eqz v0, :cond_2b

    .line 291
    iget-object v0, v2, Lcom/android/server/AppOpsServiceState$UserState;->mCallback:Lcom/android/server/AppOpsServiceState$Callback;

    invoke-virtual {v0}, Lcom/android/server/AppOpsServiceState$Callback;->unlinkToDeath()V

    .line 293
    :cond_2b
    new-instance v0, Lcom/android/server/AppOpsServiceState$Callback;

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/AppOpsServiceState$Callback;-><init>(Lcom/android/server/AppOpsServiceState;Lcom/android/internal/app/IOpsCallback;I)V

    iput-object v0, v2, Lcom/android/server/AppOpsServiceState$UserState;->mCallback:Lcom/android/server/AppOpsServiceState$Callback;

    .line 294
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized removeUser(I)V
    .registers 3
    .param p1, "userHandle"    # I

    monitor-enter p0

    .line 105
    :try_start_1
    iget-object v0, p0, Lcom/android/server/AppOpsServiceState;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 106
    monitor-exit p0

    return-void

    .line 104
    .end local p1    # "userHandle":I
    :catchall_8
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/AppOpsServiceState;
    throw p1
.end method

.method public systemReady()V
    .registers 5

    .line 109
    iget-object v0, p0, Lcom/android/server/AppOpsServiceState;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "security"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/security/SecurityManager;

    iput-object v0, p0, Lcom/android/server/AppOpsServiceState;->mSecurityManager:Lmiui/security/SecurityManager;

    .line 110
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/AppOpsServiceState;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 111
    const-string v0, "POWER_SAVE_MODE_OPEN"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 112
    .local v0, "uri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/server/AppOpsServiceState;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Lcom/android/server/AppOpsServiceState$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/AppOpsServiceState$1;-><init>(Lcom/android/server/AppOpsServiceState;Landroid/os/Handler;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 118
    invoke-direct {p0}, Lcom/android/server/AppOpsServiceState;->updatePowerState()V

    .line 119
    return-void
.end method
