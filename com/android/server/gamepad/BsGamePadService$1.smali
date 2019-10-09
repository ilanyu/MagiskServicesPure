.class Lcom/android/server/gamepad/BsGamePadService$1;
.super Landroid/os/Handler;
.source "BsGamePadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/gamepad/BsGamePadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/gamepad/BsGamePadService;


# direct methods
.method constructor <init>(Lcom/android/server/gamepad/BsGamePadService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/gamepad/BsGamePadService;

    .line 56
    iput-object p1, p0, Lcom/android/server/gamepad/BsGamePadService$1;->this$0:Lcom/android/server/gamepad/BsGamePadService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 59
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_42

    goto :goto_41

    .line 69
    :pswitch_7
    iget-object v0, p0, Lcom/android/server/gamepad/BsGamePadService$1;->this$0:Lcom/android/server/gamepad/BsGamePadService;

    # getter for: Lcom/android/server/gamepad/BsGamePadService;->mInputFilter:Lcom/android/server/gamepad/BsGamePadInputFilter;
    invoke-static {v0}, Lcom/android/server/gamepad/BsGamePadService;->access$100(Lcom/android/server/gamepad/BsGamePadService;)Lcom/android/server/gamepad/BsGamePadInputFilter;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 70
    iget-object v0, p0, Lcom/android/server/gamepad/BsGamePadService$1;->this$0:Lcom/android/server/gamepad/BsGamePadService;

    # getter for: Lcom/android/server/gamepad/BsGamePadService;->mInputFilter:Lcom/android/server/gamepad/BsGamePadInputFilter;
    invoke-static {v0}, Lcom/android/server/gamepad/BsGamePadService;->access$100(Lcom/android/server/gamepad/BsGamePadService;)Lcom/android/server/gamepad/BsGamePadInputFilter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/gamepad/BsGamePadInputFilter;->unloadKeyMap()V

    .line 72
    :cond_18
    iget-object v0, p0, Lcom/android/server/gamepad/BsGamePadService$1;->this$0:Lcom/android/server/gamepad/BsGamePadService;

    # invokes: Lcom/android/server/gamepad/BsGamePadService;->updateGamePadFilter(Z)V
    invoke-static {v0, v1}, Lcom/android/server/gamepad/BsGamePadService;->access$000(Lcom/android/server/gamepad/BsGamePadService;Z)V

    .line 73
    goto :goto_41

    .line 61
    :pswitch_1e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    .line 62
    .local v0, "mapper":Ljava/util/Map;
    iget v2, p1, Landroid/os/Message;->arg1:I

    const/4 v3, 0x1

    if-lez v2, :cond_29

    move v1, v3

    nop

    .line 63
    .local v1, "isChooseMove":Z
    :cond_29
    iget-object v2, p0, Lcom/android/server/gamepad/BsGamePadService$1;->this$0:Lcom/android/server/gamepad/BsGamePadService;

    # invokes: Lcom/android/server/gamepad/BsGamePadService;->updateGamePadFilter(Z)V
    invoke-static {v2, v3}, Lcom/android/server/gamepad/BsGamePadService;->access$000(Lcom/android/server/gamepad/BsGamePadService;Z)V

    .line 64
    iget-object v2, p0, Lcom/android/server/gamepad/BsGamePadService$1;->this$0:Lcom/android/server/gamepad/BsGamePadService;

    # getter for: Lcom/android/server/gamepad/BsGamePadService;->mInputFilter:Lcom/android/server/gamepad/BsGamePadInputFilter;
    invoke-static {v2}, Lcom/android/server/gamepad/BsGamePadService;->access$100(Lcom/android/server/gamepad/BsGamePadService;)Lcom/android/server/gamepad/BsGamePadInputFilter;

    move-result-object v2

    if-eqz v2, :cond_41

    .line 65
    iget-object v2, p0, Lcom/android/server/gamepad/BsGamePadService$1;->this$0:Lcom/android/server/gamepad/BsGamePadService;

    # getter for: Lcom/android/server/gamepad/BsGamePadService;->mInputFilter:Lcom/android/server/gamepad/BsGamePadInputFilter;
    invoke-static {v2}, Lcom/android/server/gamepad/BsGamePadService;->access$100(Lcom/android/server/gamepad/BsGamePadService;)Lcom/android/server/gamepad/BsGamePadInputFilter;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/server/gamepad/BsGamePadInputFilter;->loadKeyMap(Ljava/util/Map;ZI)V

    .line 77
    .end local v0    # "mapper":Ljava/util/Map;
    .end local v1    # "isChooseMove":Z
    :cond_41
    :goto_41
    return-void

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_7
    .end packed-switch
.end method
