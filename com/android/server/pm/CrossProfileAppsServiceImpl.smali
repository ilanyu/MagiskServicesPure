.class public Lcom/android/server/pm/CrossProfileAppsServiceImpl;
.super Landroid/content/pm/ICrossProfileApps$Stub;
.source "CrossProfileAppsServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;,
        Lcom/android/server/pm/CrossProfileAppsServiceImpl$InjectorImpl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CrossProfileAppsService"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 55
    new-instance v0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$InjectorImpl;

    invoke-direct {v0, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$InjectorImpl;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;-><init>(Landroid/content/Context;Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;)V

    .line 56
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "injector"    # Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 59
    invoke-direct {p0}, Landroid/content/pm/ICrossProfileApps$Stub;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mContext:Landroid/content/Context;

    .line 61
    iput-object p2, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 62
    return-void
.end method

.method private getTargetUserProfilesUnchecked(Ljava/lang/String;I)Ljava/util/List;
    .registers 11
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingUserId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->clearCallingIdentity()J

    move-result-wide v0

    .line 125
    .local v0, "ident":J
    :try_start_6
    iget-object v2, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 126
    invoke-interface {v2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getUserManager()Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/os/UserManager;->getEnabledProfileIds(I)[I

    move-result-object v2

    .line 128
    .local v2, "enabledProfileIds":[I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .local v3, "targetProfiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    array-length v4, v2

    const/4 v5, 0x0

    :goto_17
    if-ge v5, v4, :cond_2f

    aget v6, v2, v5

    .line 130
    .local v6, "userId":I
    if-ne v6, p2, :cond_1e

    .line 131
    goto :goto_2c

    .line 133
    :cond_1e
    invoke-direct {p0, p1, v6}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->isPackageEnabled(Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_25

    .line 134
    goto :goto_2c

    .line 136
    :cond_25
    invoke-static {v6}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2c
    .catchall {:try_start_6 .. :try_end_2c} :catchall_36

    .line 129
    .end local v6    # "userId":I
    :goto_2c
    add-int/lit8 v5, v5, 0x1

    goto :goto_17

    .line 138
    :cond_2f
    nop

    .line 140
    iget-object v4, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v4, v0, v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->restoreCallingIdentity(J)V

    .line 138
    return-object v3

    .line 140
    .end local v2    # "enabledProfileIds":[I
    .end local v3    # "targetProfiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    :catchall_36
    move-exception v2

    iget-object v3, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v3, v0, v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private isPackageEnabled(Ljava/lang/String;I)Z
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 145
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUid()I

    move-result v0

    .line 146
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->clearCallingIdentity()J

    move-result-wide v1

    .line 148
    .local v1, "ident":J
    :try_start_c
    iget-object v3, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v3}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v3

    const/high16 v4, 0xc0000

    .line 149
    invoke-virtual {v3, p1, v4, v0, p2}, Landroid/content/pm/PackageManagerInternal;->getPackageInfo(Ljava/lang/String;III)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 154
    .local v3, "info":Landroid/content/pm/PackageInfo;
    if-eqz v3, :cond_22

    iget-object v4, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v4, v4, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_1e
    .catchall {:try_start_c .. :try_end_1e} :catchall_29

    if-eqz v4, :cond_22

    const/4 v4, 0x1

    goto :goto_23

    :cond_22
    const/4 v4, 0x0

    .line 156
    :goto_23
    iget-object v5, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v5, v1, v2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->restoreCallingIdentity(J)V

    .line 154
    return v4

    .line 156
    .end local v3    # "info":Landroid/content/pm/PackageInfo;
    :catchall_29
    move-exception v3

    iget-object v4, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v4, v1, v2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private verifyActivityCanHandleIntentAndExported(Landroid/content/Intent;Landroid/content/ComponentName;ILandroid/os/UserHandle;)V
    .registers 13
    .param p1, "launchIntent"    # Landroid/content/Intent;
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "callingUid"    # I
    .param p4, "user"    # Landroid/os/UserHandle;

    .line 166
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->clearCallingIdentity()J

    move-result-wide v0

    .line 168
    .local v0, "ident":J
    :try_start_6
    iget-object v2, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 169
    invoke-interface {v2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v2

    const/high16 v3, 0xc0000

    .line 173
    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 169
    invoke-virtual {v2, p1, v3, p3, v4}, Landroid/content/pm/PackageManagerInternal;->queryIntentActivities(Landroid/content/Intent;III)Ljava/util/List;

    move-result-object v2

    .line 174
    .local v2, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 175
    .local v3, "size":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1b
    if-ge v4, v3, :cond_4a

    .line 176
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 177
    .local v5, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v6, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_47

    iget-object v6, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 178
    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_47

    iget-boolean v6, v5, Landroid/content/pm/ActivityInfo;->exported:Z
    :try_end_3f
    .catchall {:try_start_6 .. :try_end_3f} :catchall_61

    if-eqz v6, :cond_47

    .line 186
    iget-object v6, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v6, v0, v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->restoreCallingIdentity(J)V

    .line 180
    return-void

    .line 175
    .end local v5    # "activityInfo":Landroid/content/pm/ActivityInfo;
    :cond_47
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    .line 183
    .end local v4    # "i":I
    :cond_4a
    :try_start_4a
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attempt to launch activity without  category Intent.CATEGORY_LAUNCHER or activity is not exported"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_61
    .catchall {:try_start_4a .. :try_end_61} :catchall_61

    .line 186
    .end local v2    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3    # "size":I
    :catchall_61
    move-exception v2

    iget-object v3, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v3, v0, v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private verifyCallingPackage(Ljava/lang/String;)V
    .registers 4
    .param p1, "callingPackage"    # Ljava/lang/String;

    .line 194
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 195
    return-void
.end method


# virtual methods
.method public getTargetUserProfiles(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    .line 66
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-direct {p0, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->verifyCallingPackage(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 71
    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUserId()I

    move-result v0

    .line 70
    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->getTargetUserProfilesUnchecked(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/UserHandle;)V
    .registers 15
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "component"    # Landroid/content/ComponentName;
    .param p4, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 80
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    invoke-direct {p0, p2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->verifyCallingPackage(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 87
    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUserId()I

    move-result v0

    .line 86
    invoke-direct {p0, p2, v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->getTargetUserProfilesUnchecked(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 88
    .local v0, "allowedTargetUsers":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    invoke-interface {v0, p4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_85

    .line 94
    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_67

    .line 100
    iget-object v1, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUid()I

    move-result v1

    .line 104
    .local v1, "callingUid":I
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 105
    .local v2, "launchIntent":Landroid/content/Intent;
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    const/high16 v3, 0x10200000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 110
    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    invoke-direct {p0, v2, p3, v1, p4}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->verifyActivityCanHandleIntentAndExported(Landroid/content/Intent;Landroid/content/ComponentName;ILandroid/os/UserHandle;)V

    .line 113
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    invoke-virtual {v2, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 115
    iget-object v3, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v3}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getActivityManagerInternal()Landroid/app/ActivityManagerInternal;

    move-result-object v4

    .line 117
    invoke-static {}, Landroid/app/ActivityOptions;->makeOpenCrossProfileAppsAnimation()Landroid/app/ActivityOptions;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v8

    .line 118
    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v9

    .line 115
    move-object v5, p1

    move-object v6, p2

    move-object v7, v2

    invoke-virtual/range {v4 .. v9}, Landroid/app/ActivityManagerInternal;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Landroid/os/Bundle;I)I

    .line 119
    return-void

    .line 95
    .end local v1    # "callingUid":I
    .end local v2    # "launchIntent":Landroid/content/Intent;
    :cond_67
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " attempts to start an activity in other package - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 89
    :cond_85
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " cannot access unrelated user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
