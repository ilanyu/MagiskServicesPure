.class final Lcom/android/server/am/AppWarnings$ConfigHandler;
.super Landroid/os/Handler;
.source "AppWarnings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppWarnings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ConfigHandler"
.end annotation


# static fields
.field private static final DELAY_MSG_WRITE:I = 0x2710

.field private static final MSG_WRITE:I = 0x12c


# instance fields
.field final synthetic this$0:Lcom/android/server/am/AppWarnings;


# direct methods
.method public constructor <init>(Lcom/android/server/am/AppWarnings;Landroid/os/Looper;)V
    .registers 4
    .param p2, "looper"    # Landroid/os/Looper;

    .line 449
    iput-object p1, p0, Lcom/android/server/am/AppWarnings$ConfigHandler;->this$0:Lcom/android/server/am/AppWarnings;

    .line 450
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 451
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 455
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x12c

    if-eq v0, v1, :cond_7

    goto :goto_c

    .line 457
    :cond_7
    iget-object v0, p0, Lcom/android/server/am/AppWarnings$ConfigHandler;->this$0:Lcom/android/server/am/AppWarnings;

    # invokes: Lcom/android/server/am/AppWarnings;->writeConfigToFileAmsThread()V
    invoke-static {v0}, Lcom/android/server/am/AppWarnings;->access$500(Lcom/android/server/am/AppWarnings;)V

    .line 460
    :goto_c
    return-void
.end method

.method public scheduleWrite()V
    .registers 4

    .line 463
    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Lcom/android/server/am/AppWarnings$ConfigHandler;->removeMessages(I)V

    .line 464
    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/am/AppWarnings$ConfigHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 465
    return-void
.end method
