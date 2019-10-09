.class final Lcom/android/server/AppOpsService$AppOpsManagerInternalImpl;
.super Landroid/app/AppOpsManagerInternal;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AppOpsManagerInternalImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AppOpsService;


# direct methods
.method private constructor <init>(Lcom/android/server/AppOpsService;)V
    .registers 2

    .line 3907
    iput-object p1, p0, Lcom/android/server/AppOpsService$AppOpsManagerInternalImpl;->this$0:Lcom/android/server/AppOpsService;

    invoke-direct {p0}, Landroid/app/AppOpsManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/AppOpsService;Lcom/android/server/AppOpsService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/AppOpsService;
    .param p2, "x1"    # Lcom/android/server/AppOpsService$1;

    .line 3907
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService$AppOpsManagerInternalImpl;-><init>(Lcom/android/server/AppOpsService;)V

    return-void
.end method


# virtual methods
.method public setDeviceAndProfileOwners(Landroid/util/SparseIntArray;)V
    .registers 4
    .param p1, "owners"    # Landroid/util/SparseIntArray;

    .line 3909
    iget-object v0, p0, Lcom/android/server/AppOpsService$AppOpsManagerInternalImpl;->this$0:Lcom/android/server/AppOpsService;

    monitor-enter v0

    .line 3910
    :try_start_3
    iget-object v1, p0, Lcom/android/server/AppOpsService$AppOpsManagerInternalImpl;->this$0:Lcom/android/server/AppOpsService;

    iput-object p1, v1, Lcom/android/server/AppOpsService;->mProfileOwners:Landroid/util/SparseIntArray;

    .line 3911
    monitor-exit v0

    .line 3912
    return-void

    .line 3911
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method
