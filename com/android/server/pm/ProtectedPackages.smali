.class public Lcom/android/server/pm/ProtectedPackages;
.super Ljava/lang/Object;
.source "ProtectedPackages.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDeviceOwnerPackage:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mDeviceOwnerUserId:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mDeviceProvisioningPackage:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mProfileOwnerPackages:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/android/server/pm/ProtectedPackages;->mContext:Landroid/content/Context;

    .line 56
    iget-object v0, p0, Lcom/android/server/pm/ProtectedPackages;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040144

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/ProtectedPackages;->mDeviceProvisioningPackage:Ljava/lang/String;

    .line 58
    return-void
.end method

.method private declared-synchronized hasDeviceOwnerOrProfileOwner(ILjava/lang/String;)Z
    .registers 6
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    monitor-enter p0

    .line 74
    const/4 v0, 0x0

    if-nez p2, :cond_6

    .line 75
    monitor-exit p0

    return v0

    .line 77
    :cond_6
    :try_start_6
    iget-object v1, p0, Lcom/android/server/pm/ProtectedPackages;->mDeviceOwnerPackage:Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v1, :cond_19

    .line 78
    iget v1, p0, Lcom/android/server/pm/ProtectedPackages;->mDeviceOwnerUserId:I

    if-ne v1, p1, :cond_19

    iget-object v1, p0, Lcom/android/server/pm/ProtectedPackages;->mDeviceOwnerPackage:Ljava/lang/String;

    .line 79
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_2d

    if-eqz v1, :cond_19

    .line 80
    monitor-exit p0

    return v2

    .line 83
    :cond_19
    :try_start_19
    iget-object v1, p0, Lcom/android/server/pm/ProtectedPackages;->mProfileOwnerPackages:Landroid/util/SparseArray;

    if-eqz v1, :cond_2b

    .line 84
    iget-object v1, p0, Lcom/android/server/pm/ProtectedPackages;->mProfileOwnerPackages:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_27
    .catchall {:try_start_19 .. :try_end_27} :catchall_2d

    if-eqz v1, :cond_2b

    .line 85
    monitor-exit p0

    return v2

    .line 88
    :cond_2b
    monitor-exit p0

    return v0

    .line 73
    .end local p1    # "userId":I
    .end local p2    # "packageName":Ljava/lang/String;
    :catchall_2d
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/pm/ProtectedPackages;
    throw p1
.end method

.method private declared-synchronized isProtectedPackage(Ljava/lang/String;)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    monitor-enter p0

    .line 106
    :try_start_1
    iget-object v0, p0, Lcom/android/server/pm/ProtectedPackages;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/miui/enterprise/ApplicationHelper;->shouldKeeAlive(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_27

    .line 107
    const-string v0, "Enterprise"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is protected"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_35

    .line 108
    monitor-exit p0

    return v1

    .line 111
    :cond_27
    if-eqz p1, :cond_32

    :try_start_29
    iget-object v0, p0, Lcom/android/server/pm/ProtectedPackages;->mDeviceProvisioningPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_2f
    .catchall {:try_start_29 .. :try_end_2f} :catchall_35

    if-eqz v0, :cond_32

    goto :goto_33

    :cond_32
    const/4 v1, 0x0

    :goto_33
    monitor-exit p0

    return v1

    .line 105
    .end local p1    # "packageName":Ljava/lang/String;
    :catchall_35
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/pm/ProtectedPackages;
    throw p1
.end method


# virtual methods
.method public declared-synchronized getDeviceOwnerOrProfileOwnerPackage(I)Ljava/lang/String;
    .registers 3
    .param p1, "userId"    # I

    monitor-enter p0

    .line 92
    :try_start_1
    iget v0, p0, Lcom/android/server/pm/ProtectedPackages;->mDeviceOwnerUserId:I

    if-ne v0, p1, :cond_9

    .line 93
    iget-object v0, p0, Lcom/android/server/pm/ProtectedPackages;->mDeviceOwnerPackage:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_13

    monitor-exit p0

    return-object v0

    .line 95
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/android/server/pm/ProtectedPackages;->mProfileOwnerPackages:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-object v0

    .line 91
    .end local p1    # "userId":I
    :catchall_13
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/pm/ProtectedPackages;
    throw p1
.end method

.method public isPackageDataProtected(ILjava/lang/String;)Z
    .registers 4
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 130
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ProtectedPackages;->hasDeviceOwnerOrProfileOwner(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 131
    invoke-direct {p0, p2}, Lcom/android/server/pm/ProtectedPackages;->isProtectedPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    .line 130
    :goto_10
    return v0
.end method

.method public isPackageStateProtected(ILjava/lang/String;)Z
    .registers 4
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 121
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ProtectedPackages;->hasDeviceOwnerOrProfileOwner(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 122
    invoke-direct {p0, p2}, Lcom/android/server/pm/ProtectedPackages;->isProtectedPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    .line 121
    :goto_10
    return v0
.end method

.method public declared-synchronized setDeviceAndProfileOwnerPackages(ILjava/lang/String;Landroid/util/SparseArray;)V
    .registers 6
    .param p1, "deviceOwnerUserId"    # I
    .param p2, "deviceOwnerPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .local p3, "profileOwnerPackages":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    monitor-enter p0

    .line 66
    :try_start_1
    iput p1, p0, Lcom/android/server/pm/ProtectedPackages;->mDeviceOwnerUserId:I

    .line 67
    nop

    .line 68
    const/16 v0, -0x2710

    const/4 v1, 0x0

    if-ne p1, v0, :cond_b

    move-object v0, v1

    goto :goto_c

    :cond_b
    move-object v0, p2

    :goto_c
    iput-object v0, p0, Lcom/android/server/pm/ProtectedPackages;->mDeviceOwnerPackage:Ljava/lang/String;

    .line 69
    if-nez p3, :cond_11

    goto :goto_15

    .line 70
    :cond_11
    invoke-virtual {p3}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v1

    :goto_15
    iput-object v1, p0, Lcom/android/server/pm/ProtectedPackages;->mProfileOwnerPackages:Landroid/util/SparseArray;
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    .line 71
    monitor-exit p0

    return-void

    .line 65
    .end local p1    # "deviceOwnerUserId":I
    .end local p2    # "deviceOwnerPackage":Ljava/lang/String;
    .end local p3    # "profileOwnerPackages":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :catchall_19
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/pm/ProtectedPackages;
    throw p1
.end method
