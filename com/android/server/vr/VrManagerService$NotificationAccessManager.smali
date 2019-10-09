.class final Lcom/android/server/vr/VrManagerService$NotificationAccessManager;
.super Ljava/lang/Object;
.source "VrManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vr/VrManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NotificationAccessManager"
.end annotation


# instance fields
.field private final mAllowedPackages:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mNotificationAccessPackageToUserId:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/vr/VrManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/vr/VrManagerService;)V
    .registers 2

    .line 448
    iput-object p1, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 449
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->mAllowedPackages:Landroid/util/SparseArray;

    .line 450
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->mNotificationAccessPackageToUserId:Landroid/util/ArrayMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/vr/VrManagerService;Lcom/android/server/vr/VrManagerService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/vr/VrManagerService;
    .param p2, "x1"    # Lcom/android/server/vr/VrManagerService$1;

    .line 448
    invoke-direct {p0, p1}, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;-><init>(Lcom/android/server/vr/VrManagerService;)V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Collection;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 454
    .local p1, "packageNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 456
    .local v0, "currentUserId":I
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->mAllowedPackages:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 457
    .local v1, "allowed":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v1, :cond_14

    .line 458
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    move-object v1, v2

    .line 462
    :cond_14
    iget-object v2, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->mNotificationAccessPackageToUserId:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 463
    .local v2, "listenerCount":I
    add-int/lit8 v3, v2, -0x1

    .local v3, "i":I
    :goto_1c
    if-ltz v3, :cond_4b

    .line 464
    iget-object v4, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->mNotificationAccessPackageToUserId:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 465
    .local v4, "grantUserId":I
    if-eq v4, v0, :cond_48

    .line 466
    iget-object v5, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->mNotificationAccessPackageToUserId:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 467
    .local v5, "packageName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->this$0:Lcom/android/server/vr/VrManagerService;

    # invokes: Lcom/android/server/vr/VrManagerService;->revokeNotificationListenerAccess(Ljava/lang/String;I)V
    invoke-static {v6, v5, v4}, Lcom/android/server/vr/VrManagerService;->access$1100(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;I)V

    .line 468
    iget-object v6, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->this$0:Lcom/android/server/vr/VrManagerService;

    # invokes: Lcom/android/server/vr/VrManagerService;->revokeNotificationPolicyAccess(Ljava/lang/String;)V
    invoke-static {v6, v5}, Lcom/android/server/vr/VrManagerService;->access$1200(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;)V

    .line 469
    iget-object v6, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->this$0:Lcom/android/server/vr/VrManagerService;

    # invokes: Lcom/android/server/vr/VrManagerService;->revokeCoarseLocationPermissionIfNeeded(Ljava/lang/String;I)V
    invoke-static {v6, v5, v4}, Lcom/android/server/vr/VrManagerService;->access$1300(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;I)V

    .line 470
    iget-object v6, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->mNotificationAccessPackageToUserId:Landroid/util/ArrayMap;

    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 463
    .end local v4    # "grantUserId":I
    .end local v5    # "packageName":Ljava/lang/String;
    :cond_48
    add-int/lit8 v3, v3, -0x1

    goto :goto_1c

    .line 474
    .end local v3    # "i":I
    :cond_4b
    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_76

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 475
    .local v4, "pkg":Ljava/lang/String;
    invoke-interface {p1, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_75

    .line 476
    iget-object v5, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->this$0:Lcom/android/server/vr/VrManagerService;

    # invokes: Lcom/android/server/vr/VrManagerService;->revokeNotificationListenerAccess(Ljava/lang/String;I)V
    invoke-static {v5, v4, v0}, Lcom/android/server/vr/VrManagerService;->access$1100(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;I)V

    .line 477
    iget-object v5, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->this$0:Lcom/android/server/vr/VrManagerService;

    # invokes: Lcom/android/server/vr/VrManagerService;->revokeNotificationPolicyAccess(Ljava/lang/String;)V
    invoke-static {v5, v4}, Lcom/android/server/vr/VrManagerService;->access$1200(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;)V

    .line 478
    iget-object v5, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->this$0:Lcom/android/server/vr/VrManagerService;

    # invokes: Lcom/android/server/vr/VrManagerService;->revokeCoarseLocationPermissionIfNeeded(Ljava/lang/String;I)V
    invoke-static {v5, v4, v0}, Lcom/android/server/vr/VrManagerService;->access$1300(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;I)V

    .line 479
    iget-object v5, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->mNotificationAccessPackageToUserId:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    .end local v4    # "pkg":Ljava/lang/String;
    :cond_75
    goto :goto_4f

    .line 482
    :cond_76
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 483
    .restart local v4    # "pkg":Ljava/lang/String;
    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a4

    .line 484
    iget-object v5, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->this$0:Lcom/android/server/vr/VrManagerService;

    # invokes: Lcom/android/server/vr/VrManagerService;->grantNotificationPolicyAccess(Ljava/lang/String;)V
    invoke-static {v5, v4}, Lcom/android/server/vr/VrManagerService;->access$1400(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;)V

    .line 485
    iget-object v5, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->this$0:Lcom/android/server/vr/VrManagerService;

    # invokes: Lcom/android/server/vr/VrManagerService;->grantNotificationListenerAccess(Ljava/lang/String;I)V
    invoke-static {v5, v4, v0}, Lcom/android/server/vr/VrManagerService;->access$1500(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;I)V

    .line 486
    iget-object v5, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->this$0:Lcom/android/server/vr/VrManagerService;

    # invokes: Lcom/android/server/vr/VrManagerService;->grantCoarseLocationPermissionIfNeeded(Ljava/lang/String;I)V
    invoke-static {v5, v4, v0}, Lcom/android/server/vr/VrManagerService;->access$1600(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;I)V

    .line 487
    iget-object v5, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->mNotificationAccessPackageToUserId:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    .end local v4    # "pkg":Ljava/lang/String;
    :cond_a4
    goto :goto_7a

    .line 491
    :cond_a5
    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 492
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 493
    iget-object v3, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->mAllowedPackages:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 494
    return-void
.end method
