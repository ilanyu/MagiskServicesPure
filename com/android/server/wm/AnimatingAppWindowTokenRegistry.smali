.class Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;
.super Ljava/lang/Object;
.source "AnimatingAppWindowTokenRegistry.java"


# instance fields
.field private mAnimatingTokens:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field private mEndingDeferredFinish:Z

.field private mFinishedTokens:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/wm/AppWindowToken;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mTmpRunnableList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;->mAnimatingTokens:Landroid/util/ArraySet;

    .line 36
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;->mFinishedTokens:Landroid/util/ArrayMap;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;->mTmpRunnableList:Ljava/util/ArrayList;

    return-void
.end method

.method private endDeferringFinished()V
    .registers 6

    .line 91
    iget-boolean v0, p0, Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;->mEndingDeferredFinish:Z

    if-eqz v0, :cond_5

    .line 92
    return-void

    .line 95
    :cond_5
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_7
    iput-boolean v1, p0, Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;->mEndingDeferredFinish:Z

    .line 99
    iget-object v2, p0, Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;->mFinishedTokens:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    sub-int/2addr v2, v1

    .local v2, "i":I
    :goto_10
    if-ltz v2, :cond_22

    .line 100
    iget-object v3, p0, Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;->mTmpRunnableList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;->mFinishedTokens:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    add-int/lit8 v2, v2, -0x1

    goto :goto_10

    .line 102
    .end local v2    # "i":I
    :cond_22
    iget-object v2, p0, Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;->mFinishedTokens:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 103
    iget-object v2, p0, Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;->mTmpRunnableList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    .restart local v2    # "i":I
    :goto_2e
    move v1, v2

    .end local v2    # "i":I
    .local v1, "i":I
    if-ltz v1, :cond_3f

    .line 104
    iget-object v2, p0, Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;->mTmpRunnableList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 103
    add-int/lit8 v2, v1, -0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_2e

    .line 106
    .end local v2    # "i":I
    :cond_3f
    iget-object v1, p0, Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;->mTmpRunnableList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V
    :try_end_44
    .catchall {:try_start_7 .. :try_end_44} :catchall_48

    .line 108
    iput-boolean v0, p0, Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;->mEndingDeferredFinish:Z

    .line 109
    nop

    .line 110
    return-void

    .line 108
    :catchall_48
    move-exception v1

    iput-boolean v0, p0, Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;->mEndingDeferredFinish:Z

    throw v1
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "header"    # Ljava/lang/String;
    .param p3, "prefix"    # Ljava/lang/String;

    .line 113
    iget-object v0, p0, Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;->mAnimatingTokens:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;->mFinishedTokens:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_43

    .line 114
    :cond_10
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 116
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mAnimatingTokens="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;->mAnimatingTokens:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 117
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mFinishedTokens="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;->mFinishedTokens:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 119
    :cond_43
    return-void
.end method

.method notifyAboutToFinish(Lcom/android/server/wm/AppWindowToken;Ljava/lang/Runnable;)Z
    .registers 6
    .param p1, "token"    # Lcom/android/server/wm/AppWindowToken;
    .param p2, "endDeferFinishCallback"    # Ljava/lang/Runnable;

    .line 69
    iget-object v0, p0, Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;->mAnimatingTokens:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 70
    .local v0, "removed":Z
    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 71
    return v1

    .line 74
    :cond_a
    iget-object v2, p0, Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;->mAnimatingTokens:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 77
    invoke-direct {p0}, Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;->endDeferringFinished()V

    .line 78
    return v1

    .line 82
    :cond_16
    iget-object v1, p0, Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;->mFinishedTokens:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const/4 v1, 0x1

    return v1
.end method

.method notifyFinished(Lcom/android/server/wm/AppWindowToken;)V
    .registers 3
    .param p1, "token"    # Lcom/android/server/wm/AppWindowToken;

    .line 53
    iget-object v0, p0, Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;->mAnimatingTokens:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 54
    iget-object v0, p0, Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;->mFinishedTokens:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;->mAnimatingTokens:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 58
    invoke-direct {p0}, Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;->endDeferringFinished()V

    .line 60
    :cond_15
    return-void
.end method

.method notifyStarting(Lcom/android/server/wm/AppWindowToken;)V
    .registers 3
    .param p1, "token"    # Lcom/android/server/wm/AppWindowToken;

    .line 46
    iget-object v0, p0, Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;->mAnimatingTokens:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 47
    return-void
.end method
