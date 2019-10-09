.class final Lcom/android/server/pm/permission/PermissionsState$PermissionData;
.super Ljava/lang/Object;
.source "PermissionsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/permission/PermissionsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PermissionData"
.end annotation


# instance fields
.field private final mPerm:Lcom/android/server/pm/permission/BasePermission;

.field private mUserStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/permission/PermissionsState$PermissionState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/pm/permission/BasePermission;)V
    .registers 3
    .param p1, "perm"    # Lcom/android/server/pm/permission/BasePermission;

    .line 655
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 653
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    .line 656
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mPerm:Lcom/android/server/pm/permission/BasePermission;

    .line 657
    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/permission/PermissionsState$PermissionData;)V
    .registers 8
    .param p1, "other"    # Lcom/android/server/pm/permission/PermissionsState$PermissionData;

    .line 660
    iget-object v0, p1, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mPerm:Lcom/android/server/pm/permission/BasePermission;

    invoke-direct {p0, v0}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;-><init>(Lcom/android/server/pm/permission/BasePermission;)V

    .line 661
    iget-object v0, p1, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 662
    .local v0, "otherStateCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    if-ge v1, v0, :cond_29

    .line 663
    iget-object v2, p1, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 664
    .local v2, "otherUserId":I
    iget-object v3, p1, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    .line 665
    .local v3, "otherState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    new-instance v5, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    invoke-direct {v5, v3}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;-><init>(Lcom/android/server/pm/permission/PermissionsState$PermissionState;)V

    invoke-virtual {v4, v2, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 662
    .end local v2    # "otherUserId":I
    .end local v3    # "otherState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 667
    .end local v1    # "i":I
    :cond_29
    return-void
.end method

.method private isCompatibleUserId(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 775
    invoke-virtual {p0}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->isDefault()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-direct {p0}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->isInstallPermission()Z

    move-result v0

    invoke-static {p1}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->isInstallPermissionKey(I)Z

    move-result v1

    xor-int/2addr v0, v1

    if-nez v0, :cond_12

    goto :goto_14

    :cond_12
    const/4 v0, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 v0, 0x1

    :goto_15
    return v0
.end method

.method private isInstallPermission()Z
    .registers 4

    .line 779
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    const/4 v2, -0x1

    .line 780
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_13

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    .line 779
    :goto_14
    return v1
.end method

.method public static isInstallPermissionKey(I)Z
    .registers 2
    .param p0, "userId"    # I

    .line 742
    const/4 v0, -0x1

    if-ne p0, v0, :cond_5

    const/4 v0, 0x1

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    return v0
.end method


# virtual methods
.method public computeGids(I)[I
    .registers 3
    .param p1, "userId"    # I

    .line 670
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mPerm:Lcom/android/server/pm/permission/BasePermission;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/permission/BasePermission;->computeGids(I)[I

    move-result-object v0

    return-object v0
.end method

.method public getFlags(I)I
    .registers 4
    .param p1, "userId"    # I

    .line 730
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    .line 731
    .local v0, "userState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    if-eqz v0, :cond_f

    .line 732
    # getter for: Lcom/android/server/pm/permission/PermissionsState$PermissionState;->mFlags:I
    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->access$100(Lcom/android/server/pm/permission/PermissionsState$PermissionState;)I

    move-result v1

    return v1

    .line 734
    :cond_f
    const/4 v1, 0x0

    return v1
.end method

.method public getPermissionState(I)Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .registers 3
    .param p1, "userId"    # I

    .line 726
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    return-object v0
.end method

.method public grant(I)Z
    .registers 5
    .param p1, "userId"    # I

    .line 687
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->isCompatibleUserId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 688
    return v1

    .line 691
    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->isGranted(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 692
    return v1

    .line 695
    :cond_f
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    .line 696
    .local v0, "userState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    if-nez v0, :cond_2a

    .line 697
    new-instance v1, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mPerm:Lcom/android/server/pm/permission/BasePermission;

    invoke-virtual {v2}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 698
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 701
    :cond_2a
    const/4 v1, 0x1

    # setter for: Lcom/android/server/pm/permission/PermissionsState$PermissionState;->mGranted:Z
    invoke-static {v0, v1}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->access$002(Lcom/android/server/pm/permission/PermissionsState$PermissionState;Z)Z

    .line 703
    return v1
.end method

.method public isDefault()Z
    .registers 2

    .line 738
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isGranted(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 674
    invoke-direct {p0}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->isInstallPermission()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 675
    const/4 p1, -0x1

    .line 678
    :cond_7
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    .line 679
    .local v0, "userState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    if-nez v0, :cond_13

    .line 680
    const/4 v1, 0x0

    return v1

    .line 683
    :cond_13
    # getter for: Lcom/android/server/pm/permission/PermissionsState$PermissionState;->mGranted:Z
    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->access$000(Lcom/android/server/pm/permission/PermissionsState$PermissionState;)Z

    move-result v1

    return v1
.end method

.method public revoke(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 707
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->isCompatibleUserId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 708
    return v1

    .line 711
    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->isGranted(I)Z

    move-result v0

    if-nez v0, :cond_f

    .line 712
    return v1

    .line 715
    :cond_f
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    .line 716
    .local v0, "userState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    # setter for: Lcom/android/server/pm/permission/PermissionsState$PermissionState;->mGranted:Z
    invoke-static {v0, v1}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->access$002(Lcom/android/server/pm/permission/PermissionsState$PermissionState;Z)Z

    .line 718
    invoke-virtual {v0}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->isDefault()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 719
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 722
    :cond_25
    const/4 v1, 0x1

    return v1
.end method

.method public updateFlags(III)Z
    .registers 11
    .param p1, "userId"    # I
    .param p2, "flagMask"    # I
    .param p3, "flagValues"    # I

    .line 746
    invoke-direct {p0}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->isInstallPermission()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 747
    const/4 p1, -0x1

    .line 750
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->isCompatibleUserId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 751
    return v1

    .line 754
    :cond_f
    and-int v0, p3, p2

    .line 756
    .local v0, "newFlags":I
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    .line 757
    .local v2, "userState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    const/4 v3, 0x1

    if-eqz v2, :cond_3e

    .line 758
    # getter for: Lcom/android/server/pm/permission/PermissionsState$PermissionState;->mFlags:I
    invoke-static {v2}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->access$100(Lcom/android/server/pm/permission/PermissionsState$PermissionState;)I

    move-result v4

    .line 759
    .local v4, "oldFlags":I
    # getter for: Lcom/android/server/pm/permission/PermissionsState$PermissionState;->mFlags:I
    invoke-static {v2}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->access$100(Lcom/android/server/pm/permission/PermissionsState$PermissionState;)I

    move-result v5

    not-int v6, p2

    and-int/2addr v5, v6

    or-int/2addr v5, v0

    # setter for: Lcom/android/server/pm/permission/PermissionsState$PermissionState;->mFlags:I
    invoke-static {v2, v5}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->access$102(Lcom/android/server/pm/permission/PermissionsState$PermissionState;I)I

    .line 760
    invoke-virtual {v2}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->isDefault()Z

    move-result v5

    if-eqz v5, :cond_35

    .line 761
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 763
    :cond_35
    # getter for: Lcom/android/server/pm/permission/PermissionsState$PermissionState;->mFlags:I
    invoke-static {v2}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->access$100(Lcom/android/server/pm/permission/PermissionsState$PermissionState;)I

    move-result v5

    if-eq v5, v4, :cond_3d

    move v1, v3

    nop

    :cond_3d
    return v1

    .line 764
    .end local v4    # "oldFlags":I
    :cond_3e
    if-eqz v0, :cond_54

    .line 765
    new-instance v1, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mPerm:Lcom/android/server/pm/permission/BasePermission;

    invoke-virtual {v4}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;-><init>(Ljava/lang/String;)V

    .line 766
    .end local v2    # "userState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .local v1, "userState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    # setter for: Lcom/android/server/pm/permission/PermissionsState$PermissionState;->mFlags:I
    invoke-static {v1, v0}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->access$102(Lcom/android/server/pm/permission/PermissionsState$PermissionState;I)I

    .line 767
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 768
    return v3

    .line 771
    .end local v1    # "userState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .restart local v2    # "userState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    :cond_54
    return v1
.end method
