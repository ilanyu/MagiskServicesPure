.class Lcom/android/server/wm/MiuiGestureController$1;
.super Ljava/lang/Object;
.source "MiuiGestureController.java"

# interfaces
.implements Ljava/lang/Runnable;


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
.method constructor <init>(Lcom/android/server/wm/MiuiGestureController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/wm/MiuiGestureController;

    .line 69
    iput-object p1, p0, Lcom/android/server/wm/MiuiGestureController$1;->this$0:Lcom/android/server/wm/MiuiGestureController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 72
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController$1;->this$0:Lcom/android/server/wm/MiuiGestureController;

    # invokes: Lcom/android/server/wm/MiuiGestureController;->reset()V
    invoke-static {v0}, Lcom/android/server/wm/MiuiGestureController;->access$000(Lcom/android/server/wm/MiuiGestureController;)V

    .line 73
    return-void
.end method
