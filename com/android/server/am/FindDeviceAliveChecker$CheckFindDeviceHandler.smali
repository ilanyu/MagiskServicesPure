.class final Lcom/android/server/am/FindDeviceAliveChecker$CheckFindDeviceHandler;
.super Landroid/os/Handler;
.source "FindDeviceAliveChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/FindDeviceAliveChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CheckFindDeviceHandler"
.end annotation


# static fields
.field private static final WHAT_CHECK_FINDDEVICE_ALIVE:I


# direct methods
.method private constructor <init>(Landroid/os/Looper;)V
    .registers 2
    .param p1, "looper"    # Landroid/os/Looper;

    .line 79
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 80
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Looper;Lcom/android/server/am/FindDeviceAliveChecker$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Looper;
    .param p2, "x1"    # Lcom/android/server/am/FindDeviceAliveChecker$1;

    .line 74
    invoke-direct {p0, p1}, Lcom/android/server/am/FindDeviceAliveChecker$CheckFindDeviceHandler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 84
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 86
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_8

    goto :goto_10

    .line 88
    :cond_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    .line 89
    .local v0, "context":Landroid/content/Context;
    # invokes: Lcom/android/server/am/FindDeviceAliveChecker;->checkFindDeviceAlive(Landroid/content/Context;)V
    invoke-static {v0}, Lcom/android/server/am/FindDeviceAliveChecker;->access$100(Landroid/content/Context;)V

    .line 90
    .end local v0    # "context":Landroid/content/Context;
    nop

    .line 93
    :goto_10
    return-void
.end method
