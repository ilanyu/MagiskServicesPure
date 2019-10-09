.class public final synthetic Lcom/android/server/wm/-$$Lambda$WindowAnimator$ddXU8gK8rmDqri0OZVMNa3Y4GHk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wm/WindowAnimator;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WindowAnimator;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$WindowAnimator$ddXU8gK8rmDqri0OZVMNa3Y4GHk;->f$0:Lcom/android/server/wm/WindowAnimator;

    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$WindowAnimator$ddXU8gK8rmDqri0OZVMNa3Y4GHk;->f$0:Lcom/android/server/wm/WindowAnimator;

    invoke-static {v0, p1, p2}, Lcom/android/server/wm/WindowAnimator;->lambda$new$1(Lcom/android/server/wm/WindowAnimator;J)V

    return-void
.end method
