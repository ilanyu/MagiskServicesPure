.class public final synthetic Lcom/android/server/wm/-$$Lambda$MiuiGesturePointerEventListener$zq72uAj-OPUXMkQn7NlcPrUhi0w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/MiuiGesturePointerEventListener;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$MiuiGesturePointerEventListener$zq72uAj-OPUXMkQn7NlcPrUhi0w;->f$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$MiuiGesturePointerEventListener$zq72uAj-OPUXMkQn7NlcPrUhi0w;->f$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    check-cast p1, Lcom/android/server/wm/WindowStateAnimator;

    invoke-static {v0, p1}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->lambda$gestureReady$3(Lcom/android/server/wm/MiuiGesturePointerEventListener;Lcom/android/server/wm/WindowStateAnimator;)V

    return-void
.end method
