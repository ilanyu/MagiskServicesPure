.class Lcom/android/server/companion/CompanionDeviceManagerService$2;
.super Ljava/lang/Object;
.source "CompanionDeviceManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/companion/CompanionDeviceManagerService;->createServiceConnection(Landroid/companion/AssociationRequest;Landroid/companion/IFindDeviceCallback;Ljava/lang/String;)Landroid/content/ServiceConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

.field final synthetic val$callingPackage:Ljava/lang/String;

.field final synthetic val$findDeviceCallback:Landroid/companion/IFindDeviceCallback;

.field final synthetic val$request:Landroid/companion/AssociationRequest;


# direct methods
.method constructor <init>(Lcom/android/server/companion/CompanionDeviceManagerService;Landroid/companion/IFindDeviceCallback;Landroid/companion/AssociationRequest;Ljava/lang/String;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 360
    iput-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$2;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    iput-object p2, p0, Lcom/android/server/companion/CompanionDeviceManagerService$2;->val$findDeviceCallback:Landroid/companion/IFindDeviceCallback;

    iput-object p3, p0, Lcom/android/server/companion/CompanionDeviceManagerService$2;->val$request:Landroid/companion/AssociationRequest;

    iput-object p4, p0, Lcom/android/server/companion/CompanionDeviceManagerService$2;->val$callingPackage:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 8
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 369
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$2;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$2;->val$findDeviceCallback:Landroid/companion/IFindDeviceCallback;

    # setter for: Lcom/android/server/companion/CompanionDeviceManagerService;->mFindDeviceCallback:Landroid/companion/IFindDeviceCallback;
    invoke-static {v0, v1}, Lcom/android/server/companion/CompanionDeviceManagerService;->access$702(Lcom/android/server/companion/CompanionDeviceManagerService;Landroid/companion/IFindDeviceCallback;)Landroid/companion/IFindDeviceCallback;

    .line 370
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$2;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$2;->val$request:Landroid/companion/AssociationRequest;

    # setter for: Lcom/android/server/companion/CompanionDeviceManagerService;->mRequest:Landroid/companion/AssociationRequest;
    invoke-static {v0, v1}, Lcom/android/server/companion/CompanionDeviceManagerService;->access$602(Lcom/android/server/companion/CompanionDeviceManagerService;Landroid/companion/AssociationRequest;)Landroid/companion/AssociationRequest;

    .line 371
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$2;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$2;->val$callingPackage:Ljava/lang/String;

    # setter for: Lcom/android/server/companion/CompanionDeviceManagerService;->mCallingPackage:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/server/companion/CompanionDeviceManagerService;->access$802(Lcom/android/server/companion/CompanionDeviceManagerService;Ljava/lang/String;)Ljava/lang/String;

    .line 374
    :try_start_15
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$2;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    # getter for: Lcom/android/server/companion/CompanionDeviceManagerService;->mFindDeviceCallback:Landroid/companion/IFindDeviceCallback;
    invoke-static {v0}, Lcom/android/server/companion/CompanionDeviceManagerService;->access$700(Lcom/android/server/companion/CompanionDeviceManagerService;)Landroid/companion/IFindDeviceCallback;

    move-result-object v0

    invoke-interface {v0}, Landroid/companion/IFindDeviceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$2;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_25} :catch_44

    .line 379
    nop

    .line 382
    nop

    .line 383
    :try_start_27
    invoke-static {p2}, Landroid/companion/ICompanionDeviceDiscoveryService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/ICompanionDeviceDiscoveryService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$2;->val$request:Landroid/companion/AssociationRequest;

    iget-object v2, p0, Lcom/android/server/companion/CompanionDeviceManagerService$2;->val$callingPackage:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/companion/CompanionDeviceManagerService$2;->val$findDeviceCallback:Landroid/companion/IFindDeviceCallback;

    iget-object v4, p0, Lcom/android/server/companion/CompanionDeviceManagerService$2;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 388
    # invokes: Lcom/android/server/companion/CompanionDeviceManagerService;->getServiceCallback()Landroid/companion/ICompanionDeviceDiscoveryServiceCallback$Stub;
    invoke-static {v4}, Lcom/android/server/companion/CompanionDeviceManagerService;->access$1400(Lcom/android/server/companion/CompanionDeviceManagerService;)Landroid/companion/ICompanionDeviceDiscoveryServiceCallback$Stub;

    move-result-object v4

    .line 384
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/companion/ICompanionDeviceDiscoveryService;->startDiscovery(Landroid/companion/AssociationRequest;Ljava/lang/String;Landroid/companion/IFindDeviceCallback;Landroid/companion/ICompanionDeviceDiscoveryServiceCallback;)V
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_3a} :catch_3b

    .line 391
    goto :goto_43

    .line 389
    :catch_3b
    move-exception v0

    .line 390
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "CompanionDeviceManagerService"

    const-string v2, "Error while initiating device discovery"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 392
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_43
    return-void

    .line 376
    :catch_44
    move-exception v0

    .line 377
    .restart local v0    # "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$2;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    # invokes: Lcom/android/server/companion/CompanionDeviceManagerService;->cleanup()V
    invoke-static {v1}, Lcom/android/server/companion/CompanionDeviceManagerService;->access$900(Lcom/android/server/companion/CompanionDeviceManagerService;)V

    .line 378
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 397
    return-void
.end method
