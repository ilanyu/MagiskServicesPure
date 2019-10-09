.class Lcom/miui/server/PerfShielderService$BindServiceHandler;
.super Landroid/os/Handler;
.source "PerfShielderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/PerfShielderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BindServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/server/PerfShielderService;


# direct methods
.method public constructor <init>(Lcom/miui/server/PerfShielderService;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 889
    iput-object p1, p0, Lcom/miui/server/PerfShielderService$BindServiceHandler;->this$0:Lcom/miui/server/PerfShielderService;

    .line 890
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 891
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 895
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_14

    goto :goto_12

    .line 900
    :pswitch_6
    iget-object v0, p0, Lcom/miui/server/PerfShielderService$BindServiceHandler;->this$0:Lcom/miui/server/PerfShielderService;

    # invokes: Lcom/miui/server/PerfShielderService;->bindMiuiSysUser()V
    invoke-static {v0}, Lcom/miui/server/PerfShielderService;->access$1300(Lcom/miui/server/PerfShielderService;)V

    goto :goto_12

    .line 897
    :pswitch_c
    iget-object v0, p0, Lcom/miui/server/PerfShielderService$BindServiceHandler;->this$0:Lcom/miui/server/PerfShielderService;

    # invokes: Lcom/miui/server/PerfShielderService;->bindService()V
    invoke-static {v0}, Lcom/miui/server/PerfShielderService;->access$100(Lcom/miui/server/PerfShielderService;)V

    .line 898
    nop

    .line 903
    :goto_12
    return-void

    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_c
        :pswitch_6
    .end packed-switch
.end method
