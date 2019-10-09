.class public final synthetic Lcom/android/server/wm/-$$Lambda$GestureStubController$ZUVitIx6JR8oy2rdThRoBtezl7k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wm/GestureStubController;

.field private final synthetic f$1:Lcom/android/server/wm/TaskStack;

.field private final synthetic f$2:Lcom/android/server/wm/TaskStack;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/GestureStubController;Lcom/android/server/wm/TaskStack;Lcom/android/server/wm/TaskStack;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$GestureStubController$ZUVitIx6JR8oy2rdThRoBtezl7k;->f$0:Lcom/android/server/wm/GestureStubController;

    iput-object p2, p0, Lcom/android/server/wm/-$$Lambda$GestureStubController$ZUVitIx6JR8oy2rdThRoBtezl7k;->f$1:Lcom/android/server/wm/TaskStack;

    iput-object p3, p0, Lcom/android/server/wm/-$$Lambda$GestureStubController$ZUVitIx6JR8oy2rdThRoBtezl7k;->f$2:Lcom/android/server/wm/TaskStack;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$GestureStubController$ZUVitIx6JR8oy2rdThRoBtezl7k;->f$0:Lcom/android/server/wm/GestureStubController;

    iget-object v1, p0, Lcom/android/server/wm/-$$Lambda$GestureStubController$ZUVitIx6JR8oy2rdThRoBtezl7k;->f$1:Lcom/android/server/wm/TaskStack;

    iget-object v2, p0, Lcom/android/server/wm/-$$Lambda$GestureStubController$ZUVitIx6JR8oy2rdThRoBtezl7k;->f$2:Lcom/android/server/wm/TaskStack;

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-static {v0, v1, v2, p1}, Lcom/android/server/wm/GestureStubController;->lambda$notifyGestureReady$0(Lcom/android/server/wm/GestureStubController;Lcom/android/server/wm/TaskStack;Lcom/android/server/wm/TaskStack;Lcom/android/server/wm/WindowState;)V

    return-void
.end method
