.class public final synthetic Lcom/android/server/wm/-$$Lambda$MiuiGesturePointerEventListener$Ns94XM9e5verYqFtvabsSHXi3OQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/MiuiGesturePointerEventListener;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$MiuiGesturePointerEventListener$Ns94XM9e5verYqFtvabsSHXi3OQ;->f$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$MiuiGesturePointerEventListener$Ns94XM9e5verYqFtvabsSHXi3OQ;->f$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    invoke-static {v0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->lambda$gestureReady$4(Lcom/android/server/wm/MiuiGesturePointerEventListener;)V

    return-void
.end method
