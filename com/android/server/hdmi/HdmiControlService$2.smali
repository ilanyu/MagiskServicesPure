.class Lcom/android/server/hdmi/HdmiControlService$2;
.super Ljava/lang/Object;
.source "HdmiControlService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/HdmiControlService;->addHotplugEventListener(Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;

.field final synthetic val$listener:Landroid/hardware/hdmi/IHdmiHotplugEventListener;

.field final synthetic val$record:Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/hdmi/HdmiControlService;

    .line 1751
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$2;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    iput-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$2;->val$record:Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;

    iput-object p3, p0, Lcom/android/server/hdmi/HdmiControlService$2;->val$listener:Landroid/hardware/hdmi/IHdmiHotplugEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 1754
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$2;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    # getter for: Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$2100(Lcom/android/server/hdmi/HdmiControlService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1755
    :try_start_7
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$2;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    # getter for: Lcom/android/server/hdmi/HdmiControlService;->mHotplugEventListenerRecords:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService;->access$2200(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$2;->val$record:Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    monitor-exit v0

    return-void

    .line 1756
    :cond_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_59

    .line 1757
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$2;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    # getter for: Lcom/android/server/hdmi/HdmiControlService;->mPortInfo:Ljava/util/List;
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$4500(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_58

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/hdmi/HdmiPortInfo;

    .line 1758
    .local v1, "port":Landroid/hardware/hdmi/HdmiPortInfo;
    new-instance v2, Landroid/hardware/hdmi/HdmiHotplugEvent;

    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiPortInfo;->getId()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService$2;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 1759
    # getter for: Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;
    invoke-static {v4}, Lcom/android/server/hdmi/HdmiControlService;->access$1100(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecController;

    move-result-object v4

    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiPortInfo;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/hdmi/HdmiCecController;->isConnected(I)Z

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/hardware/hdmi/HdmiHotplugEvent;-><init>(IZ)V

    .line 1760
    .local v2, "event":Landroid/hardware/hdmi/HdmiHotplugEvent;
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService$2;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    # getter for: Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/server/hdmi/HdmiControlService;->access$2100(Lcom/android/server/hdmi/HdmiControlService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1761
    :try_start_4c
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService$2;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    iget-object v5, p0, Lcom/android/server/hdmi/HdmiControlService$2;->val$listener:Landroid/hardware/hdmi/IHdmiHotplugEventListener;

    # invokes: Lcom/android/server/hdmi/HdmiControlService;->invokeHotplugEventListenerLocked(Landroid/hardware/hdmi/IHdmiHotplugEventListener;Landroid/hardware/hdmi/HdmiHotplugEvent;)V
    invoke-static {v4, v5, v2}, Lcom/android/server/hdmi/HdmiControlService;->access$4700(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiHotplugEventListener;Landroid/hardware/hdmi/HdmiHotplugEvent;)V

    .line 1762
    monitor-exit v3

    .line 1763
    .end local v1    # "port":Landroid/hardware/hdmi/HdmiPortInfo;
    .end local v2    # "event":Landroid/hardware/hdmi/HdmiHotplugEvent;
    goto :goto_22

    .line 1762
    .restart local v1    # "port":Landroid/hardware/hdmi/HdmiPortInfo;
    .restart local v2    # "event":Landroid/hardware/hdmi/HdmiHotplugEvent;
    :catchall_55
    move-exception v0

    monitor-exit v3
    :try_end_57
    .catchall {:try_start_4c .. :try_end_57} :catchall_55

    throw v0

    .line 1764
    .end local v1    # "port":Landroid/hardware/hdmi/HdmiPortInfo;
    .end local v2    # "event":Landroid/hardware/hdmi/HdmiHotplugEvent;
    :cond_58
    return-void

    .line 1756
    :catchall_59
    move-exception v1

    :try_start_5a
    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_59

    throw v1
.end method
