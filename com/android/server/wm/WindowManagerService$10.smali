.class Lcom/android/server/wm/WindowManagerService$10;
.super Ljava/lang/Object;
.source "WindowManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/WindowManagerService;->updateTalkbackWatermark(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;

.field final synthetic val$talkbackMode:Z


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Z)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/wm/WindowManagerService;

    .line 3898
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$10;->this$0:Lcom/android/server/wm/WindowManagerService;

    iput-boolean p2, p0, Lcom/android/server/wm/WindowManagerService$10;->val$talkbackMode:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .line 3902
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$10;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3903
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$10;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget v1, v1, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    .line 3904
    .local v1, "currentUserId":I
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_92

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3905
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$10;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "talkback_watermark_enable"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_25

    move v0, v3

    goto :goto_26

    :cond_25
    move v0, v2

    :goto_26
    move v4, v0

    .line 3907
    .local v4, "showSettings":Z
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$10;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v5

    :try_start_2c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3908
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$10;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V
    :try_end_34
    .catchall {:try_start_2c .. :try_end_34} :catchall_8c

    .line 3910
    :try_start_34
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService$10;->val$talkbackMode:Z

    if-eqz v0, :cond_3c

    if-eqz v4, :cond_3c

    move v0, v3

    goto :goto_3d

    :cond_3c
    move v0, v2

    .line 3911
    .local v0, "show":Z
    :goto_3d
    if-eqz v0, :cond_62

    .line 3912
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$10;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mTalkbackWatermark:Lcom/android/server/wm/TalkbackWatermark;

    if-nez v2, :cond_5a

    .line 3913
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$10;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    .line 3914
    .local v2, "displayContent":Lcom/android/server/wm/DisplayContent;
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService$10;->this$0:Lcom/android/server/wm/WindowManagerService;

    new-instance v7, Lcom/android/server/wm/TalkbackWatermark;

    iget-object v8, v2, Lcom/android/server/wm/DisplayContent;->mRealDisplayMetrics:Landroid/util/DisplayMetrics;

    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService$10;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v7, v2, v8, v9}, Lcom/android/server/wm/TalkbackWatermark;-><init>(Lcom/android/server/wm/DisplayContent;Landroid/util/DisplayMetrics;Landroid/content/Context;)V

    iput-object v7, v6, Lcom/android/server/wm/WindowManagerService;->mTalkbackWatermark:Lcom/android/server/wm/TalkbackWatermark;

    .line 3917
    .end local v2    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_5a
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$10;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mTalkbackWatermark:Lcom/android/server/wm/TalkbackWatermark;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/TalkbackWatermark;->setVisibility(Z)V

    goto :goto_74

    .line 3919
    :cond_62
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService$10;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mTalkbackWatermark:Lcom/android/server/wm/TalkbackWatermark;

    if-eqz v3, :cond_6f

    .line 3920
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService$10;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mTalkbackWatermark:Lcom/android/server/wm/TalkbackWatermark;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/TalkbackWatermark;->setVisibility(Z)V

    .line 3922
    :cond_6f
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$10;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mTalkbackWatermark:Lcom/android/server/wm/TalkbackWatermark;
    :try_end_74
    .catchall {:try_start_34 .. :try_end_74} :catchall_82

    .line 3925
    .end local v0    # "show":Z
    :goto_74
    :try_start_74
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$10;->this$0:Lcom/android/server/wm/WindowManagerService;

    const-string/jumbo v2, "updateTalkbackWatermark"

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 3926
    nop

    .line 3927
    monitor-exit v5
    :try_end_7e
    .catchall {:try_start_74 .. :try_end_7e} :catchall_8c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3928
    return-void

    .line 3925
    :catchall_82
    move-exception v0

    :try_start_83
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$10;->this$0:Lcom/android/server/wm/WindowManagerService;

    const-string/jumbo v3, "updateTalkbackWatermark"

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    throw v0

    .line 3927
    :catchall_8c
    move-exception v0

    monitor-exit v5
    :try_end_8e
    .catchall {:try_start_83 .. :try_end_8e} :catchall_8c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 3904
    .end local v1    # "currentUserId":I
    .end local v4    # "showSettings":Z
    :catchall_92
    move-exception v1

    :try_start_93
    monitor-exit v0
    :try_end_94
    .catchall {:try_start_93 .. :try_end_94} :catchall_92

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method
