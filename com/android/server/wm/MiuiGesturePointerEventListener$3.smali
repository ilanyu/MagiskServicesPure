.class Lcom/android/server/wm/MiuiGesturePointerEventListener$3;
.super Ljava/lang/Object;
.source "MiuiGesturePointerEventListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/MiuiGesturePointerEventListener;->launchHome()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;


# direct methods
.method constructor <init>(Lcom/android/server/wm/MiuiGesturePointerEventListener;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/wm/MiuiGesturePointerEventListener;

    .line 1294
    iput-object p1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$3;->this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1297
    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$3;->this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    # getter for: Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureController:Lcom/android/server/wm/MiuiGestureController;
    invoke-static {v0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->access$900(Lcom/android/server/wm/MiuiGesturePointerEventListener;)Lcom/android/server/wm/MiuiGestureController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$3;->this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    iget-object v1, v1, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mHomeAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/MiuiGestureController;->launchHome(Lcom/android/server/wm/AppWindowToken;)V

    .line 1298
    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$3;->this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    const-string v1, "homekey"

    # invokes: Lcom/android/server/wm/MiuiGesturePointerEventListener;->sendCloseSystemWindows(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->access$1200(Lcom/android/server/wm/MiuiGesturePointerEventListener;Ljava/lang/String;)V

    .line 1299
    return-void
.end method
