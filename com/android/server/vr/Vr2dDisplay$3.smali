.class Lcom/android/server/vr/Vr2dDisplay$3;
.super Ljava/lang/Object;
.source "Vr2dDisplay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/vr/Vr2dDisplay;->stopVirtualDisplay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vr/Vr2dDisplay;


# direct methods
.method constructor <init>(Lcom/android/server/vr/Vr2dDisplay;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/vr/Vr2dDisplay;

    .line 330
    iput-object p1, p0, Lcom/android/server/vr/Vr2dDisplay$3;->this$0:Lcom/android/server/vr/Vr2dDisplay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 333
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay$3;->this$0:Lcom/android/server/vr/Vr2dDisplay;

    # invokes: Lcom/android/server/vr/Vr2dDisplay;->shouldRunVirtualDisplay()Z
    invoke-static {v0}, Lcom/android/server/vr/Vr2dDisplay;->access$200(Lcom/android/server/vr/Vr2dDisplay;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 334
    const-string v0, "Vr2dDisplay"

    const-string v1, "Virtual Display destruction stopped: VrMode is back on."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_46

    .line 336
    :cond_10
    const-string v0, "Vr2dDisplay"

    const-string v1, "Stopping Virtual Display"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay$3;->this$0:Lcom/android/server/vr/Vr2dDisplay;

    # getter for: Lcom/android/server/vr/Vr2dDisplay;->mVdLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/vr/Vr2dDisplay;->access$300(Lcom/android/server/vr/Vr2dDisplay;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 338
    :try_start_1e
    iget-object v1, p0, Lcom/android/server/vr/Vr2dDisplay$3;->this$0:Lcom/android/server/vr/Vr2dDisplay;

    const/4 v2, -0x1

    # invokes: Lcom/android/server/vr/Vr2dDisplay;->updateDisplayId(I)V
    invoke-static {v1, v2}, Lcom/android/server/vr/Vr2dDisplay;->access$400(Lcom/android/server/vr/Vr2dDisplay;I)V

    .line 339
    iget-object v1, p0, Lcom/android/server/vr/Vr2dDisplay$3;->this$0:Lcom/android/server/vr/Vr2dDisplay;

    const/4 v2, 0x0

    # invokes: Lcom/android/server/vr/Vr2dDisplay;->setSurfaceLocked(Landroid/view/Surface;)V
    invoke-static {v1, v2}, Lcom/android/server/vr/Vr2dDisplay;->access$500(Lcom/android/server/vr/Vr2dDisplay;Landroid/view/Surface;)V

    .line 340
    iget-object v1, p0, Lcom/android/server/vr/Vr2dDisplay$3;->this$0:Lcom/android/server/vr/Vr2dDisplay;

    # getter for: Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;
    invoke-static {v1}, Lcom/android/server/vr/Vr2dDisplay;->access$600(Lcom/android/server/vr/Vr2dDisplay;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v1

    if-eqz v1, :cond_40

    .line 341
    iget-object v1, p0, Lcom/android/server/vr/Vr2dDisplay$3;->this$0:Lcom/android/server/vr/Vr2dDisplay;

    # getter for: Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;
    invoke-static {v1}, Lcom/android/server/vr/Vr2dDisplay;->access$600(Lcom/android/server/vr/Vr2dDisplay;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/VirtualDisplay;->release()V

    .line 342
    iget-object v1, p0, Lcom/android/server/vr/Vr2dDisplay$3;->this$0:Lcom/android/server/vr/Vr2dDisplay;

    # setter for: Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;
    invoke-static {v1, v2}, Lcom/android/server/vr/Vr2dDisplay;->access$602(Lcom/android/server/vr/Vr2dDisplay;Landroid/hardware/display/VirtualDisplay;)Landroid/hardware/display/VirtualDisplay;

    .line 344
    :cond_40
    iget-object v1, p0, Lcom/android/server/vr/Vr2dDisplay$3;->this$0:Lcom/android/server/vr/Vr2dDisplay;

    # invokes: Lcom/android/server/vr/Vr2dDisplay;->stopImageReader()V
    invoke-static {v1}, Lcom/android/server/vr/Vr2dDisplay;->access$700(Lcom/android/server/vr/Vr2dDisplay;)V

    .line 345
    monitor-exit v0

    .line 347
    :goto_46
    return-void

    .line 345
    :catchall_47
    move-exception v1

    monitor-exit v0
    :try_end_49
    .catchall {:try_start_1e .. :try_end_49} :catchall_47

    throw v1
.end method