.class public final Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "DevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicepolicy/DevicePolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Lifecycle"
.end annotation


# instance fields
.field private mService:Lcom/android/server/devicepolicy/BaseIDevicePolicyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .line 569
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 570
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 571
    const v1, 0x1040146

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 572
    .local v0, "dpmsClassName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 573
    const-class v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 576
    :cond_1a
    :try_start_1a
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 577
    .local v1, "serviceClass":Ljava/lang/Class;
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 578
    .local v3, "constructor":Ljava/lang/reflect/Constructor;
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/devicepolicy/BaseIDevicePolicyManager;

    iput-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;->mService:Lcom/android/server/devicepolicy/BaseIDevicePolicyManager;
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_36} :catch_38

    .line 583
    .end local v1    # "serviceClass":Ljava/lang/Class;
    .end local v3    # "constructor":Ljava/lang/reflect/Constructor;
    nop

    .line 584
    return-void

    .line 579
    :catch_38
    move-exception v1

    .line 580
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to instantiate DevicePolicyManagerService with class name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 3
    .param p1, "phase"    # I

    .line 593
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;->mService:Lcom/android/server/devicepolicy/BaseIDevicePolicyManager;

    invoke-virtual {v0, p1}, Lcom/android/server/devicepolicy/BaseIDevicePolicyManager;->systemReady(I)V

    .line 594
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 588
    const-string v0, "device_policy"

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;->mService:Lcom/android/server/devicepolicy/BaseIDevicePolicyManager;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 589
    return-void
.end method

.method public onStartUser(I)V
    .registers 3
    .param p1, "userHandle"    # I

    .line 598
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;->mService:Lcom/android/server/devicepolicy/BaseIDevicePolicyManager;

    invoke-virtual {v0, p1}, Lcom/android/server/devicepolicy/BaseIDevicePolicyManager;->handleStartUser(I)V

    .line 599
    return-void
.end method

.method public onStopUser(I)V
    .registers 3
    .param p1, "userHandle"    # I

    .line 608
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;->mService:Lcom/android/server/devicepolicy/BaseIDevicePolicyManager;

    invoke-virtual {v0, p1}, Lcom/android/server/devicepolicy/BaseIDevicePolicyManager;->handleStopUser(I)V

    .line 609
    return-void
.end method

.method public onUnlockUser(I)V
    .registers 3
    .param p1, "userHandle"    # I

    .line 603
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;->mService:Lcom/android/server/devicepolicy/BaseIDevicePolicyManager;

    invoke-virtual {v0, p1}, Lcom/android/server/devicepolicy/BaseIDevicePolicyManager;->handleUnlockUser(I)V

    .line 604
    return-void
.end method
