.class Lcom/android/server/vr/VrManagerService$4;
.super Landroid/service/vr/IVrManager$Stub;
.source "VrManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vr/VrManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vr/VrManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/vr/VrManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/vr/VrManagerService;

    .line 535
    iput-object p1, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-direct {p0}, Landroid/service/vr/IVrManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 12
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 636
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    # getter for: Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/vr/VrManagerService;->access$2700(Lcom/android/server/vr/VrManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "VrManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    .line 638
    :cond_f
    const-string v0, "********* Dump of VrManagerService *********"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 639
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VR mode is currently: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    # getter for: Lcom/android/server/vr/VrManagerService;->mVrModeAllowed:Z
    invoke-static {v1}, Lcom/android/server/vr/VrManagerService;->access$800(Lcom/android/server/vr/VrManagerService;)Z

    move-result v1

    if-eqz v1, :cond_29

    const-string v1, "allowed"

    goto :goto_2b

    :cond_29
    const-string v1, "disallowed"

    :goto_2b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 640
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Persistent VR mode is currently: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 641
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    # getter for: Lcom/android/server/vr/VrManagerService;->mPersistentVrModeEnabled:Z
    invoke-static {v1}, Lcom/android/server/vr/VrManagerService;->access$2800(Lcom/android/server/vr/VrManagerService;)Z

    move-result v1

    if-eqz v1, :cond_4a

    const-string v1, "enabled"

    goto :goto_4c

    :cond_4a
    const-string v1, "disabled"

    :goto_4c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 640
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 642
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Currently bound VR listener service: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    # getter for: Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;
    invoke-static {v1}, Lcom/android/server/vr/VrManagerService;->access$300(Lcom/android/server/vr/VrManagerService;)Lcom/android/server/utils/ManagedApplicationService;

    move-result-object v1

    if-nez v1, :cond_6b

    .line 644
    const-string v1, "None"

    goto :goto_79

    :cond_6b
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    # getter for: Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;
    invoke-static {v1}, Lcom/android/server/vr/VrManagerService;->access$300(Lcom/android/server/vr/VrManagerService;)Lcom/android/server/utils/ManagedApplicationService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/utils/ManagedApplicationService;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    :goto_79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 642
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 645
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Currently bound VR compositor service: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 646
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    # getter for: Lcom/android/server/vr/VrManagerService;->mCurrentVrCompositorService:Lcom/android/server/utils/ManagedApplicationService;
    invoke-static {v1}, Lcom/android/server/vr/VrManagerService;->access$2900(Lcom/android/server/vr/VrManagerService;)Lcom/android/server/utils/ManagedApplicationService;

    move-result-object v1

    if-nez v1, :cond_98

    .line 647
    const-string v1, "None"

    goto :goto_a6

    :cond_98
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    # getter for: Lcom/android/server/vr/VrManagerService;->mCurrentVrCompositorService:Lcom/android/server/utils/ManagedApplicationService;
    invoke-static {v1}, Lcom/android/server/vr/VrManagerService;->access$2900(Lcom/android/server/vr/VrManagerService;)Lcom/android/server/utils/ManagedApplicationService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/utils/ManagedApplicationService;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    :goto_a6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 645
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 648
    const-string v0, "Previous state transitions:\n"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 649
    const-string v0, "  "

    .line 650
    .local v0, "tab":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    # invokes: Lcom/android/server/vr/VrManagerService;->dumpStateTransitions(Ljava/io/PrintWriter;)V
    invoke-static {v1, p2}, Lcom/android/server/vr/VrManagerService;->access$3000(Lcom/android/server/vr/VrManagerService;Ljava/io/PrintWriter;)V

    .line 651
    const-string v1, "\n\nRemote Callbacks:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 652
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    # getter for: Lcom/android/server/vr/VrManagerService;->mVrStateRemoteCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v1}, Lcom/android/server/vr/VrManagerService;->access$700(Lcom/android/server/vr/VrManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 653
    .local v1, "i":I
    :goto_cb
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    if-lez v1, :cond_e8

    .line 654
    .end local v1    # "i":I
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 655
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    # getter for: Lcom/android/server/vr/VrManagerService;->mVrStateRemoteCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v1}, Lcom/android/server/vr/VrManagerService;->access$700(Lcom/android/server/vr/VrManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 656
    if-lez v2, :cond_e6

    const-string v1, ","

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 652
    :cond_e6
    move v1, v2

    goto :goto_cb

    .line 658
    :cond_e8
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    # getter for: Lcom/android/server/vr/VrManagerService;->mVrStateRemoteCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v1}, Lcom/android/server/vr/VrManagerService;->access$700(Lcom/android/server/vr/VrManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 659
    const-string v1, "\n\nPersistent Vr State Remote Callbacks:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 660
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    # getter for: Lcom/android/server/vr/VrManagerService;->mPersistentVrStateRemoteCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v1}, Lcom/android/server/vr/VrManagerService;->access$1000(Lcom/android/server/vr/VrManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 661
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :goto_100
    add-int/lit8 v2, v1, -0x1

    .restart local v2    # "i":I
    if-lez v1, :cond_11d

    .line 662
    .end local v1    # "i":I
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 663
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    # getter for: Lcom/android/server/vr/VrManagerService;->mPersistentVrStateRemoteCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v1}, Lcom/android/server/vr/VrManagerService;->access$1000(Lcom/android/server/vr/VrManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 664
    if-lez v2, :cond_11b

    const-string v1, ","

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 661
    :cond_11b
    move v1, v2

    goto :goto_100

    .line 666
    :cond_11d
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    # getter for: Lcom/android/server/vr/VrManagerService;->mPersistentVrStateRemoteCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v1}, Lcom/android/server/vr/VrManagerService;->access$1000(Lcom/android/server/vr/VrManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 667
    const-string v1, "\n"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 668
    const-string v1, "Installed VrListenerService components:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 669
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    # getter for: Lcom/android/server/vr/VrManagerService;->mCurrentVrModeUser:I
    invoke-static {v1}, Lcom/android/server/vr/VrManagerService;->access$3100(Lcom/android/server/vr/VrManagerService;)I

    move-result v1

    .line 670
    .local v1, "userId":I
    iget-object v3, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    # getter for: Lcom/android/server/vr/VrManagerService;->mComponentObserver:Lcom/android/server/vr/EnabledComponentsObserver;
    invoke-static {v3}, Lcom/android/server/vr/VrManagerService;->access$3200(Lcom/android/server/vr/VrManagerService;)Lcom/android/server/vr/EnabledComponentsObserver;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/server/vr/EnabledComponentsObserver;->getInstalled(I)Landroid/util/ArraySet;

    move-result-object v3

    .line 671
    .local v3, "installed":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    if-eqz v3, :cond_164

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-nez v4, :cond_149

    goto :goto_164

    .line 674
    :cond_149
    invoke-virtual {v3}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_14d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_169

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 675
    .local v5, "n":Landroid/content/ComponentName;
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 676
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 677
    .end local v5    # "n":Landroid/content/ComponentName;
    goto :goto_14d

    .line 672
    :cond_164
    :goto_164
    const-string v4, "None"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 679
    :cond_169
    const-string v4, "Enabled VrListenerService components:"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 680
    iget-object v4, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    # getter for: Lcom/android/server/vr/VrManagerService;->mComponentObserver:Lcom/android/server/vr/EnabledComponentsObserver;
    invoke-static {v4}, Lcom/android/server/vr/VrManagerService;->access$3200(Lcom/android/server/vr/VrManagerService;)Lcom/android/server/vr/EnabledComponentsObserver;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/server/vr/EnabledComponentsObserver;->getEnabled(I)Landroid/util/ArraySet;

    move-result-object v4

    .line 681
    .local v4, "enabled":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    if-eqz v4, :cond_19c

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-nez v5, :cond_181

    goto :goto_19c

    .line 684
    :cond_181
    invoke-virtual {v4}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_185
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1a1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    .line 685
    .local v6, "n":Landroid/content/ComponentName;
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 686
    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 687
    .end local v6    # "n":Landroid/content/ComponentName;
    goto :goto_185

    .line 682
    :cond_19c
    :goto_19c
    const-string v5, "None"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 689
    :cond_1a1
    const-string v5, "\n"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 690
    const-string v5, "********* End of VrManagerService Dump *********"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 691
    return-void
.end method

.method public getPersistentVrModeEnabled()Z
    .registers 4

    .line 590
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    const-string v1, "android.permission.ACCESS_VR_MANAGER"

    const-string v2, "android.permission.ACCESS_VR_STATE"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/vr/VrManagerService;->enforceCallerPermissionAnyOf([Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/vr/VrManagerService;->access$1700(Lcom/android/server/vr/VrManagerService;[Ljava/lang/String;)V

    .line 592
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    # invokes: Lcom/android/server/vr/VrManagerService;->getPersistentVrMode()Z
    invoke-static {v0}, Lcom/android/server/vr/VrManagerService;->access$2300(Lcom/android/server/vr/VrManagerService;)Z

    move-result v0

    return v0
.end method

.method public getVr2dDisplayId()I
    .registers 2

    .line 610
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    # invokes: Lcom/android/server/vr/VrManagerService;->getVr2dDisplayId()I
    invoke-static {v0}, Lcom/android/server/vr/VrManagerService;->access$2400(Lcom/android/server/vr/VrManagerService;)I

    move-result v0

    return v0
.end method

.method public getVrModeState()Z
    .registers 4

    .line 583
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    const-string v1, "android.permission.ACCESS_VR_MANAGER"

    const-string v2, "android.permission.ACCESS_VR_STATE"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/vr/VrManagerService;->enforceCallerPermissionAnyOf([Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/vr/VrManagerService;->access$1700(Lcom/android/server/vr/VrManagerService;[Ljava/lang/String;)V

    .line 585
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    # invokes: Lcom/android/server/vr/VrManagerService;->getVrMode()Z
    invoke-static {v0}, Lcom/android/server/vr/VrManagerService;->access$2200(Lcom/android/server/vr/VrManagerService;)Z

    move-result v0

    return v0
.end method

.method public registerListener(Landroid/service/vr/IVrStateCallbacks;)V
    .registers 5
    .param p1, "cb"    # Landroid/service/vr/IVrStateCallbacks;

    .line 539
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    const-string v1, "android.permission.ACCESS_VR_MANAGER"

    const-string v2, "android.permission.ACCESS_VR_STATE"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/vr/VrManagerService;->enforceCallerPermissionAnyOf([Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/vr/VrManagerService;->access$1700(Lcom/android/server/vr/VrManagerService;[Ljava/lang/String;)V

    .line 541
    if-eqz p1, :cond_15

    .line 545
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    # invokes: Lcom/android/server/vr/VrManagerService;->addStateCallback(Landroid/service/vr/IVrStateCallbacks;)V
    invoke-static {v0, p1}, Lcom/android/server/vr/VrManagerService;->access$1800(Lcom/android/server/vr/VrManagerService;Landroid/service/vr/IVrStateCallbacks;)V

    .line 546
    return-void

    .line 542
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Callback binder object is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerPersistentVrStateListener(Landroid/service/vr/IPersistentVrStateCallbacks;)V
    .registers 5
    .param p1, "cb"    # Landroid/service/vr/IPersistentVrStateCallbacks;

    .line 561
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    const-string v1, "android.permission.ACCESS_VR_MANAGER"

    const-string v2, "android.permission.ACCESS_VR_STATE"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/vr/VrManagerService;->enforceCallerPermissionAnyOf([Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/vr/VrManagerService;->access$1700(Lcom/android/server/vr/VrManagerService;[Ljava/lang/String;)V

    .line 563
    if-eqz p1, :cond_15

    .line 567
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    # invokes: Lcom/android/server/vr/VrManagerService;->addPersistentStateCallback(Landroid/service/vr/IPersistentVrStateCallbacks;)V
    invoke-static {v0, p1}, Lcom/android/server/vr/VrManagerService;->access$2000(Lcom/android/server/vr/VrManagerService;Landroid/service/vr/IPersistentVrStateCallbacks;)V

    .line 568
    return-void

    .line 564
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Callback binder object is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAndBindCompositor(Ljava/lang/String;)V
    .registers 4
    .param p1, "componentName"    # Ljava/lang/String;

    .line 615
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    const-string v1, "android.permission.RESTRICTED_VR_ACCESS"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/vr/VrManagerService;->enforceCallerPermissionAnyOf([Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/vr/VrManagerService;->access$1700(Lcom/android/server/vr/VrManagerService;[Ljava/lang/String;)V

    .line 616
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    .line 617
    if-nez p1, :cond_11

    const/4 v1, 0x0

    goto :goto_15

    :cond_11
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 616
    :goto_15
    # invokes: Lcom/android/server/vr/VrManagerService;->setAndBindCompositor(Landroid/content/ComponentName;)V
    invoke-static {v0, v1}, Lcom/android/server/vr/VrManagerService;->access$2500(Lcom/android/server/vr/VrManagerService;Landroid/content/ComponentName;)V

    .line 618
    return-void
.end method

.method public setPersistentVrModeEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .line 597
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    const-string v1, "android.permission.RESTRICTED_VR_ACCESS"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/vr/VrManagerService;->enforceCallerPermissionAnyOf([Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/vr/VrManagerService;->access$1700(Lcom/android/server/vr/VrManagerService;[Ljava/lang/String;)V

    .line 598
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    # invokes: Lcom/android/server/vr/VrManagerService;->setPersistentVrModeEnabled(Z)V
    invoke-static {v0, p1}, Lcom/android/server/vr/VrManagerService;->access$600(Lcom/android/server/vr/VrManagerService;Z)V

    .line 599
    return-void
.end method

.method public setStandbyEnabled(Z)V
    .registers 4
    .param p1, "standby"    # Z

    .line 622
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    const-string v1, "android.permission.ACCESS_VR_MANAGER"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/vr/VrManagerService;->enforceCallerPermissionAnyOf([Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/vr/VrManagerService;->access$1700(Lcom/android/server/vr/VrManagerService;[Ljava/lang/String;)V

    .line 623
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    # invokes: Lcom/android/server/vr/VrManagerService;->setStandbyEnabled(Z)V
    invoke-static {v0, p1}, Lcom/android/server/vr/VrManagerService;->access$2600(Lcom/android/server/vr/VrManagerService;Z)V

    .line 624
    return-void
.end method

.method public setVr2dDisplayProperties(Landroid/app/Vr2dDisplayProperties;)V
    .registers 4
    .param p1, "vr2dDisplayProp"    # Landroid/app/Vr2dDisplayProperties;

    .line 604
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    const-string v1, "android.permission.RESTRICTED_VR_ACCESS"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/vr/VrManagerService;->enforceCallerPermissionAnyOf([Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/vr/VrManagerService;->access$1700(Lcom/android/server/vr/VrManagerService;[Ljava/lang/String;)V

    .line 605
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/vr/VrManagerService;->setVr2dDisplayProperties(Landroid/app/Vr2dDisplayProperties;)V

    .line 606
    return-void
.end method

.method public setVrInputMethod(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 628
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    const-string v1, "android.permission.RESTRICTED_VR_ACCESS"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/vr/VrManagerService;->enforceCallerPermissionAnyOf([Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/vr/VrManagerService;->access$1700(Lcom/android/server/vr/VrManagerService;[Ljava/lang/String;)V

    .line 629
    const-class v0, Landroid/view/inputmethod/InputMethodManagerInternal;

    .line 630
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManagerInternal;

    .line 631
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManagerInternal;
    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputMethodManagerInternal;->startVrInputMethodNoCheck(Landroid/content/ComponentName;)V

    .line 632
    return-void
.end method

.method public unregisterListener(Landroid/service/vr/IVrStateCallbacks;)V
    .registers 5
    .param p1, "cb"    # Landroid/service/vr/IVrStateCallbacks;

    .line 550
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    const-string v1, "android.permission.ACCESS_VR_MANAGER"

    const-string v2, "android.permission.ACCESS_VR_STATE"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/vr/VrManagerService;->enforceCallerPermissionAnyOf([Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/vr/VrManagerService;->access$1700(Lcom/android/server/vr/VrManagerService;[Ljava/lang/String;)V

    .line 552
    if-eqz p1, :cond_15

    .line 556
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    # invokes: Lcom/android/server/vr/VrManagerService;->removeStateCallback(Landroid/service/vr/IVrStateCallbacks;)V
    invoke-static {v0, p1}, Lcom/android/server/vr/VrManagerService;->access$1900(Lcom/android/server/vr/VrManagerService;Landroid/service/vr/IVrStateCallbacks;)V

    .line 557
    return-void

    .line 553
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Callback binder object is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterPersistentVrStateListener(Landroid/service/vr/IPersistentVrStateCallbacks;)V
    .registers 5
    .param p1, "cb"    # Landroid/service/vr/IPersistentVrStateCallbacks;

    .line 572
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    const-string v1, "android.permission.ACCESS_VR_MANAGER"

    const-string v2, "android.permission.ACCESS_VR_STATE"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/vr/VrManagerService;->enforceCallerPermissionAnyOf([Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/vr/VrManagerService;->access$1700(Lcom/android/server/vr/VrManagerService;[Ljava/lang/String;)V

    .line 574
    if-eqz p1, :cond_15

    .line 578
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    # invokes: Lcom/android/server/vr/VrManagerService;->removePersistentStateCallback(Landroid/service/vr/IPersistentVrStateCallbacks;)V
    invoke-static {v0, p1}, Lcom/android/server/vr/VrManagerService;->access$2100(Lcom/android/server/vr/VrManagerService;Landroid/service/vr/IPersistentVrStateCallbacks;)V

    .line 579
    return-void

    .line 575
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Callback binder object is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
