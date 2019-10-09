.class Lcom/android/server/camera/CameraServiceProxy$2;
.super Landroid/hardware/ICameraServiceProxy$Stub;
.source "CameraServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/camera/CameraServiceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/camera/CameraServiceProxy;


# direct methods
.method constructor <init>(Lcom/android/server/camera/CameraServiceProxy;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/camera/CameraServiceProxy;

    .line 165
    iput-object p1, p0, Lcom/android/server/camera/CameraServiceProxy$2;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    invoke-direct {p0}, Landroid/hardware/ICameraServiceProxy$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyCameraState(Ljava/lang/String;IILjava/lang/String;I)V
    .registers 14
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "newCameraState"    # I
    .param p3, "facing"    # I
    .param p4, "clientName"    # Ljava/lang/String;
    .param p5, "apiLevel"    # I

    .line 179
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x417

    if-eq v0, v1, :cond_28

    .line 180
    const-string v0, "CameraService_proxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling UID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " doesn\'t match expected  camera service UID!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    return-void

    .line 184
    :cond_28
    # invokes: Lcom/android/server/camera/CameraServiceProxy;->cameraStateToString(I)Ljava/lang/String;
    invoke-static {p2}, Lcom/android/server/camera/CameraServiceProxy;->access$500(I)Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, "state":Ljava/lang/String;
    # invokes: Lcom/android/server/camera/CameraServiceProxy;->cameraFacingToString(I)Ljava/lang/String;
    invoke-static {p3}, Lcom/android/server/camera/CameraServiceProxy;->access$600(I)Ljava/lang/String;

    move-result-object v1

    .line 189
    .local v1, "facingStr":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/camera/CameraServiceProxy$2;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    # invokes: Lcom/android/server/camera/CameraServiceProxy;->updateActivityCount(Ljava/lang/String;IILjava/lang/String;I)V
    invoke-static/range {v2 .. v7}, Lcom/android/server/camera/CameraServiceProxy;->access$700(Lcom/android/server/camera/CameraServiceProxy;Ljava/lang/String;IILjava/lang/String;I)V

    .line 190
    return-void
.end method

.method public pingForUserUpdate()V
    .registers 4

    .line 168
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x417

    if-eq v0, v1, :cond_28

    .line 169
    const-string v0, "CameraService_proxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling UID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " doesn\'t match expected  camera service UID!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    return-void

    .line 173
    :cond_28
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy$2;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    const/16 v1, 0x1e

    # invokes: Lcom/android/server/camera/CameraServiceProxy;->notifySwitchWithRetries(I)V
    invoke-static {v0, v1}, Lcom/android/server/camera/CameraServiceProxy;->access$400(Lcom/android/server/camera/CameraServiceProxy;I)V

    .line 174
    return-void
.end method
