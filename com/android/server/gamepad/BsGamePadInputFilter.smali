.class public Lcom/android/server/gamepad/BsGamePadInputFilter;
.super Landroid/view/InputFilter;
.source "BsGamePadInputFilter.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "BsGamePadInputFilter"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGameWorker:Lcom/android/server/gamepad/BsGamePadWorker;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/InputFilter;-><init>(Landroid/os/Looper;)V

    .line 32
    iput-object p1, p0, Lcom/android/server/gamepad/BsGamePadInputFilter;->mContext:Landroid/content/Context;

    .line 33
    new-instance v0, Lcom/android/server/gamepad/BsGamePadWorker;

    iget-object v1, p0, Lcom/android/server/gamepad/BsGamePadInputFilter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/gamepad/BsGamePadWorker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/gamepad/BsGamePadInputFilter;->mGameWorker:Lcom/android/server/gamepad/BsGamePadWorker;

    .line 34
    return-void
.end method


# virtual methods
.method public loadKeyMap(Ljava/util/Map;ZI)V
    .registers 5
    .param p1, "map"    # Ljava/util/Map;
    .param p2, "isChooseMove"    # Z
    .param p3, "rotation"    # I

    .line 37
    iget-object v0, p0, Lcom/android/server/gamepad/BsGamePadInputFilter;->mGameWorker:Lcom/android/server/gamepad/BsGamePadWorker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/gamepad/BsGamePadWorker;->loadKeyMap(Ljava/util/Map;ZI)V

    .line 38
    return-void
.end method

.method public onInputEvent(Landroid/view/InputEvent;I)V
    .registers 4
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "policyFlags"    # I

    .line 47
    iget-object v0, p0, Lcom/android/server/gamepad/BsGamePadInputFilter;->mGameWorker:Lcom/android/server/gamepad/BsGamePadWorker;

    if-nez v0, :cond_5

    .line 48
    return-void

    .line 51
    :cond_5
    iget-object v0, p0, Lcom/android/server/gamepad/BsGamePadInputFilter;->mGameWorker:Lcom/android/server/gamepad/BsGamePadWorker;

    invoke-virtual {v0, p1}, Lcom/android/server/gamepad/BsGamePadWorker;->onInputEvent(Landroid/view/InputEvent;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/android/server/gamepad/BsGamePadInputFilter;->sendInputEvent(Landroid/view/InputEvent;I)V

    .line 54
    :cond_10
    return-void
.end method

.method public unloadKeyMap()V
    .registers 2

    .line 41
    iget-object v0, p0, Lcom/android/server/gamepad/BsGamePadInputFilter;->mGameWorker:Lcom/android/server/gamepad/BsGamePadWorker;

    invoke-virtual {v0}, Lcom/android/server/gamepad/BsGamePadWorker;->unloadKeyMap()V

    .line 42
    return-void
.end method
