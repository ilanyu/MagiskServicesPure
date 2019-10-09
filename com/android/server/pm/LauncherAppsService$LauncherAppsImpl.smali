.class Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;
.super Landroid/content/pm/ILauncherApps$Stub;
.source "LauncherAppsService.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/LauncherAppsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LauncherAppsImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;,
        Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "LauncherAppsService"


# instance fields
.field private final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field private final mCallbackHandler:Landroid/os/Handler;

.field private final mContext:Landroid/content/Context;

.field private final mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList<",
            "Landroid/content/pm/IOnAppsChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageMonitor:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;

.field private final mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

.field private final mUm:Landroid/os/UserManager;

.field private final mUserManagerInternal:Landroid/os/UserManagerInternal;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 118
    invoke-direct {p0}, Landroid/content/pm/ILauncherApps$Stub;-><init>()V

    .line 111
    new-instance v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    invoke-direct {v0, p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;-><init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)V

    iput-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    .line 114
    new-instance v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;-><init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Lcom/android/server/pm/LauncherAppsService$1;)V

    iput-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageMonitor:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;

    .line 119
    iput-object p1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mContext:Landroid/content/Context;

    .line 120
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mUm:Landroid/os/UserManager;

    .line 121
    const-class v0, Landroid/os/UserManagerInternal;

    .line 122
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManagerInternal;

    .line 121
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManagerInternal;

    iput-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    .line 123
    const-class v0, Landroid/app/ActivityManagerInternal;

    .line 124
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 123
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 125
    const-class v0, Landroid/content/pm/ShortcutServiceInternal;

    .line 126
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutServiceInternal;

    .line 125
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutServiceInternal;

    iput-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    .line 127
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageMonitor:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;

    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutServiceInternal;->addListener(Landroid/content/pm/ShortcutServiceInternal$ShortcutChangeListener;)V

    .line 128
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mCallbackHandler:Landroid/os/Handler;

    .line 129
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    .line 103
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z
    .registers 5
    .param p0, "x0"    # Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;
    .param p1, "x1"    # Landroid/os/UserHandle;
    .param p2, "x2"    # Landroid/os/UserHandle;
    .param p3, "x3"    # Ljava/lang/String;

    .line 103
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->isEnabledProfileOf(Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Landroid/content/pm/ShortcutServiceInternal;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    .line 103
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    return-object v0
.end method

.method private canAccessProfile(ILjava/lang/String;)Z
    .registers 10
    .param p1, "targetUserId"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 241
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectCallingUserId()I

    move-result v0

    .line 243
    .local v0, "callingUserId":I
    const/4 v1, 0x1

    if-ne p1, v0, :cond_8

    return v1

    .line 245
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectClearCallingIdentity()J

    move-result-wide v2

    .line 247
    .local v2, "ident":J
    :try_start_c
    iget-object v4, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mUm:Landroid/os/UserManager;

    invoke-virtual {v4, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    .line 248
    .local v4, "callingUserInfo":Landroid/content/pm/UserInfo;
    if-eqz v4, :cond_45

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    if-eqz v5, :cond_45

    .line 249
    const-string v1, "LauncherAppsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " for another profile "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " not allowed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catchall {:try_start_c .. :try_end_40} :catchall_54

    .line 251
    const/4 v1, 0x0

    .line 254
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectRestoreCallingIdentity(J)V

    .line 251
    return v1

    .line 254
    .end local v4    # "callingUserInfo":Landroid/content/pm/UserInfo;
    :cond_45
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectRestoreCallingIdentity(J)V

    .line 255
    nop

    .line 257
    iget-object v4, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectCallingUserId()I

    move-result v5

    invoke-virtual {v4, v5, p1, p2, v1}, Landroid/os/UserManagerInternal;->isProfileAccessible(IILjava/lang/String;Z)Z

    move-result v1

    return v1

    .line 254
    :catchall_54
    move-exception v1

    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectRestoreCallingIdentity(J)V

    throw v1
.end method

.method private ensureShortcutPermission(Ljava/lang/String;)V
    .registers 6
    .param p1, "callingPackage"    # Ljava/lang/String;

    .line 420
    invoke-virtual {p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->verifyCallingPackage(Ljava/lang/String;)V

    .line 421
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    invoke-direct {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getCallingUserId()I

    move-result v1

    .line 422
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingPid()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    move-result v3

    .line 421
    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/content/pm/ShortcutServiceInternal;->hasShortcutHostPermission(ILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 425
    return-void

    .line 423
    :cond_18
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller can\'t access shortcut information"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getCallingUserId()I
    .registers 2

    .line 157
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    return v0
.end method

.method private isEnabledProfileOf(Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z
    .registers 8
    .param p1, "listeningUser"    # Landroid/os/UserHandle;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "debugMsg"    # Ljava/lang/String;

    .line 654
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 655
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 654
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p3, v3}, Landroid/os/UserManagerInternal;->isProfileAccessible(IILjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private queryActivitiesForUser(Ljava/lang/String;Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/pm/ParceledListSlice;
    .registers 10
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            "Landroid/os/UserHandle;",
            ")",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 323
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    const-string v1, "Cannot retrieve activities"

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 324
    const/4 v0, 0x0

    return-object v0

    .line 327
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    move-result v0

    .line 328
    .local v0, "callingUid":I
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectClearCallingIdentity()J

    move-result-wide v1

    .line 330
    .local v1, "ident":J
    :try_start_16
    const-class v3, Landroid/content/pm/PackageManagerInternal;

    .line 331
    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageManagerInternal;

    .line 332
    .local v3, "pmInt":Landroid/content/pm/PackageManagerInternal;
    const/high16 v4, 0xc0000

    .line 335
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    .line 332
    invoke-virtual {v3, p2, v4, v0, v5}, Landroid/content/pm/PackageManagerInternal;->queryIntentActivities(Landroid/content/Intent;III)Ljava/util/List;

    move-result-object v4

    .line 336
    .local v4, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v5, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v5, v4}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V
    :try_end_2d
    .catchall {:try_start_16 .. :try_end_2d} :catchall_31

    .line 338
    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectRestoreCallingIdentity(J)V

    .line 336
    return-object v5

    .line 338
    .end local v3    # "pmInt":Landroid/content/pm/PackageManagerInternal;
    .end local v4    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catchall_31
    move-exception v3

    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectRestoreCallingIdentity(J)V

    throw v3
.end method

.method private startShortcutIntentsAsPublisher([Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;I)Z
    .registers 10
    .param p1, "intents"    # [Landroid/content/Intent;
    .param p2, "publisherPackage"    # Ljava/lang/String;
    .param p3, "startActivityOptions"    # Landroid/os/Bundle;
    .param p4, "userId"    # I

    .line 526
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v1, p2, p4, p1, p3}, Landroid/app/ActivityManagerInternal;->startActivitiesAsPackage(Ljava/lang/String;I[Landroid/content/Intent;Landroid/os/Bundle;)I

    move-result v1

    .line 528
    .local v1, "code":I
    invoke-static {v1}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 529
    const/4 v0, 0x1

    return v0

    .line 531
    :cond_f
    const-string v2, "LauncherAppsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t start activity, code="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_25} :catch_26

    .line 533
    return v0

    .line 534
    .end local v1    # "code":I
    :catch_26
    move-exception v1

    .line 538
    .local v1, "e":Ljava/lang/SecurityException;
    return v0
.end method

.method private startWatchingPackageBroadcasts()V
    .registers 6

    .line 206
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageMonitor:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;

    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v3, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mCallbackHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->register(Landroid/content/Context;Landroid/os/UserHandle;ZLandroid/os/Handler;)V

    .line 207
    return-void
.end method

.method private stopWatchingPackageBroadcasts()V
    .registers 2

    .line 216
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageMonitor:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;

    invoke-virtual {v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->unregister()V

    .line 217
    return-void
.end method


# virtual methods
.method public addOnAppsChangedListener(Ljava/lang/String;Landroid/content/pm/IOnAppsChangedListener;)V
    .registers 9
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/content/pm/IOnAppsChangedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 167
    invoke-virtual {p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->verifyCallingPackage(Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    monitor-enter v0

    .line 172
    :try_start_6
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    invoke-virtual {v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getRegisteredCallbackCount()I

    move-result v1

    if-nez v1, :cond_11

    .line 176
    invoke-direct {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->startWatchingPackageBroadcasts()V

    .line 178
    :cond_11
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    invoke-virtual {v1, p2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 179
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    new-instance v2, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;

    invoke-direct {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getCallingUserId()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    .line 180
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingPid()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    move-result v5

    invoke-direct {v2, v3, p1, v4, v5}, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;-><init>(Landroid/os/UserHandle;Ljava/lang/String;II)V

    .line 179
    invoke-virtual {v1, p2, v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 181
    monitor-exit v0

    .line 182
    return-void

    .line 181
    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_6 .. :try_end_34} :catchall_32

    throw v1
.end method

.method checkCallbackCount()V
    .registers 3

    .line 220
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    monitor-enter v0

    .line 224
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    invoke-virtual {v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getRegisteredCallbackCount()I

    move-result v1

    if-nez v1, :cond_e

    .line 225
    invoke-direct {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->stopWatchingPackageBroadcasts()V

    .line 227
    :cond_e
    monitor-exit v0

    .line 228
    return-void

    .line 227
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public getApplicationInfo(Ljava/lang/String;Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;
    .registers 10
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 402
    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    const-string v1, "Cannot check package"

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 403
    const/4 v0, 0x0

    return-object v0

    .line 406
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    move-result v0

    .line 407
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 409
    .local v1, "ident":J
    :try_start_16
    const-class v3, Landroid/content/pm/PackageManagerInternal;

    .line 410
    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageManagerInternal;

    .line 411
    .local v3, "pmInt":Landroid/content/pm/PackageManagerInternal;
    nop

    .line 412
    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 411
    invoke-virtual {v3, p2, p3, v0, v4}, Landroid/content/pm/PackageManagerInternal;->getApplicationInfo(Ljava/lang/String;III)Landroid/content/pm/ApplicationInfo;

    move-result-object v4
    :try_end_27
    .catchall {:try_start_16 .. :try_end_27} :catchall_2c

    .line 413
    .local v4, "info":Landroid/content/pm/ApplicationInfo;
    nop

    .line 415
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 413
    return-object v4

    .line 415
    .end local v3    # "pmInt":Landroid/content/pm/PackageManagerInternal;
    .end local v4    # "info":Landroid/content/pm/ApplicationInfo;
    :catchall_2c
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getLauncherActivities(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/pm/ParceledListSlice;
    .registers 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            ")",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 284
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.LAUNCHER"

    .line 286
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 287
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 284
    invoke-direct {p0, p1, v0, p3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->queryActivitiesForUser(Ljava/lang/String;Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    return-object v0
.end method

.method public getShortcutConfigActivities(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/pm/ParceledListSlice;
    .registers 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 317
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 318
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 317
    invoke-direct {p0, p1, v0, p3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->queryActivitiesForUser(Ljava/lang/String;Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    return-object v0
.end method

.method public getShortcutConfigActivityIntent(Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/UserHandle;)Landroid/content/IntentSender;
    .registers 15
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 345
    invoke-direct {p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->ensureShortcutPermission(Ljava/lang/String;)V

    .line 346
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    const-string v1, "Cannot check package"

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_11

    .line 347
    return-object v1

    .line 349
    :cond_11
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 353
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    move-wide v9, v2

    .line 355
    .local v9, "identity":J
    :try_start_24
    iget-object v3, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v6, 0x54000000

    const/4 v7, 0x0

    move-object v5, v0

    move-object v8, p3

    invoke-static/range {v3 .. v8}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v2

    .line 359
    .local v2, "pi":Landroid/app/PendingIntent;
    if-nez v2, :cond_33

    goto :goto_37

    :cond_33
    invoke-virtual {v2}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1
    :try_end_37
    .catchall {:try_start_24 .. :try_end_37} :catchall_3b

    .line 361
    :goto_37
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 359
    return-object v1

    .line 361
    .end local v2    # "pi":Landroid/app/PendingIntent;
    :catchall_3b
    move-exception v1

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public getShortcutIconFd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;
    .registers 12
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "targetUserId"    # I

    .line 475
    invoke-direct {p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->ensureShortcutPermission(Ljava/lang/String;)V

    .line 476
    const-string v0, "Cannot access shortcuts"

    invoke-direct {p0, p4, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 477
    const/4 v0, 0x0

    return-object v0

    .line 480
    :cond_d
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    invoke-direct {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getCallingUserId()I

    move-result v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/ShortcutServiceInternal;->getShortcutIconFd(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getShortcutIconResId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .registers 12
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "targetUserId"    # I

    .line 463
    invoke-direct {p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->ensureShortcutPermission(Ljava/lang/String;)V

    .line 464
    const-string v0, "Cannot access shortcuts"

    invoke-direct {p0, p4, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 465
    const/4 v0, 0x0

    return v0

    .line 468
    :cond_d
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    invoke-direct {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getCallingUserId()I

    move-result v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/ShortcutServiceInternal;->getShortcutIconResId(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getShortcuts(Ljava/lang/String;JLjava/lang/String;Ljava/util/List;Landroid/content/ComponentName;ILandroid/os/UserHandle;)Landroid/content/pm/ParceledListSlice;
    .registers 25
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "changedSince"    # J
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "shortcutIds"    # Ljava/util/List;
    .param p6, "componentName"    # Landroid/content/ComponentName;
    .param p7, "flags"    # I
    .param p8, "targetUser"    # Landroid/os/UserHandle;

    move-object/from16 v0, p0

    .line 431
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->ensureShortcutPermission(Ljava/lang/String;)V

    .line 432
    invoke-virtual/range {p8 .. p8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    const-string v2, "Cannot get shortcuts"

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 433
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v1, v2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v1

    .line 435
    :cond_19
    if-eqz p5, :cond_26

    if-eqz p4, :cond_1e

    goto :goto_26

    .line 436
    :cond_1e
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "To query by shortcut ID, package name must also be set"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 441
    :cond_26
    :goto_26
    new-instance v15, Landroid/content/pm/ParceledListSlice;

    iget-object v3, v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    .line 442
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getCallingUserId()I

    move-result v4

    .line 444
    invoke-virtual/range {p8 .. p8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v12

    .line 445
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingPid()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    move-result v14

    .line 442
    move-object/from16 v5, p1

    move-wide/from16 v6, p2

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move/from16 v11, p7

    invoke-virtual/range {v3 .. v14}, Landroid/content/pm/ShortcutServiceInternal;->getShortcuts(ILjava/lang/String;JLjava/lang/String;Ljava/util/List;Landroid/content/ComponentName;IIII)Ljava/util/List;

    move-result-object v3

    invoke-direct {v15, v3}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 441
    return-object v15
.end method

.method public getSuspendedPackageLauncherExtras(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/os/Bundle;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 390
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    const-string v1, "Cannot get launcher extras"

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 391
    const/4 v0, 0x0

    return-object v0

    .line 393
    :cond_e
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 394
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 395
    .local v0, "pmi":Landroid/content/pm/PackageManagerInternal;
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManagerInternal;->getSuspendedPackageLauncherExtras(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v1

    return-object v1
.end method

.method public hasShortcutHostPermission(Ljava/lang/String;)Z
    .registers 6
    .param p1, "callingPackage"    # Ljava/lang/String;

    .line 486
    invoke-virtual {p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->verifyCallingPackage(Ljava/lang/String;)V

    .line 487
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    invoke-direct {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getCallingUserId()I

    move-result v1

    .line 488
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingPid()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    move-result v3

    .line 487
    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/content/pm/ShortcutServiceInternal;->hasShortcutHostPermission(ILjava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method injectBinderCallingPid()I
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 138
    invoke-static {}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getCallingPid()I

    move-result v0

    return v0
.end method

.method injectBinderCallingUid()I
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 133
    invoke-static {}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getCallingUid()I

    move-result v0

    return v0
.end method

.method final injectCallingUserId()I
    .registers 2

    .line 142
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    return v0
.end method

.method injectClearCallingIdentity()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 147
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    return-wide v0
.end method

.method injectRestoreCallingIdentity(J)V
    .registers 3
    .param p1, "token"    # J
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 153
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 154
    return-void
.end method

.method public isActivityEnabled(Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/UserHandle;)Z
    .registers 11
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 546
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    const-string v1, "Cannot check component"

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    .line 547
    return v1

    .line 550
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    move-result v0

    .line 551
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 553
    .local v2, "ident":J
    :try_start_16
    const-class v4, Landroid/content/pm/PackageManagerInternal;

    .line 554
    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageManagerInternal;

    .line 555
    .local v4, "pmInt":Landroid/content/pm/PackageManagerInternal;
    const/high16 v5, 0xc0000

    .line 558
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    .line 555
    invoke-virtual {v4, p2, v5, v0, v6}, Landroid/content/pm/PackageManagerInternal;->getActivityInfo(Landroid/content/ComponentName;III)Landroid/content/pm/ActivityInfo;

    move-result-object v5
    :try_end_28
    .catchall {:try_start_16 .. :try_end_28} :catchall_30

    .line 559
    .local v5, "info":Landroid/content/pm/ActivityInfo;
    if-eqz v5, :cond_2c

    const/4 v1, 0x1

    nop

    .line 561
    :cond_2c
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 559
    return v1

    .line 561
    .end local v4    # "pmInt":Landroid/content/pm/PackageManagerInternal;
    .end local v5    # "info":Landroid/content/pm/ActivityInfo;
    :catchall_30
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public isPackageEnabled(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Z
    .registers 11
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 368
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    const-string v1, "Cannot check package"

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    .line 369
    return v1

    .line 372
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    move-result v0

    .line 373
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 375
    .local v2, "ident":J
    :try_start_16
    const-class v4, Landroid/content/pm/PackageManagerInternal;

    .line 376
    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageManagerInternal;

    .line 377
    .local v4, "pmInt":Landroid/content/pm/PackageManagerInternal;
    const/high16 v5, 0xc0000

    .line 380
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    .line 377
    invoke-virtual {v4, p2, v5, v0, v6}, Landroid/content/pm/PackageManagerInternal;->getPackageInfo(Ljava/lang/String;III)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 381
    .local v5, "info":Landroid/content/pm/PackageInfo;
    if-eqz v5, :cond_32

    iget-object v6, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v6, v6, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_2e
    .catchall {:try_start_16 .. :try_end_2e} :catchall_36

    if-eqz v6, :cond_32

    const/4 v1, 0x1

    nop

    .line 383
    :cond_32
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 381
    return v1

    .line 383
    .end local v4    # "pmInt":Landroid/content/pm/PackageManagerInternal;
    .end local v5    # "info":Landroid/content/pm/PackageInfo;
    :catchall_36
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public pinShortcuts(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V
    .registers 12
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p4, "targetUser"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/UserHandle;",
            ")V"
        }
    .end annotation

    .line 451
    .local p3, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->ensureShortcutPermission(Ljava/lang/String;)V

    .line 452
    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    const-string v1, "Cannot pin shortcuts"

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 453
    return-void

    .line 456
    :cond_10
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    invoke-direct {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getCallingUserId()I

    move-result v2

    .line 457
    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    .line 456
    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/ShortcutServiceInternal;->pinShortcuts(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;I)V

    .line 458
    return-void
.end method

.method postToPackageMonitorHandler(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "r"    # Ljava/lang/Runnable;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 660
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mCallbackHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 661
    return-void
.end method

.method public removeOnAppsChangedListener(Landroid/content/pm/IOnAppsChangedListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/content/pm/IOnAppsChangedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    monitor-enter v0

    .line 195
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 196
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    invoke-virtual {v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getRegisteredCallbackCount()I

    move-result v1

    if-nez v1, :cond_13

    .line 197
    invoke-direct {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->stopWatchingPackageBroadcasts()V

    .line 199
    :cond_13
    monitor-exit v0

    .line 200
    return-void

    .line 199
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public resolveActivity(Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/UserHandle;)Landroid/content/pm/ActivityInfo;
    .registers 10
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 295
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    const-string v1, "Cannot resolve activity"

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 296
    const/4 v0, 0x0

    return-object v0

    .line 299
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    move-result v0

    .line 300
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 302
    .local v1, "ident":J
    :try_start_16
    const-class v3, Landroid/content/pm/PackageManagerInternal;

    .line 303
    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageManagerInternal;

    .line 304
    .local v3, "pmInt":Landroid/content/pm/PackageManagerInternal;
    const/high16 v4, 0xc0000

    .line 307
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    .line 304
    invoke-virtual {v3, p2, v4, v0, v5}, Landroid/content/pm/PackageManagerInternal;->getActivityInfo(Landroid/content/ComponentName;III)Landroid/content/pm/ActivityInfo;

    move-result-object v4
    :try_end_28
    .catchall {:try_start_16 .. :try_end_28} :catchall_2c

    .line 309
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 304
    return-object v4

    .line 309
    .end local v3    # "pmInt":Landroid/content/pm/PackageManagerInternal;
    :catchall_2c
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public showAppDetailsAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/ComponentName;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .registers 20
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "component"    # Landroid/content/ComponentName;
    .param p4, "sourceBounds"    # Landroid/graphics/Rect;
    .param p5, "opts"    # Landroid/os/Bundle;
    .param p6, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v1, p0

    .line 631
    invoke-virtual/range {p6 .. p6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    const-string v2, "Cannot show app details"

    invoke-direct {v1, v0, v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 632
    return-void

    .line 636
    :cond_e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 638
    .local v2, "ident":J
    :try_start_12
    invoke-virtual/range {p3 .. p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 639
    .local v0, "packageName":Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.settings.APPLICATION_DETAILS_SETTINGS"

    const-string/jumbo v6, "package"

    const/4 v7, 0x0

    .line 640
    invoke-static {v6, v0, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 641
    .local v4, "intent":Landroid/content/Intent;
    const v5, 0x10008000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_2b
    .catchall {:try_start_12 .. :try_end_2b} :catchall_46

    .line 642
    move-object/from16 v5, p4

    :try_start_2d
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_44

    .line 644
    .end local v0    # "packageName":Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 645
    nop

    .line 644
    nop

    .line 646
    iget-object v7, v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 647
    invoke-virtual/range {p6 .. p6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v12

    .line 646
    move-object v8, p1

    move-object v9, p2

    move-object v10, v4

    move-object/from16 v11, p5

    invoke-virtual/range {v7 .. v12}, Landroid/app/ActivityManagerInternal;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Landroid/os/Bundle;I)I

    .line 648
    return-void

    .line 644
    .end local v4    # "intent":Landroid/content/Intent;
    :catchall_44
    move-exception v0

    goto :goto_49

    :catchall_46
    move-exception v0

    move-object/from16 v5, p4

    :goto_49
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/ComponentName;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .registers 23
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "component"    # Landroid/content/ComponentName;
    .param p4, "sourceBounds"    # Landroid/graphics/Rect;
    .param p5, "opts"    # Landroid/os/Bundle;
    .param p6, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    .line 569
    invoke-virtual/range {p6 .. p6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    const-string v3, "Cannot start activity"

    invoke-direct {v1, v0, v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 570
    return-void

    .line 573
    :cond_11
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    .line 574
    .local v3, "launchIntent":Landroid/content/Intent;
    const-string v0, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 575
    move-object/from16 v10, p4

    invoke-virtual {v3, v10}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 576
    const/high16 v0, 0x10200000

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 578
    invoke-virtual/range {p3 .. p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 580
    const/4 v4, 0x0

    .line 582
    .local v4, "canLaunch":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    move-result v11

    .line 583
    .local v11, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    move-wide v12, v5

    .line 585
    .local v12, "ident":J
    :try_start_39
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 586
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 587
    .local v0, "pmInt":Landroid/content/pm/PackageManagerInternal;
    nop

    .line 590
    invoke-virtual/range {p6 .. p6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    .line 587
    const/high16 v6, 0xc0000

    invoke-virtual {v0, v2, v6, v11, v5}, Landroid/content/pm/PackageManagerInternal;->getActivityInfo(Landroid/content/ComponentName;III)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    .line 591
    .local v5, "info":Landroid/content/pm/ActivityInfo;
    iget-boolean v7, v5, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v7, :cond_be

    .line 599
    nop

    .line 602
    invoke-virtual/range {p6 .. p6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    .line 599
    invoke-virtual {v0, v3, v6, v11, v7}, Landroid/content/pm/PackageManagerInternal;->queryIntentActivities(Landroid/content/Intent;III)Ljava/util/List;

    move-result-object v6

    .line 603
    .local v6, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    .line 604
    .local v7, "size":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_5e
    if-ge v8, v7, :cond_8c

    .line 605
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    iget-object v9, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 606
    .local v9, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v14, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual/range {p3 .. p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_89

    iget-object v14, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 607
    invoke-virtual/range {p3 .. p3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_89

    .line 610
    const/4 v14, 0x0

    invoke-virtual {v3, v14}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 611
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_87
    .catchall {:try_start_39 .. :try_end_87} :catchall_d5

    .line 612
    const/4 v4, 0x1

    .line 613
    goto :goto_8c

    .line 604
    .end local v9    # "activityInfo":Landroid/content/pm/ActivityInfo;
    :cond_89
    add-int/lit8 v8, v8, 0x1

    goto :goto_5e

    .line 616
    .end local v4    # "canLaunch":Z
    .end local v8    # "i":I
    .local v14, "canLaunch":Z
    :cond_8c
    :goto_8c
    move v14, v4

    if-eqz v14, :cond_a4

    .line 621
    .end local v0    # "pmInt":Landroid/content/pm/PackageManagerInternal;
    .end local v5    # "info":Landroid/content/pm/ActivityInfo;
    .end local v6    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v7    # "size":I
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 622
    nop

    .line 623
    iget-object v4, v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 624
    invoke-virtual/range {p6 .. p6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v9

    .line 623
    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object v7, v3

    move-object/from16 v8, p5

    invoke-virtual/range {v4 .. v9}, Landroid/app/ActivityManagerInternal;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Landroid/os/Bundle;I)I

    .line 625
    return-void

    .line 617
    .restart local v0    # "pmInt":Landroid/content/pm/PackageManagerInternal;
    .restart local v5    # "info":Landroid/content/pm/ActivityInfo;
    .restart local v6    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v7    # "size":I
    :cond_a4
    :try_start_a4
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Attempt to launch activity without  category Intent.CATEGORY_LAUNCHER "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_bb
    .catchall {:try_start_a4 .. :try_end_bb} :catchall_bb

    .line 621
    .end local v0    # "pmInt":Landroid/content/pm/PackageManagerInternal;
    .end local v5    # "info":Landroid/content/pm/ActivityInfo;
    .end local v6    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v7    # "size":I
    :catchall_bb
    move-exception v0

    move v4, v14

    goto :goto_d6

    .line 592
    .end local v14    # "canLaunch":Z
    .restart local v0    # "pmInt":Landroid/content/pm/PackageManagerInternal;
    .restart local v4    # "canLaunch":Z
    .restart local v5    # "info":Landroid/content/pm/ActivityInfo;
    :cond_be
    :try_start_be
    new-instance v6, Ljava/lang/SecurityException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot launch non-exported components "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_d5
    .catchall {:try_start_be .. :try_end_d5} :catchall_d5

    .line 621
    .end local v0    # "pmInt":Landroid/content/pm/PackageManagerInternal;
    .end local v5    # "info":Landroid/content/pm/ActivityInfo;
    :catchall_d5
    move-exception v0

    :goto_d6
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public startShortcut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;I)Z
    .registers 18
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "shortcutId"    # Ljava/lang/String;
    .param p4, "sourceBounds"    # Landroid/graphics/Rect;
    .param p5, "startActivityOptions"    # Landroid/os/Bundle;
    .param p6, "targetUserId"    # I

    move-object v0, p0

    .line 494
    move/from16 v9, p6

    invoke-virtual {v0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->verifyCallingPackage(Ljava/lang/String;)V

    .line 495
    const-string v1, "Cannot start activity"

    invoke-direct {v0, v9, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    move-result v1

    const/4 v10, 0x0

    if-nez v1, :cond_10

    .line 496
    return v10

    .line 500
    :cond_10
    iget-object v1, v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    invoke-direct {v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getCallingUserId()I

    move-result v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, v9

    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/ShortcutServiceInternal;->isPinnedByCaller(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_23

    .line 502
    invoke-direct {v0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->ensureShortcutPermission(Ljava/lang/String;)V

    .line 505
    :cond_23
    iget-object v1, v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    .line 506
    invoke-direct {v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getCallingUserId()I

    move-result v2

    .line 507
    invoke-virtual {v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingPid()I

    move-result v7

    invoke-virtual {v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    move-result v8

    .line 505
    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, v9

    invoke-virtual/range {v1 .. v8}, Landroid/content/pm/ShortcutServiceInternal;->createShortcutIntents(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)[Landroid/content/Intent;

    move-result-object v1

    .line 508
    .local v1, "intents":[Landroid/content/Intent;
    if-eqz v1, :cond_5a

    array-length v2, v1

    if-nez v2, :cond_3f

    goto :goto_5a

    .line 513
    :cond_3f
    aget-object v2, v1, v10

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 514
    aget-object v2, v1, v10

    move-object v3, p4

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 516
    aget-object v2, v1, v10

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addMiuiFlags(I)Landroid/content/Intent;

    .line 518
    move-object v2, p2

    move-object/from16 v4, p5

    invoke-direct {v0, v1, v2, v4, v9}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->startShortcutIntentsAsPublisher([Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;I)Z

    move-result v5

    return v5

    .line 509
    :cond_5a
    :goto_5a
    move-object v2, p2

    move-object v3, p4

    move-object/from16 v4, p5

    return v10
.end method

.method verifyCallingPackage(Ljava/lang/String;)V
    .registers 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 263
    const/4 v0, -0x1

    .line 265
    .local v0, "packageUid":I
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const v2, 0xc2000

    .line 269
    invoke-static {}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getCallingUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 265
    invoke-interface {v1, p1, v2, v3}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v1
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_14} :catch_16

    move v0, v1

    .line 271
    goto :goto_17

    .line 270
    :catch_16
    move-exception v1

    .line 272
    :goto_17
    if-gez v0, :cond_2f

    .line 273
    const-string v1, "LauncherAppsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_2f
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    move-result v1

    if-ne v0, v1, :cond_36

    .line 278
    return-void

    .line 276
    :cond_36
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Calling package name mismatch"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
