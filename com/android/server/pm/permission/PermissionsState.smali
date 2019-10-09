.class public final Lcom/android/server/pm/permission/PermissionsState;
.super Ljava/lang/Object;
.source "PermissionsState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/permission/PermissionsState$PermissionState;,
        Lcom/android/server/pm/permission/PermissionsState$PermissionData;
    }
.end annotation


# static fields
.field private static final NO_GIDS:[I

.field public static final PERMISSION_OPERATION_FAILURE:I = -0x1

.field public static final PERMISSION_OPERATION_SUCCESS:I = 0x0

.field public static final PERMISSION_OPERATION_SUCCESS_GIDS_CHANGED:I = 0x1


# instance fields
.field private mGlobalGids:[I

.field private mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

.field private mPermissions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/permission/PermissionsState$PermissionData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 63
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/pm/permission/PermissionsState;->NO_GIDS:[I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    sget-object v0, Lcom/android/server/pm/permission/PermissionsState;->NO_GIDS:[I

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mGlobalGids:[I

    .line 73
    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/permission/PermissionsState;)V
    .registers 3
    .param p1, "prototype"    # Lcom/android/server/pm/permission/PermissionsState;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    sget-object v0, Lcom/android/server/pm/permission/PermissionsState;->NO_GIDS:[I

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mGlobalGids:[I

    .line 76
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/PermissionsState;->copyFrom(Lcom/android/server/pm/permission/PermissionsState;)V

    .line 77
    return-void
.end method

.method private static appendInts([I[I)[I
    .registers 5
    .param p0, "current"    # [I
    .param p1, "added"    # [I

    .line 614
    if-eqz p0, :cond_11

    if-eqz p1, :cond_11

    .line 615
    array-length v0, p1

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_11

    aget v2, p1, v1

    .line 616
    .local v2, "guid":I
    invoke-static {p0, v2}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object p0

    .line 615
    .end local v2    # "guid":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 619
    :cond_11
    return-object p0
.end method

.method private static enforceValidUserId(I)V
    .registers 4
    .param p0, "userId"    # I

    .line 623
    const/4 v0, -0x1

    if-eq p0, v0, :cond_1d

    if-ltz p0, :cond_6

    goto :goto_1d

    .line 624
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid userId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 626
    :cond_1d
    :goto_1d
    return-void
.end method

.method private ensureNoPermissionData(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 642
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    if-nez v0, :cond_5

    .line 643
    return-void

    .line 645
    :cond_5
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 647
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    .line 649
    :cond_15
    return-void
.end method

.method private ensurePermissionData(Lcom/android/server/pm/permission/BasePermission;)Lcom/android/server/pm/permission/PermissionsState$PermissionData;
    .registers 5
    .param p1, "permission"    # Lcom/android/server/pm/permission/BasePermission;

    .line 629
    invoke-virtual {p1}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v0

    .line 630
    .local v0, "permName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    if-nez v1, :cond_f

    .line 631
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    .line 633
    :cond_f
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/permission/PermissionsState$PermissionData;

    .line 634
    .local v1, "permissionData":Lcom/android/server/pm/permission/PermissionsState$PermissionData;
    if-nez v1, :cond_24

    .line 635
    new-instance v2, Lcom/android/server/pm/permission/PermissionsState$PermissionData;

    invoke-direct {v2, p1}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;-><init>(Lcom/android/server/pm/permission/BasePermission;)V

    move-object v1, v2

    .line 636
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    :cond_24
    return-object v1
.end method

.method private getPermissionState(Ljava/lang/String;I)Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 527
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 528
    return-object v1

    .line 530
    :cond_6
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;

    .line 531
    .local v0, "permissionData":Lcom/android/server/pm/permission/PermissionsState$PermissionData;
    if-nez v0, :cond_11

    .line 532
    return-object v1

    .line 534
    :cond_11
    invoke-virtual {v0, p2}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->getPermissionState(I)Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    move-result-object v1

    return-object v1
.end method

.method private getPermissionStatesInternal(I)Ljava/util/List;
    .registers 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/server/pm/permission/PermissionsState$PermissionState;",
            ">;"
        }
    .end annotation

    .line 538
    invoke-static {p1}, Lcom/android/server/pm/permission/PermissionsState;->enforceValidUserId(I)V

    .line 540
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    if-nez v0, :cond_c

    .line 541
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 544
    :cond_c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 546
    .local v0, "permissionStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 547
    .local v1, "permissionCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_18
    if-ge v2, v1, :cond_2e

    .line 548
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/permission/PermissionsState$PermissionData;

    .line 550
    .local v3, "permissionData":Lcom/android/server/pm/permission/PermissionsState$PermissionData;
    invoke-virtual {v3, p1}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->getPermissionState(I)Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    move-result-object v4

    .line 551
    .local v4, "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    if-eqz v4, :cond_2b

    .line 552
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 547
    .end local v3    # "permissionData":Lcom/android/server/pm/permission/PermissionsState$PermissionData;
    .end local v4    # "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 556
    .end local v2    # "i":I
    :cond_2e
    return-object v0
.end method

.method private grantPermission(Lcom/android/server/pm/permission/BasePermission;I)I
    .registers 10
    .param p1, "permission"    # Lcom/android/server/pm/permission/BasePermission;
    .param p2, "userId"    # I

    .line 560
    invoke-virtual {p1}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/server/pm/permission/PermissionsState;->hasPermission(Ljava/lang/String;I)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_c

    .line 561
    return v1

    .line 564
    :cond_c
    invoke-virtual {p1, p2}, Lcom/android/server/pm/permission/BasePermission;->computeGids(I)[I

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    .line 565
    .local v0, "hasGids":Z
    if-eqz v0, :cond_1d

    invoke-virtual {p0, p2}, Lcom/android/server/pm/permission/PermissionsState;->computeGids(I)[I

    move-result-object v3

    goto :goto_1f

    :cond_1d
    sget-object v3, Lcom/android/server/pm/permission/PermissionsState;->NO_GIDS:[I

    .line 567
    .local v3, "oldGids":[I
    :goto_1f
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionsState;->ensurePermissionData(Lcom/android/server/pm/permission/BasePermission;)Lcom/android/server/pm/permission/PermissionsState$PermissionData;

    move-result-object v4

    .line 569
    .local v4, "permissionData":Lcom/android/server/pm/permission/PermissionsState$PermissionData;
    invoke-virtual {v4, p2}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->grant(I)Z

    move-result v5

    if-nez v5, :cond_2a

    .line 570
    return v1

    .line 573
    :cond_2a
    if-eqz v0, :cond_35

    .line 574
    invoke-virtual {p0, p2}, Lcom/android/server/pm/permission/PermissionsState;->computeGids(I)[I

    move-result-object v1

    .line 575
    .local v1, "newGids":[I
    array-length v5, v3

    array-length v6, v1

    if-eq v5, v6, :cond_35

    .line 576
    return v2

    .line 580
    .end local v1    # "newGids":[I
    :cond_35
    const/4 v1, 0x0

    return v1
.end method

.method private hasPermissionRequiringReview(I)Z
    .registers 7
    .param p1, "userId"    # I

    .line 442
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 443
    .local v0, "permissionCount":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_8
    if-ge v2, v0, :cond_1f

    .line 444
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/permission/PermissionsState$PermissionData;

    .line 445
    .local v3, "permission":Lcom/android/server/pm/permission/PermissionsState$PermissionData;
    invoke-virtual {v3, p1}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->getFlags(I)I

    move-result v4

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_1c

    .line 447
    const/4 v1, 0x1

    return v1

    .line 443
    .end local v3    # "permission":Lcom/android/server/pm/permission/PermissionsState$PermissionData;
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 450
    .end local v2    # "i":I
    :cond_1f
    return v1
.end method

.method private revokePermission(Lcom/android/server/pm/permission/BasePermission;I)I
    .registers 11
    .param p1, "permission"    # Lcom/android/server/pm/permission/BasePermission;
    .param p2, "userId"    # I

    .line 584
    invoke-virtual {p1}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v0

    .line 585
    .local v0, "permName":Ljava/lang/String;
    invoke-virtual {p0, v0, p2}, Lcom/android/server/pm/permission/PermissionsState;->hasPermission(Ljava/lang/String;I)Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_c

    .line 586
    return v2

    .line 589
    :cond_c
    invoke-virtual {p1, p2}, Lcom/android/server/pm/permission/BasePermission;->computeGids(I)[I

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v1

    const/4 v3, 0x1

    xor-int/2addr v1, v3

    .line 590
    .local v1, "hasGids":Z
    if-eqz v1, :cond_1d

    invoke-virtual {p0, p2}, Lcom/android/server/pm/permission/PermissionsState;->computeGids(I)[I

    move-result-object v4

    goto :goto_1f

    :cond_1d
    sget-object v4, Lcom/android/server/pm/permission/PermissionsState;->NO_GIDS:[I

    .line 592
    .local v4, "oldGids":[I
    :goto_1f
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/permission/PermissionsState$PermissionData;

    .line 594
    .local v5, "permissionData":Lcom/android/server/pm/permission/PermissionsState$PermissionData;
    invoke-virtual {v5, p2}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->revoke(I)Z

    move-result v6

    if-nez v6, :cond_2e

    .line 595
    return v2

    .line 598
    :cond_2e
    invoke-virtual {v5}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->isDefault()Z

    move-result v2

    if-eqz v2, :cond_37

    .line 599
    invoke-direct {p0, v0}, Lcom/android/server/pm/permission/PermissionsState;->ensureNoPermissionData(Ljava/lang/String;)V

    .line 602
    :cond_37
    if-eqz v1, :cond_42

    .line 603
    invoke-virtual {p0, p2}, Lcom/android/server/pm/permission/PermissionsState;->computeGids(I)[I

    move-result-object v2

    .line 604
    .local v2, "newGids":[I
    array-length v6, v4

    array-length v7, v2

    if-eq v6, v7, :cond_42

    .line 605
    return v3

    .line 609
    .end local v2    # "newGids":[I
    :cond_42
    const/4 v2, 0x0

    return v2
.end method


# virtual methods
.method public computeGids(I)[I
    .registers 9
    .param p1, "userId"    # I

    .line 478
    invoke-static {p1}, Lcom/android/server/pm/permission/PermissionsState;->enforceValidUserId(I)V

    .line 480
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mGlobalGids:[I

    .line 482
    .local v0, "gids":[I
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    if-eqz v1, :cond_38

    .line 483
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 484
    .local v1, "permissionCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10
    if-ge v2, v1, :cond_38

    .line 485
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 486
    .local v3, "permission":Ljava/lang/String;
    invoke-virtual {p0, v3, p1}, Lcom/android/server/pm/permission/PermissionsState;->hasPermission(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_21

    .line 487
    goto :goto_35

    .line 489
    :cond_21
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/permission/PermissionsState$PermissionData;

    .line 490
    .local v4, "permissionData":Lcom/android/server/pm/permission/PermissionsState$PermissionData;
    invoke-virtual {v4, p1}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->computeGids(I)[I

    move-result-object v5

    .line 491
    .local v5, "permGids":[I
    sget-object v6, Lcom/android/server/pm/permission/PermissionsState;->NO_GIDS:[I

    if-eq v5, v6, :cond_35

    .line 492
    invoke-static {v0, v5}, Lcom/android/server/pm/permission/PermissionsState;->appendInts([I[I)[I

    move-result-object v0

    .line 484
    .end local v3    # "permission":Ljava/lang/String;
    .end local v4    # "permissionData":Lcom/android/server/pm/permission/PermissionsState$PermissionData;
    .end local v5    # "permGids":[I
    :cond_35
    :goto_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 497
    .end local v1    # "permissionCount":I
    .end local v2    # "i":I
    :cond_38
    return-object v0
.end method

.method public computeGids([I)[I
    .registers 7
    .param p1, "userIds"    # [I

    .line 507
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mGlobalGids:[I

    .line 509
    .local v0, "gids":[I
    array-length v1, p1

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_13

    aget v3, p1, v2

    .line 510
    .local v3, "userId":I
    invoke-virtual {p0, v3}, Lcom/android/server/pm/permission/PermissionsState;->computeGids(I)[I

    move-result-object v4

    .line 511
    .local v4, "userGids":[I
    invoke-static {v0, v4}, Lcom/android/server/pm/permission/PermissionsState;->appendInts([I[I)[I

    move-result-object v0

    .line 509
    .end local v3    # "userId":I
    .end local v4    # "userGids":[I
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 514
    :cond_13
    return-object v0
.end method

.method public copyFrom(Lcom/android/server/pm/permission/PermissionsState;)V
    .registers 10
    .param p1, "other"    # Lcom/android/server/pm/permission/PermissionsState;

    .line 96
    if-ne p1, p0, :cond_3

    .line 97
    return-void

    .line 99
    :cond_3
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    .line 100
    iget-object v0, p1, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    if-nez v0, :cond_f

    .line 101
    iput-object v1, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    goto :goto_14

    .line 103
    :cond_f
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 106
    :cond_14
    :goto_14
    iget-object v0, p1, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    const/4 v2, 0x0

    if-eqz v0, :cond_4a

    .line 107
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    if-nez v0, :cond_24

    .line 108
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    .line 110
    :cond_24
    iget-object v0, p1, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 111
    .local v0, "permissionCount":I
    move v3, v2

    .local v3, "i":I
    :goto_2b
    if-ge v3, v0, :cond_4a

    .line 112
    iget-object v4, p1, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 113
    .local v4, "name":Ljava/lang/String;
    iget-object v5, p1, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/permission/PermissionsState$PermissionData;

    .line 114
    .local v5, "permissionData":Lcom/android/server/pm/permission/PermissionsState$PermissionData;
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    new-instance v7, Lcom/android/server/pm/permission/PermissionsState$PermissionData;

    invoke-direct {v7, v5}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;-><init>(Lcom/android/server/pm/permission/PermissionsState$PermissionData;)V

    invoke-virtual {v6, v4, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "permissionData":Lcom/android/server/pm/permission/PermissionsState$PermissionData;
    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    .line 118
    .end local v0    # "permissionCount":I
    .end local v3    # "i":I
    :cond_4a
    sget-object v0, Lcom/android/server/pm/permission/PermissionsState;->NO_GIDS:[I

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mGlobalGids:[I

    .line 119
    iget-object v0, p1, Lcom/android/server/pm/permission/PermissionsState;->mGlobalGids:[I

    sget-object v3, Lcom/android/server/pm/permission/PermissionsState;->NO_GIDS:[I

    if-eq v0, v3, :cond_5f

    .line 120
    iget-object v0, p1, Lcom/android/server/pm/permission/PermissionsState;->mGlobalGids:[I

    iget-object v3, p1, Lcom/android/server/pm/permission/PermissionsState;->mGlobalGids:[I

    array-length v3, v3

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mGlobalGids:[I

    .line 124
    :cond_5f
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_6f

    .line 125
    iget-object v0, p1, Lcom/android/server/pm/permission/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_6a

    .line 126
    iput-object v1, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    goto :goto_6f

    .line 128
    :cond_6a
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 131
    :cond_6f
    :goto_6f
    iget-object v0, p1, Lcom/android/server/pm/permission/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_96

    .line 132
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_7e

    .line 133
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    .line 135
    :cond_7e
    iget-object v0, p1, Lcom/android/server/pm/permission/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    .line 136
    .local v0, "userCount":I
    nop

    .local v2, "i":I
    :goto_85
    move v1, v2

    .end local v2    # "i":I
    .local v1, "i":I
    if-ge v1, v0, :cond_96

    .line 137
    iget-object v2, p1, Lcom/android/server/pm/permission/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    .line 138
    .local v2, "reviewRequired":Z
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 136
    .end local v2    # "reviewRequired":Z
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    goto :goto_85

    .line 141
    .end local v0    # "userCount":I
    .end local v2    # "i":I
    :cond_96
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 145
    if-ne p0, p1, :cond_4

    .line 146
    const/4 v0, 0x1

    return v0

    .line 148
    :cond_4
    const/4 v0, 0x0

    if-nez p1, :cond_8

    .line 149
    return v0

    .line 151
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_13

    .line 152
    return v0

    .line 154
    :cond_13
    move-object v1, p1

    check-cast v1, Lcom/android/server/pm/permission/PermissionsState;

    .line 156
    .local v1, "other":Lcom/android/server/pm/permission/PermissionsState;
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    if-nez v2, :cond_1f

    .line 157
    iget-object v2, v1, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    if-eqz v2, :cond_2a

    .line 158
    return v0

    .line 160
    :cond_1f
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    iget-object v3, v1, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    .line 161
    return v0

    .line 163
    :cond_2a
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    if-nez v2, :cond_33

    .line 164
    iget-object v2, v1, Lcom/android/server/pm/permission/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    if-eqz v2, :cond_3e

    .line 165
    return v0

    .line 167
    :cond_33
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    iget-object v3, v1, Lcom/android/server/pm/permission/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3e

    .line 168
    return v0

    .line 170
    :cond_3e
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mGlobalGids:[I

    iget-object v2, v1, Lcom/android/server/pm/permission/PermissionsState;->mGlobalGids:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    return v0
.end method

.method public getInstallPermissionState(Ljava/lang/String;)Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 335
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionState(Ljava/lang/String;I)Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    move-result-object v0

    return-object v0
.end method

.method public getInstallPermissionStates()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/permission/PermissionsState$PermissionState;",
            ">;"
        }
    .end annotation

    .line 356
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionStatesInternal(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPermissionFlags(Ljava/lang/String;I)I
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 377
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/PermissionsState;->getInstallPermissionState(Ljava/lang/String;)Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    move-result-object v0

    .line 378
    .local v0, "installPermState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    if-eqz v0, :cond_b

    .line 379
    invoke-virtual {v0}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getFlags()I

    move-result v1

    return v1

    .line 381
    :cond_b
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionsState;->getRuntimePermissionState(Ljava/lang/String;I)Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    move-result-object v1

    .line 382
    .local v1, "runtimePermState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    if-eqz v1, :cond_16

    .line 383
    invoke-virtual {v1}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getFlags()I

    move-result v2

    return v2

    .line 385
    :cond_16
    const/4 v2, 0x0

    return v2
.end method

.method public getPermissions(I)Ljava/util/Set;
    .registers 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 301
    invoke-static {p1}, Lcom/android/server/pm/permission/PermissionsState;->enforceValidUserId(I)V

    .line 303
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    if-nez v0, :cond_c

    .line 304
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 307
    :cond_c
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    .line 309
    .local v0, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 310
    .local v1, "permissionCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1e
    if-ge v2, v1, :cond_41

    .line 311
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 313
    .local v3, "permission":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/android/server/pm/permission/PermissionsState;->hasInstallPermission(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 314
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 315
    goto :goto_3e

    .line 318
    :cond_32
    const/4 v4, -0x1

    if-eq p1, v4, :cond_3e

    .line 319
    invoke-virtual {p0, v3, p1}, Lcom/android/server/pm/permission/PermissionsState;->hasRuntimePermission(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 320
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 310
    .end local v3    # "permission":Ljava/lang/String;
    :cond_3e
    :goto_3e
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 325
    .end local v2    # "i":I
    :cond_41
    return-object v0
.end method

.method public getRuntimePermissionState(Ljava/lang/String;I)Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 346
    invoke-static {p2}, Lcom/android/server/pm/permission/PermissionsState;->enforceValidUserId(I)V

    .line 347
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionState(Ljava/lang/String;I)Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    move-result-object v0

    return-object v0
.end method

.method public getRuntimePermissionStates(I)Ljava/util/List;
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/server/pm/permission/PermissionsState$PermissionState;",
            ">;"
        }
    .end annotation

    .line 365
    invoke-static {p1}, Lcom/android/server/pm/permission/PermissionsState;->enforceValidUserId(I)V

    .line 366
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionStatesInternal(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public grantInstallPermission(Lcom/android/server/pm/permission/BasePermission;)I
    .registers 3
    .param p1, "permission"    # Lcom/android/server/pm/permission/BasePermission;

    .line 186
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/permission/PermissionsState;->grantPermission(Lcom/android/server/pm/permission/BasePermission;I)I

    move-result v0

    return v0
.end method

.method public grantRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I
    .registers 4
    .param p1, "permission"    # Lcom/android/server/pm/permission/BasePermission;
    .param p2, "userId"    # I

    .line 211
    invoke-static {p2}, Lcom/android/server/pm/permission/PermissionsState;->enforceValidUserId(I)V

    .line 212
    const/4 v0, -0x1

    if-ne p2, v0, :cond_7

    .line 213
    return v0

    .line 215
    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionsState;->grantPermission(Lcom/android/server/pm/permission/BasePermission;I)I

    move-result v0

    return v0
.end method

.method public hasInstallPermission(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 255
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/permission/PermissionsState;->hasPermission(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public hasPermission(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 267
    invoke-static {p2}, Lcom/android/server/pm/permission/PermissionsState;->enforceValidUserId(I)V

    .line 269
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    if-nez v0, :cond_9

    .line 270
    return v1

    .line 273
    :cond_9
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;

    .line 274
    .local v0, "permissionData":Lcom/android/server/pm/permission/PermissionsState$PermissionData;
    if-eqz v0, :cond_1b

    invoke-virtual {v0, p2}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->isGranted(I)Z

    move-result v2

    if-eqz v2, :cond_1b

    const/4 v1, 0x1

    nop

    :cond_1b
    return v1
.end method

.method public hasRequestedPermission(Landroid/util/ArraySet;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 282
    .local p1, "names":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 283
    return v1

    .line 285
    :cond_6
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    .local v0, "i":I
    :goto_c
    if-ltz v0, :cond_1e

    .line 286
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1b

    .line 287
    return v2

    .line 285
    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    .line 290
    .end local v0    # "i":I
    :cond_1e
    return v1
.end method

.method public hasRuntimePermission(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 244
    invoke-static {p2}, Lcom/android/server/pm/permission/PermissionsState;->enforceValidUserId(I)V

    .line 245
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/PermissionsState;->hasInstallPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionsState;->hasPermission(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0
.end method

.method public isPermissionReviewRequired(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 174
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public reset()V
    .registers 2

    .line 521
    sget-object v0, Lcom/android/server/pm/permission/PermissionsState;->NO_GIDS:[I

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mGlobalGids:[I

    .line 522
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    .line 523
    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    .line 524
    return-void
.end method

.method public revokeInstallPermission(Lcom/android/server/pm/permission/BasePermission;)I
    .registers 3
    .param p1, "permission"    # Lcom/android/server/pm/permission/BasePermission;

    .line 198
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/permission/PermissionsState;->revokePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    move-result v0

    return v0
.end method

.method public revokeRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I
    .registers 4
    .param p1, "permission"    # Lcom/android/server/pm/permission/BasePermission;
    .param p2, "userId"    # I

    .line 228
    invoke-static {p2}, Lcom/android/server/pm/permission/PermissionsState;->enforceValidUserId(I)V

    .line 229
    const/4 v0, -0x1

    if-ne p2, v0, :cond_7

    .line 230
    return v0

    .line 232
    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionsState;->revokePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    move-result v0

    return v0
.end method

.method public setGlobalGids([I)V
    .registers 3
    .param p1, "globalGids"    # [I

    .line 85
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v0

    if-nez v0, :cond_d

    .line 86
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mGlobalGids:[I

    .line 88
    :cond_d
    return-void
.end method

.method public updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z
    .registers 12
    .param p1, "permission"    # Lcom/android/server/pm/permission/BasePermission;
    .param p2, "userId"    # I
    .param p3, "flagMask"    # I
    .param p4, "flagValues"    # I

    .line 398
    invoke-static {p2}, Lcom/android/server/pm/permission/PermissionsState;->enforceValidUserId(I)V

    .line 400
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p4, :cond_c

    if-eqz p3, :cond_a

    goto :goto_c

    :cond_a
    move v2, v1

    goto :goto_d

    :cond_c
    :goto_c
    move v2, v0

    .line 402
    .local v2, "mayChangeFlags":Z
    :goto_d
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    if-nez v3, :cond_17

    .line 403
    if-nez v2, :cond_14

    .line 404
    return v1

    .line 406
    :cond_14
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionsState;->ensurePermissionData(Lcom/android/server/pm/permission/BasePermission;)Lcom/android/server/pm/permission/PermissionsState$PermissionData;

    .line 409
    :cond_17
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/permission/PermissionsState$PermissionData;

    .line 410
    .local v3, "permissionData":Lcom/android/server/pm/permission/PermissionsState$PermissionData;
    if-nez v3, :cond_2c

    .line 411
    if-nez v2, :cond_28

    .line 412
    return v1

    .line 414
    :cond_28
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionsState;->ensurePermissionData(Lcom/android/server/pm/permission/BasePermission;)Lcom/android/server/pm/permission/PermissionsState$PermissionData;

    move-result-object v3

    .line 417
    :cond_2c
    invoke-virtual {v3, p2}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->getFlags(I)I

    move-result v1

    .line 419
    .local v1, "oldFlags":I
    invoke-virtual {v3, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->updateFlags(III)Z

    move-result v4

    .line 420
    .local v4, "updated":Z
    if-eqz v4, :cond_75

    .line 421
    invoke-virtual {v3, p2}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->getFlags(I)I

    move-result v5

    .line 422
    .local v5, "newFlags":I
    and-int/lit8 v6, v1, 0x40

    if-nez v6, :cond_53

    and-int/lit8 v6, v5, 0x40

    if-eqz v6, :cond_53

    .line 424
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    if-nez v6, :cond_4d

    .line 425
    new-instance v6, Landroid/util/SparseBooleanArray;

    invoke-direct {v6}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v6, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    .line 427
    :cond_4d
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, p2, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_75

    .line 428
    :cond_53
    and-int/lit8 v0, v1, 0x40

    if-eqz v0, :cond_75

    and-int/lit8 v0, v5, 0x40

    if-nez v0, :cond_75

    .line 430
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_75

    invoke-direct {p0, p2}, Lcom/android/server/pm/permission/PermissionsState;->hasPermissionRequiringReview(I)Z

    move-result v0

    if-nez v0, :cond_75

    .line 431
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 432
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-gtz v0, :cond_75

    .line 433
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    .line 438
    .end local v5    # "newFlags":I
    :cond_75
    :goto_75
    return v4
.end method

.method public updatePermissionFlagsForAllPermissions(III)Z
    .registers 9
    .param p1, "userId"    # I
    .param p2, "flagMask"    # I
    .param p3, "flagValues"    # I

    .line 455
    invoke-static {p1}, Lcom/android/server/pm/permission/PermissionsState;->enforceValidUserId(I)V

    .line 457
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    if-nez v0, :cond_9

    .line 458
    return v1

    .line 460
    :cond_9
    const/4 v0, 0x0

    .line 461
    .local v0, "changed":Z
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 462
    .local v2, "permissionCount":I
    nop

    .local v1, "i":I
    :goto_11
    if-ge v1, v2, :cond_23

    .line 463
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/permission/PermissionsState$PermissionData;

    .line 464
    .local v3, "permissionData":Lcom/android/server/pm/permission/PermissionsState$PermissionData;
    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->updateFlags(III)Z

    move-result v4

    or-int/2addr v0, v4

    .line 462
    .end local v3    # "permissionData":Lcom/android/server/pm/permission/PermissionsState$PermissionData;
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 466
    .end local v1    # "i":I
    :cond_23
    return v0
.end method
