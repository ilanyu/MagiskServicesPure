.class final Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;
.super Landroid/app/admin/DevicePolicyManagerInternal;
.source "DevicePolicyManagerService.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicepolicy/DevicePolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "LocalService"
.end annotation


# instance fields
.field private mWidgetProviderListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/admin/DevicePolicyManagerInternal$OnCrossProfileWidgetProvidersChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 10309
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-direct {p0}, Landroid/app/admin/DevicePolicyManagerInternal;-><init>()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;ILjava/util/List;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/util/List;

    .line 10309
    invoke-direct {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->notifyCrossProfileProvidersChanged(ILjava/util/List;)V

    return-void
.end method

.method private notifyCrossProfileProvidersChanged(ILjava/util/List;)V
    .registers 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 10357
    .local p2, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 10358
    :try_start_7
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->mWidgetProviderListeners:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 10359
    .local v1, "listeners":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/DevicePolicyManagerInternal$OnCrossProfileWidgetProvidersChangeListener;>;"
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_23

    .line 10360
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 10361
    .local v0, "listenerCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_14
    if-ge v2, v0, :cond_22

    .line 10362
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManagerInternal$OnCrossProfileWidgetProvidersChangeListener;

    .line 10363
    .local v3, "listener":Landroid/app/admin/DevicePolicyManagerInternal$OnCrossProfileWidgetProvidersChangeListener;
    invoke-interface {v3, p1, p2}, Landroid/app/admin/DevicePolicyManagerInternal$OnCrossProfileWidgetProvidersChangeListener;->onCrossProfileWidgetProvidersChanged(ILjava/util/List;)V

    .line 10361
    .end local v3    # "listener":Landroid/app/admin/DevicePolicyManagerInternal$OnCrossProfileWidgetProvidersChangeListener;
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 10365
    .end local v2    # "i":I
    :cond_22
    return-void

    .line 10359
    .end local v0    # "listenerCount":I
    .end local v1    # "listeners":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/DevicePolicyManagerInternal$OnCrossProfileWidgetProvidersChangeListener;>;"
    :catchall_23
    move-exception v1

    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v1
.end method


# virtual methods
.method public addOnCrossProfileWidgetProvidersChangeListener(Landroid/app/admin/DevicePolicyManagerInternal$OnCrossProfileWidgetProvidersChangeListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/app/admin/DevicePolicyManagerInternal$OnCrossProfileWidgetProvidersChangeListener;

    .line 10338
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 10339
    :try_start_7
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->mWidgetProviderListeners:Ljava/util/List;

    if-nez v1, :cond_12

    .line 10340
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->mWidgetProviderListeners:Ljava/util/List;

    .line 10342
    :cond_12
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->mWidgetProviderListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 10343
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->mWidgetProviderListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10345
    :cond_1f
    monitor-exit v0

    .line 10346
    return-void

    .line 10345
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_7 .. :try_end_23} :catchall_21

    throw v1
.end method

.method public canUserHaveUntrustedCredentialReset(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 10453
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    # invokes: Lcom/android/server/devicepolicy/DevicePolicyManagerService;->canUserHaveUntrustedCredentialReset(I)Z
    invoke-static {v0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$2900(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)Z

    move-result v0

    return v0
.end method

.method public createShowAdminSupportIntent(IZ)Landroid/content/Intent;
    .registers 7
    .param p1, "userId"    # I
    .param p2, "useDefaultIfNoAdmin"    # Z

    .line 10372
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mOwners:Lcom/android/server/devicepolicy/Owners;

    invoke-virtual {v0, p1}, Lcom/android/server/devicepolicy/Owners;->getProfileOwnerComponent(I)Landroid/content/ComponentName;

    move-result-object v0

    .line 10373
    .local v0, "profileOwner":Landroid/content/ComponentName;
    if-eqz v0, :cond_11

    .line 10374
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 10375
    # invokes: Lcom/android/server/devicepolicy/DevicePolicyManagerService;->createShowAdminSupportIntent(Landroid/content/ComponentName;I)Landroid/content/Intent;
    invoke-static {v1, v0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$2700(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/content/ComponentName;I)Landroid/content/Intent;

    move-result-object v1

    .line 10374
    return-object v1

    .line 10378
    :cond_11
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mOwners:Lcom/android/server/devicepolicy/Owners;

    .line 10379
    invoke-virtual {v1}, Lcom/android/server/devicepolicy/Owners;->getDeviceOwnerUserIdAndComponent()Landroid/util/Pair;

    move-result-object v1

    .line 10380
    .local v1, "deviceOwner":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/ComponentName;>;"
    if-eqz v1, :cond_30

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_30

    .line 10381
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/content/ComponentName;

    .line 10382
    # invokes: Lcom/android/server/devicepolicy/DevicePolicyManagerService;->createShowAdminSupportIntent(Landroid/content/ComponentName;I)Landroid/content/Intent;
    invoke-static {v2, v3, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$2700(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/content/ComponentName;I)Landroid/content/Intent;

    move-result-object v2

    .line 10381
    return-object v2

    .line 10386
    :cond_30
    const/4 v2, 0x0

    if-eqz p2, :cond_3a

    .line 10387
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    # invokes: Lcom/android/server/devicepolicy/DevicePolicyManagerService;->createShowAdminSupportIntent(Landroid/content/ComponentName;I)Landroid/content/Intent;
    invoke-static {v3, v2, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$2700(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/content/ComponentName;I)Landroid/content/Intent;

    move-result-object v2

    return-object v2

    .line 10389
    :cond_3a
    return-object v2
.end method

.method public createUserRestrictionSupportIntent(ILjava/lang/String;)Landroid/content/Intent;
    .registers 12
    .param p1, "userId"    # I
    .param p2, "userRestriction"    # Ljava/lang/String;

    .line 10395
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->binderClearCallingIdentity()J

    move-result-wide v0

    .line 10397
    .local v0, "ident":J
    :try_start_8
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v2, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    .line 10398
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    .line 10397
    invoke-virtual {v2, p2, v3}, Landroid/os/UserManager;->getUserRestrictionSource(Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v2
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_72

    .line 10400
    .local v2, "source":I
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v3, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v3, v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->binderRestoreCallingIdentity(J)V

    .line 10401
    nop

    .line 10400
    nop

    .line 10402
    and-int/lit8 v3, v2, 0x1

    const/4 v4, 0x0

    if-eqz v3, :cond_23

    .line 10408
    return-object v4

    .line 10410
    :cond_23
    and-int/lit8 v3, v2, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_2b

    move v3, v6

    goto :goto_2c

    :cond_2b
    move v3, v5

    .line 10411
    .local v3, "enforcedByDo":Z
    :goto_2c
    and-int/lit8 v7, v2, 0x4

    if-eqz v7, :cond_32

    move v5, v6

    nop

    .line 10412
    .local v5, "enforcedByPo":Z
    :cond_32
    if-eqz v3, :cond_3d

    if-eqz v5, :cond_3d

    .line 10415
    iget-object v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    # invokes: Lcom/android/server/devicepolicy/DevicePolicyManagerService;->createShowAdminSupportIntent(Landroid/content/ComponentName;I)Landroid/content/Intent;
    invoke-static {v6, v4, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$2700(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/content/ComponentName;I)Landroid/content/Intent;

    move-result-object v4

    return-object v4

    .line 10416
    :cond_3d
    if-eqz v5, :cond_51

    .line 10417
    iget-object v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v6, v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mOwners:Lcom/android/server/devicepolicy/Owners;

    invoke-virtual {v6, p1}, Lcom/android/server/devicepolicy/Owners;->getProfileOwnerComponent(I)Landroid/content/ComponentName;

    move-result-object v6

    .line 10418
    .local v6, "profileOwner":Landroid/content/ComponentName;
    if-eqz v6, :cond_50

    .line 10419
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 10420
    # invokes: Lcom/android/server/devicepolicy/DevicePolicyManagerService;->createShowAdminSupportIntent(Landroid/content/ComponentName;I)Landroid/content/Intent;
    invoke-static {v4, v6, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$2700(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/content/ComponentName;I)Landroid/content/Intent;

    move-result-object v4

    .line 10419
    return-object v4

    .line 10424
    :cond_50
    return-object v4

    .line 10425
    .end local v6    # "profileOwner":Landroid/content/ComponentName;
    :cond_51
    if-eqz v3, :cond_71

    .line 10426
    iget-object v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v6, v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mOwners:Lcom/android/server/devicepolicy/Owners;

    .line 10427
    invoke-virtual {v6}, Lcom/android/server/devicepolicy/Owners;->getDeviceOwnerUserIdAndComponent()Landroid/util/Pair;

    move-result-object v6

    .line 10428
    .local v6, "deviceOwner":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/ComponentName;>;"
    if-eqz v6, :cond_70

    .line 10429
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v7, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Landroid/content/ComponentName;

    iget-object v8, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    .line 10430
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    # invokes: Lcom/android/server/devicepolicy/DevicePolicyManagerService;->createShowAdminSupportIntent(Landroid/content/ComponentName;I)Landroid/content/Intent;
    invoke-static {v4, v7, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$2700(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/content/ComponentName;I)Landroid/content/Intent;

    move-result-object v4

    .line 10429
    return-object v4

    .line 10434
    :cond_70
    return-object v4

    .line 10436
    .end local v6    # "deviceOwner":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/ComponentName;>;"
    :cond_71
    return-object v4

    .line 10400
    .end local v2    # "source":I
    .end local v3    # "enforcedByDo":Z
    .end local v5    # "enforcedByPo":Z
    :catchall_72
    move-exception v2

    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v3, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v3, v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->binderRestoreCallingIdentity(J)V

    throw v2
.end method

.method public getCrossProfileWidgetProviders(I)Ljava/util/List;
    .registers 7
    .param p1, "profileId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 10314
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 10315
    :try_start_7
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mOwners:Lcom/android/server/devicepolicy/Owners;

    if-nez v1, :cond_13

    .line 10316
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 10318
    :cond_13
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mOwners:Lcom/android/server/devicepolicy/Owners;

    invoke-virtual {v1, p1}, Lcom/android/server/devicepolicy/Owners;->getProfileOwnerComponent(I)Landroid/content/ComponentName;

    move-result-object v1

    .line 10319
    .local v1, "ownerComponent":Landroid/content/ComponentName;
    if-nez v1, :cond_23

    .line 10320
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 10323
    :cond_23
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v2

    .line 10324
    .local v2, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 10326
    .local v3, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v3, :cond_44

    iget-object v4, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    if-eqz v4, :cond_44

    iget-object v4, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    .line 10327
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_40

    goto :goto_44

    .line 10331
    :cond_40
    iget-object v4, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    monitor-exit v0

    return-object v4

    .line 10328
    :cond_44
    :goto_44
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    monitor-exit v0

    return-object v4

    .line 10332
    .end local v1    # "ownerComponent":Landroid/content/ComponentName;
    .end local v2    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v3    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_4a
    move-exception v1

    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_7 .. :try_end_4c} :catchall_4a

    throw v1
.end method

.method protected getDevicePolicyCache()Landroid/app/admin/DevicePolicyCache;
    .registers 2

    .line 10498
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    # getter for: Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mPolicyCache:Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;
    invoke-static {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$3000(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;

    move-result-object v0

    return-object v0
.end method

.method public getPrintingDisabledReasonForUser(I)Ljava/lang/CharSequence;
    .registers 13
    .param p1, "userId"    # I

    .line 10458
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 10459
    :try_start_7
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v1

    .line 10460
    .local v1, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v2, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v3, "no_printing"

    .line 10461
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    .line 10460
    invoke-virtual {v2, v3, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_29

    .line 10462
    const-string v2, "DevicePolicyManager"

    const-string/jumbo v4, "printing is enabled"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10463
    monitor-exit v0

    return-object v3

    .line 10465
    :cond_29
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v2, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mOwners:Lcom/android/server/devicepolicy/Owners;

    invoke-virtual {v2, p1}, Lcom/android/server/devicepolicy/Owners;->getProfileOwnerPackage(I)Ljava/lang/String;

    move-result-object v2

    .line 10466
    .local v2, "ownerPackage":Ljava/lang/String;
    if-nez v2, :cond_3c

    .line 10467
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v4, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mOwners:Lcom/android/server/devicepolicy/Owners;

    invoke-virtual {v4}, Lcom/android/server/devicepolicy/Owners;->getDeviceOwnerPackageName()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 10469
    :cond_3c
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v4, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4
    :try_end_44
    .catchall {:try_start_7 .. :try_end_44} :catchall_97

    .line 10472
    .local v4, "pm":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    :try_start_45
    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6
    :try_end_49
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_45 .. :try_end_49} :catch_8d
    .catchall {:try_start_45 .. :try_end_49} :catchall_97

    .line 10476
    .local v6, "packageInfo":Landroid/content/pm/PackageInfo;
    nop

    .line 10475
    nop

    .line 10477
    if-nez v6, :cond_57

    .line 10478
    :try_start_4d
    const-string v5, "DevicePolicyManager"

    const-string/jumbo v7, "packageInfo is inexplicably null"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10479
    monitor-exit v0

    return-object v3

    .line 10481
    :cond_57
    iget-object v7, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 10482
    .local v7, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v7, :cond_64

    .line 10483
    const-string v5, "DevicePolicyManager"

    const-string v8, "appInfo is inexplicably null"

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10484
    monitor-exit v0

    return-object v3

    .line 10486
    :cond_64
    invoke-virtual {v4, v7}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 10487
    .local v8, "appLabel":Ljava/lang/CharSequence;
    if-nez v8, :cond_73

    .line 10488
    const-string v5, "DevicePolicyManager"

    const-string v9, "appLabel is inexplicably null"

    invoke-static {v5, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10489
    monitor-exit v0

    return-object v3

    .line 10491
    :cond_73
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v3

    .line 10492
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v9, 0x10405b2

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v8, v10, v5

    invoke-virtual {v3, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    monitor-exit v0

    .line 10491
    return-object v3

    .line 10473
    .end local v6    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v7    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v8    # "appLabel":Ljava/lang/CharSequence;
    :catch_8d
    move-exception v5

    .line 10474
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "DevicePolicyManager"

    const-string v7, "getPackageInfo error"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10475
    monitor-exit v0

    return-object v3

    .line 10493
    .end local v1    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v2    # "ownerPackage":Ljava/lang/String;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    .end local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_97
    move-exception v1

    monitor-exit v0
    :try_end_99
    .catchall {:try_start_4d .. :try_end_99} :catchall_97

    throw v1
.end method

.method public isActiveAdminWithPolicy(II)Z
    .registers 6
    .param p1, "uid"    # I
    .param p2, "reqPolicy"    # I

    .line 10350
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 10351
    :try_start_7
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    const/4 v2, 0x0

    # invokes: Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminWithPolicyForUidLocked(Landroid/content/ComponentName;II)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    invoke-static {v1, v2, p2, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$2600(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/content/ComponentName;II)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    monitor-exit v0

    return v1

    .line 10352
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public isUserAffiliatedWithDevice(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 10441
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    # invokes: Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isUserAffiliatedWithDeviceLocked(I)Z
    invoke-static {v0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$1100(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)Z

    move-result v0

    return v0
.end method

.method public reportSeparateProfileChallengeChanged(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 10446
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 10447
    :try_start_7
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    # invokes: Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updateMaximumTimeToLockLocked(I)V
    invoke-static {v1, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$2800(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)V

    .line 10448
    monitor-exit v0

    .line 10449
    return-void

    .line 10448
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v1
.end method
