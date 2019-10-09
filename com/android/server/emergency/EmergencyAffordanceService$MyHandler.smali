.class Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;
.super Landroid/os/Handler;
.source "EmergencyAffordanceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/emergency/EmergencyAffordanceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/emergency/EmergencyAffordanceService;


# direct methods
.method public constructor <init>(Lcom/android/server/emergency/EmergencyAffordanceService;Landroid/os/Looper;)V
    .registers 3
    .param p2, "l"    # Landroid/os/Looper;

    .line 186
    iput-object p1, p0, Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;->this$0:Lcom/android/server/emergency/EmergencyAffordanceService;

    .line 187
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 188
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 192
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1a

    goto :goto_18

    .line 200
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;->this$0:Lcom/android/server/emergency/EmergencyAffordanceService;

    # invokes: Lcom/android/server/emergency/EmergencyAffordanceService;->handleUpdateSimSubscriptionInfo()Z
    invoke-static {v0}, Lcom/android/server/emergency/EmergencyAffordanceService;->access$600(Lcom/android/server/emergency/EmergencyAffordanceService;)Z

    goto :goto_18

    .line 197
    :pswitch_c
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;->this$0:Lcom/android/server/emergency/EmergencyAffordanceService;

    # invokes: Lcom/android/server/emergency/EmergencyAffordanceService;->handleUpdateCellInfo()Z
    invoke-static {v0}, Lcom/android/server/emergency/EmergencyAffordanceService;->access$500(Lcom/android/server/emergency/EmergencyAffordanceService;)Z

    .line 198
    goto :goto_18

    .line 194
    :pswitch_12
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;->this$0:Lcom/android/server/emergency/EmergencyAffordanceService;

    # invokes: Lcom/android/server/emergency/EmergencyAffordanceService;->handleInitializeState()V
    invoke-static {v0}, Lcom/android/server/emergency/EmergencyAffordanceService;->access$400(Lcom/android/server/emergency/EmergencyAffordanceService;)V

    .line 195
    nop

    .line 203
    :goto_18
    return-void

    nop

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_12
        :pswitch_c
        :pswitch_6
    .end packed-switch
.end method
