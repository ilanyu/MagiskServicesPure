.class final Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;
.super Ljava/lang/Object;
.source "HdmiControlService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InputChangeListenerRecord"
.end annotation


# instance fields
.field private final mListener:Landroid/hardware/hdmi/IHdmiInputChangeListener;

.field final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiInputChangeListener;)V
    .registers 3
    .param p2, "listener"    # Landroid/hardware/hdmi/IHdmiInputChangeListener;

    .line 1835
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1836
    iput-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;->mListener:Landroid/hardware/hdmi/IHdmiInputChangeListener;

    .line 1837
    return-void
.end method

.method static synthetic access$5100(Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;)Landroid/hardware/hdmi/IHdmiInputChangeListener;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;

    .line 1832
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;->mListener:Landroid/hardware/hdmi/IHdmiInputChangeListener;

    return-object v0
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    .line 1841
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    # getter for: Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$2100(Lcom/android/server/hdmi/HdmiControlService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1842
    :try_start_7
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    # getter for: Lcom/android/server/hdmi/HdmiControlService;->mInputChangeListenerRecord:Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService;->access$5000(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;

    move-result-object v1

    if-ne v1, p0, :cond_15

    .line 1843
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/hdmi/HdmiControlService;->mInputChangeListenerRecord:Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;
    invoke-static {v1, v2}, Lcom/android/server/hdmi/HdmiControlService;->access$5002(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;)Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;

    .line 1845
    :cond_15
    monitor-exit v0

    .line 1846
    return-void

    .line 1845
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_17

    throw v1
.end method
