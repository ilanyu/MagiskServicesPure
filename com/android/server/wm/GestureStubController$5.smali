.class Lcom/android/server/wm/GestureStubController$5;
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

.field final synthetic val$token:Lcom/android/server/wm/AppWindowToken;


# direct methods
.method constructor <init>(Lcom/android/server/wm/GestureStubController;Lcom/android/server/wm/AppWindowToken;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/wm/GestureStubController;

    .line 164
    iput-object p1, p0, Lcom/android/server/wm/GestureStubController$5;->this$0:Lcom/android/server/wm/GestureStubController;

    iput-object p2, p0, Lcom/android/server/wm/GestureStubController$5;->val$token:Lcom/android/server/wm/AppWindowToken;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 167
    iget-object v0, p0, Lcom/android/server/wm/GestureStubController$5;->this$0:Lcom/android/server/wm/GestureStubController;

    # getter for: Lcom/android/server/wm/GestureStubController;->mThumbnailCallback:Lcom/android/server/wm/GestureStubController$GestureThumbnailCallback;
    invoke-static {v0}, Lcom/android/server/wm/GestureStubController;->access$600(Lcom/android/server/wm/GestureStubController;)Lcom/android/server/wm/GestureStubController$GestureThumbnailCallback;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 168
    iget-object v0, p0, Lcom/android/server/wm/GestureStubController$5;->this$0:Lcom/android/server/wm/GestureStubController;

    # getter for: Lcom/android/server/wm/GestureStubController;->mThumbnailCallback:Lcom/android/server/wm/GestureStubController$GestureThumbnailCallback;
    invoke-static {v0}, Lcom/android/server/wm/GestureStubController;->access$600(Lcom/android/server/wm/GestureStubController;)Lcom/android/server/wm/GestureStubController$GestureThumbnailCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/GestureStubController$5;->val$token:Lcom/android/server/wm/AppWindowToken;

    invoke-interface {v0, v1}, Lcom/android/server/wm/GestureStubController$GestureThumbnailCallback;->onGestureFinished(Lcom/android/server/wm/AppWindowToken;)V

    .line 170
    :cond_13
    return-void
.end method
