.class Lcom/android/server/wm/MiuiGesturePointerEventListener$2;
.super Ljava/lang/Object;
.source "MiuiGesturePointerEventListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/MiuiGesturePointerEventListener;->reset(Z)V
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

    .line 1093
    iput-object p1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$2;->this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1096
    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$2;->this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    # getter for: Lcom/android/server/wm/MiuiGesturePointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->access$1100(Lcom/android/server/wm/MiuiGesturePointerEventListener;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 1097
    return-void
.end method
