.class final Lcom/android/server/policy/ImmersiveModeConfirmation$H;
.super Landroid/os/Handler;
.source "ImmersiveModeConfirmation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/ImmersiveModeConfirmation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# static fields
.field private static final HIDE:I = 0x2

.field private static final SHOW:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/ImmersiveModeConfirmation;)V
    .registers 2

    .line 382
    iput-object p1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$H;->this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/ImmersiveModeConfirmation;Lcom/android/server/policy/ImmersiveModeConfirmation$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/policy/ImmersiveModeConfirmation;
    .param p2, "x1"    # Lcom/android/server/policy/ImmersiveModeConfirmation$1;

    .line 382
    invoke-direct {p0, p1}, Lcom/android/server/policy/ImmersiveModeConfirmation$H;-><init>(Lcom/android/server/policy/ImmersiveModeConfirmation;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 388
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_14

    goto :goto_12

    .line 393
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$H;->this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;

    # invokes: Lcom/android/server/policy/ImmersiveModeConfirmation;->handleHide()V
    invoke-static {v0}, Lcom/android/server/policy/ImmersiveModeConfirmation;->access$1000(Lcom/android/server/policy/ImmersiveModeConfirmation;)V

    goto :goto_12

    .line 390
    :pswitch_c
    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$H;->this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;

    # invokes: Lcom/android/server/policy/ImmersiveModeConfirmation;->handleShow()V
    invoke-static {v0}, Lcom/android/server/policy/ImmersiveModeConfirmation;->access$1100(Lcom/android/server/policy/ImmersiveModeConfirmation;)V

    .line 391
    nop

    .line 396
    :goto_12
    return-void

    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_c
        :pswitch_6
    .end packed-switch
.end method
