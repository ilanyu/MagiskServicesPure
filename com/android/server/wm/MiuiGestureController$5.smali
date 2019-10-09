.class Lcom/android/server/wm/MiuiGestureController$5;
.super Landroid/database/ContentObserver;
.source "MiuiGestureController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/MiuiGestureController;
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

    .line 267
    iput-object p1, p0, Lcom/android/server/wm/MiuiGestureController$5;->this$0:Lcom/android/server/wm/MiuiGestureController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 7
    .param p1, "selfChange"    # Z

    .line 270
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController$5;->this$0:Lcom/android/server/wm/MiuiGestureController;

    iget-object v1, p0, Lcom/android/server/wm/MiuiGestureController$5;->this$0:Lcom/android/server/wm/MiuiGestureController;

    # getter for: Lcom/android/server/wm/MiuiGestureController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/wm/MiuiGestureController;->access$200(Lcom/android/server/wm/MiuiGestureController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gb_boosting"

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_18

    const/4 v3, 0x1

    nop

    :cond_18
    # setter for: Lcom/android/server/wm/MiuiGestureController;->mIsGameBoost:Z
    invoke-static {v0, v3}, Lcom/android/server/wm/MiuiGestureController;->access$1002(Lcom/android/server/wm/MiuiGestureController;Z)Z

    .line 272
    return-void
.end method
