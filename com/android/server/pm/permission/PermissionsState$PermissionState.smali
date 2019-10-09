.class public final Lcom/android/server/pm/permission/PermissionsState$PermissionState;
.super Ljava/lang/Object;
.source "PermissionsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/permission/PermissionsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PermissionState"
.end annotation


# instance fields
.field private mFlags:I

.field private mGranted:Z

.field private final mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/permission/PermissionsState$PermissionState;)V
    .registers 3
    .param p1, "other"    # Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    .line 793
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 794
    iget-object v0, p1, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->mName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->mName:Ljava/lang/String;

    .line 795
    iget-boolean v0, p1, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->mGranted:Z

    iput-boolean v0, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->mGranted:Z

    .line 796
    iget v0, p1, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->mFlags:I

    iput v0, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->mFlags:I

    .line 797
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 789
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 790
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->mName:Ljava/lang/String;

    .line 791
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/pm/permission/PermissionsState$PermissionState;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    .line 784
    iget-boolean v0, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->mGranted:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/pm/permission/PermissionsState$PermissionState;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .param p1, "x1"    # Z

    .line 784
    iput-boolean p1, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->mGranted:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/pm/permission/PermissionsState$PermissionState;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    .line 784
    iget v0, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->mFlags:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/pm/permission/PermissionsState$PermissionState;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .param p1, "x1"    # I

    .line 784
    iput p1, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->mFlags:I

    return p1
.end method


# virtual methods
.method public getFlags()I
    .registers 2

    .line 812
    iget v0, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->mFlags:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 804
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public isDefault()Z
    .registers 2

    .line 800
    iget-boolean v0, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->mGranted:Z

    if-nez v0, :cond_a

    iget v0, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->mFlags:I

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isGranted()Z
    .registers 2

    .line 808
    iget-boolean v0, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->mGranted:Z

    return v0
.end method
