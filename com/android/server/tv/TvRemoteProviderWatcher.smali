.class final Lcom/android/server/tv/TvRemoteProviderWatcher;
.super Ljava/lang/Object;
.source "TvRemoteProviderWatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/tv/TvRemoteProviderWatcher$ProviderMethods;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "TvRemoteProvWatcher"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mProvider:Lcom/android/server/tv/TvRemoteProviderWatcher$ProviderMethods;

.field private final mProviderProxies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/tv/TvRemoteProviderProxy;",
            ">;"
        }
    .end annotation
.end field

.field private mRunning:Z

.field private final mScanPackagesReceiver:Landroid/content/BroadcastReceiver;

.field private final mScanPackagesRunnable:Ljava/lang/Runnable;

.field private final mUnbundledServicePackage:Ljava/lang/String;

.field private final mUserId:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 45
    const-string v0, "TvRemoteProvWatcher"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/tv/TvRemoteProviderWatcher;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/tv/TvRemoteProviderWatcher$ProviderMethods;Landroid/os/Handler;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "provider"    # Lcom/android/server/tv/TvRemoteProviderWatcher$ProviderMethods;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mProviderProxies:Ljava/util/ArrayList;

    .line 199
    new-instance v0, Lcom/android/server/tv/TvRemoteProviderWatcher$1;

    invoke-direct {v0, p0}, Lcom/android/server/tv/TvRemoteProviderWatcher$1;-><init>(Lcom/android/server/tv/TvRemoteProviderWatcher;)V

    iput-object v0, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mScanPackagesReceiver:Landroid/content/BroadcastReceiver;

    .line 209
    new-instance v0, Lcom/android/server/tv/TvRemoteProviderWatcher$2;

    invoke-direct {v0, p0}, Lcom/android/server/tv/TvRemoteProviderWatcher$2;-><init>(Lcom/android/server/tv/TvRemoteProviderWatcher;)V

    iput-object v0, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mScanPackagesRunnable:Ljava/lang/Runnable;

    .line 58
    iput-object p1, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mContext:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mProvider:Lcom/android/server/tv/TvRemoteProviderWatcher$ProviderMethods;

    .line 60
    iput-object p3, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mHandler:Landroid/os/Handler;

    .line 61
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mUserId:I

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 63
    const v0, 0x1040178

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mUnbundledServicePackage:Ljava/lang/String;

    .line 65
    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .line 42
    sget-boolean v0, Lcom/android/server/tv/TvRemoteProviderWatcher;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/tv/TvRemoteProviderWatcher;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/tv/TvRemoteProviderWatcher;

    .line 42
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mScanPackagesRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/tv/TvRemoteProviderWatcher;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/tv/TvRemoteProviderWatcher;

    .line 42
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/tv/TvRemoteProviderWatcher;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/tv/TvRemoteProviderWatcher;

    .line 42
    invoke-direct {p0}, Lcom/android/server/tv/TvRemoteProviderWatcher;->scanPackages()V

    return-void
.end method

.method private findProvider(Ljava/lang/String;Ljava/lang/String;)I
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .line 189
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mProviderProxies:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 190
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1b

    .line 191
    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mProviderProxies:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/tv/TvRemoteProviderProxy;

    .line 192
    .local v2, "provider":Lcom/android/server/tv/TvRemoteProviderProxy;
    invoke-virtual {v2, p1, p2}, Lcom/android/server/tv/TvRemoteProviderProxy;->hasComponentName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 193
    return v1

    .line 190
    .end local v2    # "provider":Lcom/android/server/tv/TvRemoteProviderProxy;
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 196
    .end local v1    # "i":I
    :cond_1b
    const/4 v1, -0x1

    return v1
.end method

.method private hasNecessaryPermissions(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 181
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.permission.TV_VIRTUAL_REMOTE_CONTROLLER"

    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_c

    .line 183
    const/4 v0, 0x1

    return v0

    .line 185
    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method private scanPackages()V
    .registers 12

    .line 103
    iget-boolean v0, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mRunning:Z

    if-nez v0, :cond_5

    .line 104
    return-void

    .line 107
    :cond_5
    sget-boolean v0, Lcom/android/server/tv/TvRemoteProviderWatcher;->DEBUG:Z

    if-eqz v0, :cond_11

    const-string v0, "TvRemoteProvWatcher"

    const-string/jumbo v1, "scanPackages()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_11
    const/4 v0, 0x0

    .line 111
    .local v0, "targetIndex":I
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.media.tv.remoteprovider.TvRemoteProvider"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 112
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mUserId:I

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_26
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_87

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 114
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 115
    .local v4, "serviceInfo":Landroid/content/pm/ServiceInfo;
    if-eqz v4, :cond_86

    invoke-direct {p0, v4}, Lcom/android/server/tv/TvRemoteProviderWatcher;->verifyServiceTrusted(Landroid/content/pm/ServiceInfo;)Z

    move-result v5

    if-eqz v5, :cond_86

    .line 116
    iget-object v5, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v6, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {p0, v5, v6}, Lcom/android/server/tv/TvRemoteProviderWatcher;->findProvider(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 117
    .local v5, "sourceIndex":I
    if-gez v5, :cond_6e

    .line 118
    new-instance v6, Lcom/android/server/tv/TvRemoteProviderProxy;

    iget-object v7, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/content/ComponentName;

    iget-object v9, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v10, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget v9, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mUserId:I

    iget-object v10, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/android/server/tv/TvRemoteProviderProxy;-><init>(Landroid/content/Context;Landroid/content/ComponentName;II)V

    .line 122
    .local v6, "providerProxy":Lcom/android/server/tv/TvRemoteProviderProxy;
    invoke-virtual {v6}, Lcom/android/server/tv/TvRemoteProviderProxy;->start()V

    .line 123
    iget-object v7, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mProviderProxies:Ljava/util/ArrayList;

    add-int/lit8 v8, v0, 0x1

    .line 123
    .local v8, "targetIndex":I
    invoke-virtual {v7, v0, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 124
    .end local v0    # "targetIndex":I
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mProvider:Lcom/android/server/tv/TvRemoteProviderWatcher$ProviderMethods;

    invoke-interface {v0, v6}, Lcom/android/server/tv/TvRemoteProviderWatcher$ProviderMethods;->addProvider(Lcom/android/server/tv/TvRemoteProviderProxy;)V

    .line 125
    .end local v6    # "providerProxy":Lcom/android/server/tv/TvRemoteProviderProxy;
    nop

    .line 132
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v4    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .end local v5    # "sourceIndex":I
    .end local v8    # "targetIndex":I
    .restart local v0    # "targetIndex":I
    :goto_6c
    move v0, v8

    goto :goto_86

    .line 125
    .restart local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .restart local v4    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .restart local v5    # "sourceIndex":I
    :cond_6e
    if-lt v5, v0, :cond_86

    .line 126
    iget-object v6, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mProviderProxies:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/tv/TvRemoteProviderProxy;

    .line 127
    .local v6, "provider":Lcom/android/server/tv/TvRemoteProviderProxy;
    invoke-virtual {v6}, Lcom/android/server/tv/TvRemoteProviderProxy;->start()V

    .line 128
    invoke-virtual {v6}, Lcom/android/server/tv/TvRemoteProviderProxy;->rebindIfDisconnected()V

    .line 129
    iget-object v7, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mProviderProxies:Ljava/util/ArrayList;

    add-int/lit8 v8, v0, 0x1

    .line 129
    .restart local v8    # "targetIndex":I
    invoke-static {v7, v5, v0}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 129
    .end local v0    # "targetIndex":I
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v4    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .end local v5    # "sourceIndex":I
    .end local v6    # "provider":Lcom/android/server/tv/TvRemoteProviderProxy;
    goto :goto_6c

    .line 132
    .end local v8    # "targetIndex":I
    .restart local v0    # "targetIndex":I
    :cond_86
    :goto_86
    goto :goto_26

    .line 133
    :cond_87
    sget-boolean v2, Lcom/android/server/tv/TvRemoteProviderWatcher;->DEBUG:Z

    if-eqz v2, :cond_a2

    const-string v2, "TvRemoteProvWatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "scanPackages() targetIndex "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_a2
    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mProviderProxies:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_cc

    .line 136
    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mProviderProxies:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 136
    .local v2, "i":I
    :goto_b2
    if-lt v2, v0, :cond_cc

    .line 137
    iget-object v3, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mProviderProxies:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tv/TvRemoteProviderProxy;

    .line 138
    .local v3, "providerProxy":Lcom/android/server/tv/TvRemoteProviderProxy;
    iget-object v4, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mProvider:Lcom/android/server/tv/TvRemoteProviderWatcher$ProviderMethods;

    invoke-interface {v4, v3}, Lcom/android/server/tv/TvRemoteProviderWatcher$ProviderMethods;->removeProvider(Lcom/android/server/tv/TvRemoteProviderProxy;)V

    .line 139
    iget-object v4, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mProviderProxies:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 140
    invoke-virtual {v3}, Lcom/android/server/tv/TvRemoteProviderProxy;->stop()V

    .line 136
    .end local v3    # "providerProxy":Lcom/android/server/tv/TvRemoteProviderProxy;
    add-int/lit8 v2, v2, -0x1

    goto :goto_b2

    .line 143
    .end local v2    # "i":I
    :cond_cc
    return-void
.end method

.method private verifyServiceTrusted(Landroid/content/pm/ServiceInfo;)Z
    .registers 6
    .param p1, "serviceInfo"    # Landroid/content/pm/ServiceInfo;

    .line 146
    iget-object v0, p1, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_60

    iget-object v0, p1, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v2, "android.permission.BIND_TV_REMOTE_SERVICE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_60

    .line 159
    :cond_10
    iget-object v0, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mUnbundledServicePackage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 160
    const-string v0, "TvRemoteProvWatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring atv remote provider service because the package has not been set and/or whitelisted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    return v1

    .line 166
    :cond_3d
    iget-object v0, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/tv/TvRemoteProviderWatcher;->hasNecessaryPermissions(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5e

    .line 169
    const-string v0, "TvRemoteProvWatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring atv remote provider service because its package does not have TV_VIRTUAL_REMOTE_CONTROLLER permission: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    return v1

    .line 175
    :cond_5e
    const/4 v0, 0x1

    return v0

    .line 152
    :cond_60
    :goto_60
    const-string v0, "TvRemoteProvWatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring atv remote provider service because it did not require the BIND_TV_REMOTE_SERVICE permission in its manifest: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    return v1
.end method


# virtual methods
.method public start()V
    .registers 8

    .line 68
    sget-boolean v0, Lcom/android/server/tv/TvRemoteProviderWatcher;->DEBUG:Z

    if-eqz v0, :cond_c

    const-string v0, "TvRemoteProvWatcher"

    const-string/jumbo v1, "start()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_c
    iget-boolean v0, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mRunning:Z

    if-nez v0, :cond_50

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mRunning:Z

    .line 72
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 73
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 77
    const-string v1, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 78
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 79
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mScanPackagesReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/os/UserHandle;

    iget v4, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mUserId:I

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mHandler:Landroid/os/Handler;

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 84
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mScanPackagesRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 86
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_50
    return-void
.end method

.method public stop()V
    .registers 3

    .line 89
    iget-boolean v0, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mRunning:Z

    if-eqz v0, :cond_2d

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mRunning:Z

    .line 92
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mScanPackagesReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 93
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mScanPackagesRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 96
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mProviderProxies:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_1d
    if-ltz v0, :cond_2d

    .line 97
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mProviderProxies:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-virtual {v1}, Lcom/android/server/tv/TvRemoteProviderProxy;->stop()V

    .line 96
    add-int/lit8 v0, v0, -0x1

    goto :goto_1d

    .line 100
    .end local v0    # "i":I
    :cond_2d
    return-void
.end method
