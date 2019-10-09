.class Lcom/android/server/wm/GestureStubController$1;
.super Ljava/lang/Object;
.source "GestureStubController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/GestureStubController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/GestureStubController;


# direct methods
.method constructor <init>(Lcom/android/server/wm/GestureStubController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/wm/GestureStubController;

    .line 22
    iput-object p1, p0, Lcom/android/server/wm/GestureStubController$1;->this$0:Lcom/android/server/wm/GestureStubController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 25
    iget-object v0, p0, Lcom/android/server/wm/GestureStubController$1;->this$0:Lcom/android/server/wm/GestureStubController;

    # invokes: Lcom/android/server/wm/GestureStubController;->reset()V
    invoke-static {v0}, Lcom/android/server/wm/GestureStubController;->access$000(Lcom/android/server/wm/GestureStubController;)V

    .line 26
    return-void
.end method
