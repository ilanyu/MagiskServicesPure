.class final Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;
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
    name = "HotplugEventListenerRecord"
.end annotation


# instance fields
.field private final mListener:Landroid/hardware/hdmi/IHdmiHotplugEventListener;

.field final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V
    .registers 3
    .param p2, "listener"    # Landroid/hardware/hdmi/IHdmiHotplugEventListener;

    .line 1123
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1124
    iput-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;->mListener:Landroid/hardware/hdmi/IHdmiHotplugEventListener;

    .line 1125
    return-void
.end method

.method static synthetic access$4800(Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;)Landroid/hardware/hdmi/IHdmiHotplugEventListener;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;

    .line 1120
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;->mListener:Landroid/hardware/hdmi/IHdmiHotplugEventListener;

    return-object v0
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 1129
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    # getter for: Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$2100(Lcom/android/server/hdmi/HdmiControlService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1130
    :try_start_7
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    # getter for: Lcom/android/server/hdmi/HdmiControlService;->mHotplugEventListenerRecords:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService;->access$2200(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1131
    monitor-exit v0

    .line 1132
    return-void

    .line 1131
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1136
    instance-of v0, p1, Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 1137
    :cond_6
    const/4 v0, 0x1

    if-ne p1, p0, :cond_a

    return v0

    .line 1138
    :cond_a
    move-object v2, p1

    check-cast v2, Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;

    .line 1139
    .local v2, "other":Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;
    iget-object v3, v2, Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;->mListener:Landroid/hardware/hdmi/IHdmiHotplugEventListener;

    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;->mListener:Landroid/hardware/hdmi/IHdmiHotplugEventListener;

    if-ne v3, v4, :cond_14

    goto :goto_15

    :cond_14
    move v0, v1

    :goto_15
    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 1144
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;->mListener:Landroid/hardware/hdmi/IHdmiHotplugEventListener;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
