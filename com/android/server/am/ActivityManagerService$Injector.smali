.class public Lcom/android/server/am/ActivityManagerService$Injector;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Injector"
.end annotation


# instance fields
.field private mNmi:Lcom/android/server/NetworkManagementInternal;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private ensureHasNetworkManagementInternal()Z
    .registers 2

    .line 28158
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$Injector;->mNmi:Lcom/android/server/NetworkManagementInternal;

    if-nez v0, :cond_e

    .line 28159
    const-class v0, Lcom/android/server/NetworkManagementInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/NetworkManagementInternal;

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerService$Injector;->mNmi:Lcom/android/server/NetworkManagementInternal;

    .line 28161
    :cond_e
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$Injector;->mNmi:Lcom/android/server/NetworkManagementInternal;

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method


# virtual methods
.method public getAppOpsService(Ljava/io/File;Landroid/os/Handler;)Lcom/android/server/AppOpsService;
    .registers 4
    .param p1, "file"    # Ljava/io/File;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 28143
    new-instance v0, Lcom/android/server/AppOpsService;

    invoke-direct {v0, p1, p2}, Lcom/android/server/AppOpsService;-><init>(Ljava/io/File;Landroid/os/Handler;)V

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .line 28139
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUiHandler(Lcom/android/server/am/ActivityManagerService;)Landroid/os/Handler;
    .registers 3
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;

    .line 28147
    new-instance v0, Lcom/android/server/am/ActivityManagerService$UiHandler;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, p1}, Lcom/android/server/am/ActivityManagerService$UiHandler;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    return-object v0
.end method

.method public isNetworkRestrictedForUid(I)Z
    .registers 3
    .param p1, "uid"    # I

    .line 28151
    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerService$Injector;->ensureHasNetworkManagementInternal()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 28152
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$Injector;->mNmi:Lcom/android/server/NetworkManagementInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/NetworkManagementInternal;->isNetworkRestrictedForUid(I)Z

    move-result v0

    return v0

    .line 28154
    :cond_d
    const/4 v0, 0x0

    return v0
.end method
