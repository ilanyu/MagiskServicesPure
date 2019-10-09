.class Lcom/android/server/policy/MiuiGlobalActions$7;
.super Landroid/os/Handler;
.source "MiuiGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/MiuiGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/MiuiGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/MiuiGlobalActions;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/policy/MiuiGlobalActions;

    .line 369
    iput-object p1, p0, Lcom/android/server/policy/MiuiGlobalActions$7;->this$0:Lcom/android/server/policy/MiuiGlobalActions;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 371
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_14

    goto :goto_12

    .line 376
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/policy/MiuiGlobalActions$7;->this$0:Lcom/android/server/policy/MiuiGlobalActions;

    # invokes: Lcom/android/server/policy/MiuiGlobalActions;->updateVariables()V
    invoke-static {v0}, Lcom/android/server/policy/MiuiGlobalActions;->access$600(Lcom/android/server/policy/MiuiGlobalActions;)V

    goto :goto_12

    .line 373
    :pswitch_c
    iget-object v0, p0, Lcom/android/server/policy/MiuiGlobalActions$7;->this$0:Lcom/android/server/policy/MiuiGlobalActions;

    invoke-virtual {v0}, Lcom/android/server/policy/MiuiGlobalActions;->dismiss()V

    .line 374
    nop

    .line 379
    :goto_12
    return-void

    nop

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_c
        :pswitch_6
    .end packed-switch
.end method
