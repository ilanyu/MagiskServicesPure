.class Lcom/android/server/wm/GestureStubController$6;
.super Ljava/lang/Object;
.source "GestureStubController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/GestureStubController;->reset()V
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

    .line 180
    iput-object p1, p0, Lcom/android/server/wm/GestureStubController$6;->this$0:Lcom/android/server/wm/GestureStubController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 183
    iget-object v0, p0, Lcom/android/server/wm/GestureStubController$6;->this$0:Lcom/android/server/wm/GestureStubController;

    # getter for: Lcom/android/server/wm/GestureStubController;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v0}, Lcom/android/server/wm/GestureStubController;->access$500(Lcom/android/server/wm/GestureStubController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 184
    return-void
.end method
