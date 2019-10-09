.class public final synthetic Lcom/android/server/wm/-$$Lambda$MiuiGesturePointerEventListener$tcVgDq9sYmXplD0vnE-YdoI-vSw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

.field private final synthetic f$1:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/MiuiGesturePointerEventListener;Ljava/util/function/Consumer;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$MiuiGesturePointerEventListener$tcVgDq9sYmXplD0vnE-YdoI-vSw;->f$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    iput-object p2, p0, Lcom/android/server/wm/-$$Lambda$MiuiGesturePointerEventListener$tcVgDq9sYmXplD0vnE-YdoI-vSw;->f$1:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$MiuiGesturePointerEventListener$tcVgDq9sYmXplD0vnE-YdoI-vSw;->f$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    iget-object v1, p0, Lcom/android/server/wm/-$$Lambda$MiuiGesturePointerEventListener$tcVgDq9sYmXplD0vnE-YdoI-vSw;->f$1:Ljava/util/function/Consumer;

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-static {v0, v1, p1}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->lambda$updateVisibleWindowsForGestureLocked$5(Lcom/android/server/wm/MiuiGesturePointerEventListener;Ljava/util/function/Consumer;Lcom/android/server/wm/WindowState;)V

    return-void
.end method
