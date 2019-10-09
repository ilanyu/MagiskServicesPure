.class Lcom/android/server/wm/MiuiGestureController$3;
.super Landroid/database/ContentObserver;
.source "MiuiGestureController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/MiuiGestureController;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/MiuiGestureController;


# direct methods
.method constructor <init>(Lcom/android/server/wm/MiuiGestureController;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/wm/MiuiGestureController;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 124
    iput-object p1, p0, Lcom/android/server/wm/MiuiGestureController$3;->this$0:Lcom/android/server/wm/MiuiGestureController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 5
    .param p1, "selfChange"    # Z

    .line 127
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController$3;->this$0:Lcom/android/server/wm/MiuiGestureController;

    iget-object v1, p0, Lcom/android/server/wm/MiuiGestureController$3;->this$0:Lcom/android/server/wm/MiuiGestureController;

    # getter for: Lcom/android/server/wm/MiuiGestureController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/wm/MiuiGestureController;->access$200(Lcom/android/server/wm/MiuiGestureController;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, -0x2

    invoke-static {v1, v2}, Landroid/provider/MiuiSettings$System;->isSuperSaveModeOpen(Landroid/content/Context;I)Z

    move-result v1

    # setter for: Lcom/android/server/wm/MiuiGestureController;->mIsSuperSavePowerMode:Z
    invoke-static {v0, v1}, Lcom/android/server/wm/MiuiGestureController;->access$702(Lcom/android/server/wm/MiuiGestureController;Z)Z

    .line 128
    return-void
.end method
