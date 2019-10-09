.class Lcom/android/server/am/MiuiSysUserServiceHelper$UserHandler;
.super Landroid/os/Handler;
.source "MiuiSysUserServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MiuiSysUserServiceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UserHandler"
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .registers 2
    .param p1, "looper"    # Landroid/os/Looper;

    .line 47
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 48
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 52
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_10

    goto :goto_f

    .line 57
    :pswitch_7
    # setter for: Lcom/android/server/am/MiuiSysUserServiceHelper;->sInputLimit:Z
    invoke-static {v1}, Lcom/android/server/am/MiuiSysUserServiceHelper;->access$102(Z)Z

    goto :goto_f

    .line 54
    :pswitch_b
    # setter for: Lcom/android/server/am/MiuiSysUserServiceHelper;->sIsLimit:Z
    invoke-static {v1}, Lcom/android/server/am/MiuiSysUserServiceHelper;->access$002(Z)Z

    .line 55
    nop

    .line 60
    :goto_f
    return-void

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_b
        :pswitch_7
    .end packed-switch
.end method
