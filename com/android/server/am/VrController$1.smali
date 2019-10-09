.class Lcom/android/server/am/VrController$1;
.super Landroid/service/vr/IPersistentVrStateCallbacks$Stub;
.source "VrController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/VrController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/VrController;


# direct methods
.method constructor <init>(Lcom/android/server/am/VrController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/am/VrController;

    .line 109
    iput-object p1, p0, Lcom/android/server/am/VrController$1;->this$0:Lcom/android/server/am/VrController;

    invoke-direct {p0}, Landroid/service/vr/IPersistentVrStateCallbacks$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onPersistentVrStateChanged(Z)V
    .registers 7
    .param p1, "enabled"    # Z

    .line 112
    iget-object v0, p0, Lcom/android/server/am/VrController$1;->this$0:Lcom/android/server/am/VrController;

    # getter for: Lcom/android/server/am/VrController;->mGlobalAmLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/am/VrController;->access$000(Lcom/android/server/am/VrController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 115
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_1a

    .line 116
    :try_start_b
    iget-object v3, p0, Lcom/android/server/am/VrController$1;->this$0:Lcom/android/server/am/VrController;

    const/4 v4, 0x3

    # invokes: Lcom/android/server/am/VrController;->setVrRenderThreadLocked(IIZ)I
    invoke-static {v3, v2, v4, v1}, Lcom/android/server/am/VrController;->access$100(Lcom/android/server/am/VrController;IIZ)I

    .line 117
    iget-object v1, p0, Lcom/android/server/am/VrController$1;->this$0:Lcom/android/server/am/VrController;

    const/4 v2, 0x2

    # |= operator for: Lcom/android/server/am/VrController;->mVrState:I
    invoke-static {v1, v2}, Lcom/android/server/am/VrController;->access$276(Lcom/android/server/am/VrController;I)I

    goto :goto_25

    .line 122
    :catchall_18
    move-exception v1

    goto :goto_27

    .line 119
    :cond_1a
    iget-object v3, p0, Lcom/android/server/am/VrController$1;->this$0:Lcom/android/server/am/VrController;

    # invokes: Lcom/android/server/am/VrController;->setPersistentVrRenderThreadLocked(IZ)I
    invoke-static {v3, v2, v1}, Lcom/android/server/am/VrController;->access$300(Lcom/android/server/am/VrController;IZ)I

    .line 120
    iget-object v1, p0, Lcom/android/server/am/VrController$1;->this$0:Lcom/android/server/am/VrController;

    const/4 v2, -0x3

    # &= operator for: Lcom/android/server/am/VrController;->mVrState:I
    invoke-static {v1, v2}, Lcom/android/server/am/VrController;->access$272(Lcom/android/server/am/VrController;I)I

    .line 122
    :goto_25
    monitor-exit v0

    .line 123
    return-void

    .line 122
    :goto_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_b .. :try_end_28} :catchall_18

    throw v1
.end method
