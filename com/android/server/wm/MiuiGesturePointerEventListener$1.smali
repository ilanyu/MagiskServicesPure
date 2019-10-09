.class Lcom/android/server/wm/MiuiGesturePointerEventListener$1;
.super Ljava/lang/Object;
.source "MiuiGesturePointerEventListener.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/MiuiGesturePointerEventListener;->startGoBackAppAnimation()V
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

    .line 813
    iput-object p1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$1;->this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 862
    # getter for: Lcom/android/server/wm/MiuiGesturePointerEventListener;->DEBUG:Z
    invoke-static {}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->access$400()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 863
    const-string v0, "MiuiGesturePointerEventListener"

    const-string v1, "cancel go back animation"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    :cond_d
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 8
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 828
    :try_start_0
    # getter for: Lcom/android/server/wm/MiuiGesturePointerEventListener;->DEBUG:Z
    invoke-static {}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->access$400()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 829
    const-string v0, "MiuiGesturePointerEventListener"

    const-string v1, "go back animation end"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    :cond_d
    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$1;->this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    iget-object v0, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mTopClosingAppWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_20

    .line 833
    const-string v0, "cancel"

    iget-object v1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$1;->this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    iget-object v1, v1, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mTopClosingAppWindow:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/wm/FullScreenEventReporter;->recordJankyFrames(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    :cond_20
    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$1;->this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    # getter for: Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureStatus:I
    invoke-static {v0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->access$500(Lcom/android/server/wm/MiuiGesturePointerEventListener;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_36

    .line 839
    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$1;->this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    # setter for: Lcom/android/server/wm/MiuiGesturePointerEventListener;->mDeferReset:Z
    invoke-static {v0, v1}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->access$602(Lcom/android/server/wm/MiuiGesturePointerEventListener;Z)Z

    .line 840
    const-string v0, "MiuiGesturePointerEventListener"

    const-string v1, "don\'t reset on go back animation end"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    return-void

    .line 844
    :cond_36
    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$1;->this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    # getter for: Lcom/android/server/wm/MiuiGesturePointerEventListener;->mScalingWindows:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->access$700(Lcom/android/server/wm/MiuiGesturePointerEventListener;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    if-eqz v0, :cond_70

    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$1;->this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    # getter for: Lcom/android/server/wm/MiuiGesturePointerEventListener;->mScalingWindows:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->access$700(Lcom/android/server/wm/MiuiGesturePointerEventListener;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_70

    .line 845
    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$1;->this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    # getter for: Lcom/android/server/wm/MiuiGesturePointerEventListener;->mScalingWindows:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->access$700(Lcom/android/server/wm/MiuiGesturePointerEventListener;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 846
    .local v0, "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/android/server/wm/WindowState;Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;>;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_58
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_70

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 847
    .local v3, "winEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/wm/WindowState;Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;>;"
    iget-object v4, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$1;->this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    # invokes: Lcom/android/server/wm/MiuiGesturePointerEventListener;->resetClipWindow(Lcom/android/server/wm/WindowState;)V
    invoke-static {v4, v5}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->access$800(Lcom/android/server/wm/MiuiGesturePointerEventListener;Lcom/android/server/wm/WindowState;)V

    .line 848
    .end local v3    # "winEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/wm/WindowState;Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;>;"
    goto :goto_58

    .line 851
    .end local v0    # "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/android/server/wm/WindowState;Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;>;>;"
    :cond_70
    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$1;->this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    # getter for: Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureController:Lcom/android/server/wm/MiuiGestureController;
    invoke-static {v0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->access$900(Lcom/android/server/wm/MiuiGesturePointerEventListener;)Lcom/android/server/wm/MiuiGestureController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/MiuiGestureController;->notifyGestureFinish(Z)V

    .line 852
    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$1;->this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    # invokes: Lcom/android/server/wm/MiuiGesturePointerEventListener;->reset()V
    invoke-static {v0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->access$1000(Lcom/android/server/wm/MiuiGesturePointerEventListener;)V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7e} :catch_7f

    .line 857
    goto :goto_8f

    .line 853
    :catch_7f
    move-exception v0

    .line 854
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MiuiGesturePointerEventListener"

    const-string v2, "go back animation end exception"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    iget-object v1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$1;->this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    # invokes: Lcom/android/server/wm/MiuiGesturePointerEventListener;->reset()V
    invoke-static {v1}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->access$1000(Lcom/android/server/wm/MiuiGesturePointerEventListener;)V

    .line 856
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 858
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_8f
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 823
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 816
    # getter for: Lcom/android/server/wm/MiuiGesturePointerEventListener;->DEBUG:Z
    invoke-static {}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->access$400()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 817
    const-string v0, "MiuiGesturePointerEventListener"

    const-string/jumbo v1, "start go back animation"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    :cond_e
    return-void
.end method
