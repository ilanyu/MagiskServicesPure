.class Lcom/android/server/restrictions/RestrictionsManagerService$RestrictionsManagerImpl;
.super Landroid/content/IRestrictionsManager$Stub;
.source "RestrictionsManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/restrictions/RestrictionsManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RestrictionsManagerImpl"
.end annotation


# instance fields
.field final mContext:Landroid/content/Context;

.field private final mDpm:Landroid/app/admin/IDevicePolicyManager;

.field private final mUm:Landroid/os/IUserManager;

.field final synthetic this$0:Lcom/android/server/restrictions/RestrictionsManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/restrictions/RestrictionsManagerService;Landroid/content/Context;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/restrictions/RestrictionsManagerService;
    .param p2, "context"    # Landroid/content/Context;

    .line 64
    iput-object p1, p0, Lcom/android/server/restrictions/RestrictionsManagerService$RestrictionsManagerImpl;->this$0:Lcom/android/server/restrictions/RestrictionsManagerService;

    invoke-direct {p0}, Landroid/content/IRestrictionsManager$Stub;-><init>()V

    .line 65
    iput-object p2, p0, Lcom/android/server/restrictions/RestrictionsManagerService$RestrictionsManagerImpl;->mContext:Landroid/content/Context;

    .line 66
    const-string/jumbo v0, "user"

    # invokes: Lcom/android/server/restrictions/RestrictionsManagerService;->getBinderService(Ljava/lang/String;)Landroid/os/IBinder;
    invoke-static {p1, v0}, Lcom/android/server/restrictions/RestrictionsManagerService;->access$000(Lcom/android/server/restrictions/RestrictionsManagerService;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Landroid/os/IUserManager;

    iput-object v0, p0, Lcom/android/server/restrictions/RestrictionsManagerService$RestrictionsManagerImpl;->mUm:Landroid/os/IUserManager;

    .line 67
    const-string v0, "device_policy"

    # invokes: Lcom/android/server/restrictions/RestrictionsManagerService;->getBinderService(Ljava/lang/String;)Landroid/os/IBinder;
    invoke-static {p1, v0}, Lcom/android/server/restrictions/RestrictionsManagerService;->access$100(Lcom/android/server/restrictions/RestrictionsManagerService;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Landroid/app/admin/IDevicePolicyManager;

    iput-object v0, p0, Lcom/android/server/restrictions/RestrictionsManagerService$RestrictionsManagerImpl;->mDpm:Landroid/app/admin/IDevicePolicyManager;

    .line 68
    return-void
.end method

.method private enforceCallerMatchesPackage(ILjava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "callingUid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;

    .line 190
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, "pkgs":[Ljava/lang/String;
    if-eqz v0, :cond_26

    .line 192
    invoke-static {v0, p2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .end local v0    # "pkgs":[Ljava/lang/String;
    goto :goto_26

    .line 193
    .restart local v0    # "pkgs":[Ljava/lang/String;
    :cond_11
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_26} :catch_27

    .line 198
    .end local v0    # "pkgs":[Ljava/lang/String;
    :cond_26
    :goto_26
    goto :goto_28

    .line 196
    :catch_27
    move-exception v0

    .line 199
    :goto_28
    return-void
.end method


# virtual methods
.method public createLocalApprovalIntent()Landroid/content/Intent;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 131
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 132
    .local v0, "userHandle":I
    iget-object v1, p0, Lcom/android/server/restrictions/RestrictionsManagerService$RestrictionsManagerImpl;->mDpm:Landroid/app/admin/IDevicePolicyManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_5e

    .line 133
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 135
    .local v3, "ident":J
    :try_start_d
    iget-object v1, p0, Lcom/android/server/restrictions/RestrictionsManagerService$RestrictionsManagerImpl;->mDpm:Landroid/app/admin/IDevicePolicyManager;

    .line 136
    invoke-interface {v1, v0}, Landroid/app/admin/IDevicePolicyManager;->getRestrictionsProvider(I)Landroid/content/ComponentName;

    move-result-object v1

    .line 138
    .local v1, "restrictionsProvider":Landroid/content/ComponentName;
    if-eqz v1, :cond_51

    .line 142
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 143
    .local v5, "providerPackageName":Ljava/lang/String;
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.content.action.REQUEST_LOCAL_APPROVAL"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 144
    .local v6, "intent":Landroid/content/Intent;
    invoke-virtual {v6, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v7, v6, v2, v8, v0}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v7

    .line 147
    .local v7, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz v7, :cond_4d

    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v8, :cond_4d

    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v8, v8, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v8, :cond_4d

    .line 148
    new-instance v2, Landroid/content/ComponentName;

    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_48
    .catchall {:try_start_d .. :try_end_48} :catchall_59

    .line 150
    nop

    .line 153
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 150
    return-object v6

    .line 153
    .end local v1    # "restrictionsProvider":Landroid/content/ComponentName;
    .end local v5    # "providerPackageName":Ljava/lang/String;
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v7    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_4d
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 154
    goto :goto_5e

    .line 139
    .restart local v1    # "restrictionsProvider":Landroid/content/ComponentName;
    :cond_51
    :try_start_51
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v5, "Cannot request permission without a restrictions provider registered"

    invoke-direct {v2, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_59
    .catchall {:try_start_51 .. :try_end_59} :catchall_59

    .line 153
    .end local v1    # "restrictionsProvider":Landroid/content/ComponentName;
    :catchall_59
    move-exception v1

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 156
    .end local v3    # "ident":J
    :cond_5e
    :goto_5e
    return-object v2
.end method

.method public getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/android/server/restrictions/RestrictionsManagerService$RestrictionsManagerImpl;->mUm:Landroid/os/IUserManager;

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public hasRestrictionsProvider()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 77
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 78
    .local v0, "userHandle":I
    iget-object v1, p0, Lcom/android/server/restrictions/RestrictionsManagerService$RestrictionsManagerImpl;->mDpm:Landroid/app/admin/IDevicePolicyManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_20

    .line 79
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 81
    .local v3, "ident":J
    :try_start_d
    iget-object v1, p0, Lcom/android/server/restrictions/RestrictionsManagerService$RestrictionsManagerImpl;->mDpm:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, v0}, Landroid/app/admin/IDevicePolicyManager;->getRestrictionsProvider(I)Landroid/content/ComponentName;

    move-result-object v1
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_1b

    if-eqz v1, :cond_17

    const/4 v2, 0x1

    nop

    .line 83
    :cond_17
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 81
    return v2

    .line 83
    :catchall_1b
    move-exception v1

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 86
    .end local v3    # "ident":J
    :cond_20
    return v2
.end method

.method public notifyPermissionResponse(Ljava/lang/String;Landroid/os/PersistableBundle;)V
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 163
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 164
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 165
    .local v1, "userHandle":I
    iget-object v2, p0, Lcom/android/server/restrictions/RestrictionsManagerService$RestrictionsManagerImpl;->mDpm:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v2, :cond_4b

    .line 166
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 168
    .local v2, "ident":J
    :try_start_10
    iget-object v4, p0, Lcom/android/server/restrictions/RestrictionsManagerService$RestrictionsManagerImpl;->mDpm:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v4, v1}, Landroid/app/admin/IDevicePolicyManager;->getRestrictionsProvider(I)Landroid/content/ComponentName;

    move-result-object v4

    .line 169
    .local v4, "permProvider":Landroid/content/ComponentName;
    if-eqz v4, :cond_3e

    .line 172
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Restrictions provider does not match caller "

    invoke-direct {p0, v0, v5, v6}, Lcom/android/server/restrictions/RestrictionsManagerService$RestrictionsManagerImpl;->enforceCallerMatchesPackage(ILjava/lang/String;Ljava/lang/String;)V

    .line 176
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.content.action.PERMISSION_RESPONSE_RECEIVED"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 178
    .local v5, "responseIntent":Landroid/content/Intent;
    invoke-virtual {v5, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    const-string v6, "android.content.extra.RESPONSE_BUNDLE"

    invoke-virtual {v5, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 180
    iget-object v6, p0, Lcom/android/server/restrictions/RestrictionsManagerService$RestrictionsManagerImpl;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v6, v5, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_3a
    .catchall {:try_start_10 .. :try_end_3a} :catchall_46

    .line 182
    .end local v4    # "permProvider":Landroid/content/ComponentName;
    .end local v5    # "responseIntent":Landroid/content/Intent;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 183
    goto :goto_4b

    .line 170
    .restart local v4    # "permProvider":Landroid/content/ComponentName;
    :cond_3e
    :try_start_3e
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "No restrictions provider registered for user"

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_46
    .catchall {:try_start_3e .. :try_end_46} :catchall_46

    .line 182
    .end local v4    # "permProvider":Landroid/content/ComponentName;
    :catchall_46
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 185
    .end local v2    # "ident":J
    :cond_4b
    :goto_4b
    return-void
.end method

.method public requestPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)V
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "requestType"    # Ljava/lang/String;
    .param p3, "requestId"    # Ljava/lang/String;
    .param p4, "requestData"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 97
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 98
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 99
    .local v1, "userHandle":I
    iget-object v2, p0, Lcom/android/server/restrictions/RestrictionsManagerService$RestrictionsManagerImpl;->mDpm:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v2, :cond_56

    .line 100
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 102
    .local v2, "ident":J
    :try_start_10
    iget-object v4, p0, Lcom/android/server/restrictions/RestrictionsManagerService$RestrictionsManagerImpl;->mDpm:Landroid/app/admin/IDevicePolicyManager;

    .line 103
    invoke-interface {v4, v1}, Landroid/app/admin/IDevicePolicyManager;->getRestrictionsProvider(I)Landroid/content/ComponentName;

    move-result-object v4

    .line 105
    .local v4, "restrictionsProvider":Landroid/content/ComponentName;
    if-eqz v4, :cond_49

    .line 110
    const-string v5, "Package name does not match caller "

    invoke-direct {p0, v0, p1, v5}, Lcom/android/server/restrictions/RestrictionsManagerService$RestrictionsManagerImpl;->enforceCallerMatchesPackage(ILjava/lang/String;Ljava/lang/String;)V

    .line 113
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.content.action.REQUEST_PERMISSION"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 114
    .local v5, "intent":Landroid/content/Intent;
    invoke-virtual {v5, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 115
    const-string v6, "android.content.extra.PACKAGE_NAME"

    invoke-virtual {v5, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    const-string v6, "android.content.extra.REQUEST_TYPE"

    invoke-virtual {v5, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    const-string v6, "android.content.extra.REQUEST_ID"

    invoke-virtual {v5, v6, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    const-string v6, "android.content.extra.REQUEST_BUNDLE"

    invoke-virtual {v5, v6, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 119
    iget-object v6, p0, Lcom/android/server/restrictions/RestrictionsManagerService$RestrictionsManagerImpl;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v6, v5, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_45
    .catchall {:try_start_10 .. :try_end_45} :catchall_51

    .line 121
    .end local v4    # "restrictionsProvider":Landroid/content/ComponentName;
    .end local v5    # "intent":Landroid/content/Intent;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 122
    goto :goto_56

    .line 106
    .restart local v4    # "restrictionsProvider":Landroid/content/ComponentName;
    :cond_49
    :try_start_49
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Cannot request permission without a restrictions provider registered"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_51
    .catchall {:try_start_49 .. :try_end_51} :catchall_51

    .line 121
    .end local v4    # "restrictionsProvider":Landroid/content/ComponentName;
    :catchall_51
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 124
    .end local v2    # "ident":J
    :cond_56
    :goto_56
    return-void
.end method
