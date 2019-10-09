.class Lcom/android/server/wm/WindowToken;
.super Lcom/android/server/wm/WindowContainer;
.source "WindowToken.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/wm/WindowContainer<",
        "Lcom/android/server/wm/WindowState;",
        ">;"
    }
.end annotation


# static fields
.field static final HBM_OVERLAY_LAYER:I = 0x1ed2a0

.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field hasVisible:Z

.field protected mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field final mHbmOverlay:Z

.field private mHidden:Z

.field mIsHoldOn:Z

.field final mOwnerCanManageAppTokens:Z

.field mPersistOnEmpty:Z

.field final mRoundedCornerOverlay:Z

.field private final mWindowComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field paused:Z

.field sendingToBottom:Z

.field stringName:Ljava/lang/String;

.field final token:Landroid/os/IBinder;

.field waitingToShow:Z

.field final windowType:I


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;IZLcom/android/server/wm/DisplayContent;Z)V
    .registers 15
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "_token"    # Landroid/os/IBinder;
    .param p3, "type"    # I
    .param p4, "persistOnEmpty"    # Z
    .param p5, "dc"    # Lcom/android/server/wm/DisplayContent;
    .param p6, "ownerCanManageAppTokens"    # Z

    .line 125
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/wm/WindowToken;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;IZLcom/android/server/wm/DisplayContent;ZZ)V

    .line 127
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;IZLcom/android/server/wm/DisplayContent;ZZ)V
    .registers 17
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "_token"    # Landroid/os/IBinder;
    .param p3, "type"    # I
    .param p4, "persistOnEmpty"    # Z
    .param p5, "dc"    # Lcom/android/server/wm/DisplayContent;
    .param p6, "ownerCanManageAppTokens"    # Z
    .param p7, "roundedCornerOverlay"    # Z

    .line 132
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/server/wm/WindowToken;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;IZLcom/android/server/wm/DisplayContent;ZZZ)V

    .line 134
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;IZLcom/android/server/wm/DisplayContent;ZZZ)V
    .registers 10
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "_token"    # Landroid/os/IBinder;
    .param p3, "type"    # I
    .param p4, "persistOnEmpty"    # Z
    .param p5, "dc"    # Lcom/android/server/wm/DisplayContent;
    .param p6, "ownerCanManageAppTokens"    # Z
    .param p7, "roundedCornerOverlay"    # Z
    .param p8, "hbmOverlay"    # Z

    .line 139
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowContainer;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowToken;->paused:Z

    .line 107
    new-instance v0, Lcom/android/server/wm/-$$Lambda$WindowToken$tFLHn4S6WuSXW1gp1kvT_sp7WC0;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$WindowToken$tFLHn4S6WuSXW1gp1kvT_sp7WC0;-><init>(Lcom/android/server/wm/WindowToken;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowToken;->mWindowComparator:Ljava/util/Comparator;

    .line 140
    iput-object p2, p0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    .line 141
    iput p3, p0, Lcom/android/server/wm/WindowToken;->windowType:I

    .line 142
    iput-boolean p4, p0, Lcom/android/server/wm/WindowToken;->mPersistOnEmpty:Z

    .line 143
    iput-boolean p6, p0, Lcom/android/server/wm/WindowToken;->mOwnerCanManageAppTokens:Z

    .line 144
    iput-boolean p7, p0, Lcom/android/server/wm/WindowToken;->mRoundedCornerOverlay:Z

    .line 145
    iput-boolean p8, p0, Lcom/android/server/wm/WindowToken;->mHbmOverlay:Z

    .line 147
    invoke-virtual {p0, p5}, Lcom/android/server/wm/WindowToken;->onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V

    .line 148
    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/server/wm/WindowToken;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)I
    .registers 7
    .param p1, "newWindow"    # Lcom/android/server/wm/WindowState;
    .param p2, "existingWindow"    # Lcom/android/server/wm/WindowState;

    .line 109
    move-object v0, p0

    .line 110
    .local v0, "token":Lcom/android/server/wm/WindowToken;
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    if-ne v1, v0, :cond_32

    .line 115
    iget-object v1, p2, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    if-ne v1, v0, :cond_13

    .line 120
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowToken;->isFirstChildWindowGreaterThanSecond(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v1, 0x1

    goto :goto_12

    :cond_11
    const/4 v1, -0x1

    :goto_12
    return v1

    .line 116
    :cond_13
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "existingWindow="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " is not a child of token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 111
    :cond_32
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "newWindow="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " is not a child of token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method addWindow(Lcom/android/server/wm/WindowState;)V
    .registers 4
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .line 220
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isChildWindow()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 222
    return-void

    .line 224
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 226
    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->mWindowComparator:Ljava/util/Comparator;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowToken;->addChild(Lcom/android/server/wm/WindowContainer;Ljava/util/Comparator;)V

    .line 227
    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 230
    :cond_19
    return-void
.end method

.method asAppWindowToken()Lcom/android/server/wm/AppWindowToken;
    .registers 2

    .line 275
    const/4 v0, 0x0

    return-object v0
.end method

.method assignLayer(Landroid/view/SurfaceControl$Transaction;I)V
    .registers 4
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "layer"    # I

    .line 384
    iget-boolean v0, p0, Lcom/android/server/wm/WindowToken;->mHbmOverlay:Z

    if-eqz v0, :cond_a

    const v0, 0x1ed2a0

    if-ge p2, v0, :cond_a

    .line 385
    add-int/2addr p2, v0

    .line 387
    :cond_a
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    .line 388
    return-void
.end method

.method canLayerAboveSystemBars()Z
    .registers 5

    .line 374
    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget v1, p0, Lcom/android/server/wm/WindowToken;->windowType:I

    iget-boolean v2, p0, Lcom/android/server/wm/WindowToken;->mOwnerCanManageAppTokens:Z

    invoke-interface {v0, v1, v2}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(IZ)I

    move-result v0

    .line 376
    .local v0, "layer":I
    iget-object v1, p0, Lcom/android/server/wm/WindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-boolean v2, p0, Lcom/android/server/wm/WindowToken;->mOwnerCanManageAppTokens:Z

    const/16 v3, 0x7e3

    invoke-interface {v1, v3, v2}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(IZ)I

    move-result v1

    .line 378
    .local v1, "navLayer":I
    iget-boolean v2, p0, Lcom/android/server/wm/WindowToken;->mOwnerCanManageAppTokens:Z

    if-eqz v2, :cond_20

    if-le v0, v1, :cond_20

    const/4 v2, 0x1

    goto :goto_21

    :cond_20
    const/4 v2, 0x0

    :goto_21
    return v2
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dumpAll"    # Z

    .line 333
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/WindowContainer;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 334
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "windows="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 335
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "windowType="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowToken;->windowType:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 336
    const-string v0, " hidden="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowToken;->mHidden:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 337
    const-string v0, " hasVisible="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowToken;->hasVisible:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 338
    iget-boolean v0, p0, Lcom/android/server/wm/WindowToken;->waitingToShow:Z

    if-nez v0, :cond_3b

    iget-boolean v0, p0, Lcom/android/server/wm/WindowToken;->sendingToBottom:Z

    if-eqz v0, :cond_53

    .line 339
    :cond_3b
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "waitingToShow="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowToken;->waitingToShow:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 340
    const-string v0, " sendingToBottom="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowToken;->sendingToBottom:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 342
    :cond_53
    return-void
.end method

.method getDisplayContent()Lcom/android/server/wm/DisplayContent;
    .registers 2

    .line 279
    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-object v0
.end method

.method getHighestAnimLayer()I
    .registers 5

    .line 261
    const/4 v0, -0x1

    .line 262
    .local v0, "highest":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    iget-object v2, p0, Lcom/android/server/wm/WindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1c

    .line 263
    iget-object v2, p0, Lcom/android/server/wm/WindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 264
    .local v2, "w":Lcom/android/server/wm/WindowState;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getHighestAnimLayer()I

    move-result v3

    .line 265
    .local v3, "wLayer":I
    if-le v3, v0, :cond_19

    .line 266
    move v0, v3

    .line 262
    .end local v2    # "w":Lcom/android/server/wm/WindowState;
    .end local v3    # "wLayer":I
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 269
    .end local v1    # "j":I
    :cond_1c
    return v0
.end method

.method getName()Ljava/lang/String;
    .registers 2

    .line 358
    invoke-virtual {p0}, Lcom/android/server/wm/WindowToken;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getReplacingWindow()Lcom/android/server/wm/WindowState;
    .registers 4

    .line 238
    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1c

    .line 239
    iget-object v1, p0, Lcom/android/server/wm/WindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 240
    .local v1, "win":Lcom/android/server/wm/WindowState;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getReplacingWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 241
    .local v2, "replacing":Lcom/android/server/wm/WindowState;
    if-eqz v2, :cond_19

    .line 242
    return-object v2

    .line 238
    .end local v1    # "win":Lcom/android/server/wm/WindowState;
    .end local v2    # "replacing":Lcom/android/server/wm/WindowState;
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 245
    .end local v0    # "i":I
    :cond_1c
    const/4 v0, 0x0

    return-object v0
.end method

.method isEmpty()Z
    .registers 2

    .line 234
    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method protected isFirstChildWindowGreaterThanSecond(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)Z
    .registers 5
    .param p1, "newWindow"    # Lcom/android/server/wm/WindowState;
    .param p2, "existingWindow"    # Lcom/android/server/wm/WindowState;

    .line 213
    iget v0, p1, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    iget v1, p2, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method isHidden()Z
    .registers 2

    .line 157
    iget-boolean v0, p0, Lcom/android/server/wm/WindowToken;->mHidden:Z

    return v0
.end method

.method okToAnimate()Z
    .registers 2

    .line 366
    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->okToAnimate()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method okToDisplay()Z
    .registers 2

    .line 362
    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->okToDisplay()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V
    .registers 5
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;

    .line 293
    invoke-virtual {p1, p0}, Lcom/android/server/wm/DisplayContent;->reParentWindowToken(Lcom/android/server/wm/WindowToken;)V

    .line 294
    iput-object p1, p0, Lcom/android/server/wm/WindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 298
    iget-boolean v0, p0, Lcom/android/server/wm/WindowToken;->mRoundedCornerOverlay:Z

    if-eqz v0, :cond_12

    .line 299
    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, p0, Lcom/android/server/wm/WindowToken;->mPendingTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/server/wm/WindowToken;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DisplayContent;->reparentToOverlay(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 303
    :cond_12
    iget-boolean v0, p0, Lcom/android/server/wm/WindowToken;->mHbmOverlay:Z

    if-eqz v0, :cond_1f

    .line 304
    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, p0, Lcom/android/server/wm/WindowToken;->mPendingTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/server/wm/WindowToken;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DisplayContent;->reparentToOverlay(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 313
    :cond_1f
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V

    .line 314
    return-void
.end method

.method removeAllWindowsIfPossible()V
    .registers 3

    .line 161
    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 162
    iget-object v1, p0, Lcom/android/server/wm/WindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 165
    .local v1, "win":Lcom/android/server/wm/WindowState;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->removeIfPossible()V

    .line 161
    .end local v1    # "win":Lcom/android/server/wm/WindowState;
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 167
    .end local v0    # "i":I
    :cond_18
    return-void
.end method

.method removeImmediately()V
    .registers 3

    .line 284
    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_b

    .line 285
    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, p0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->removeWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/WindowToken;

    .line 289
    :cond_b
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->removeImmediately()V

    .line 290
    return-void
.end method

.method setExiting()V
    .registers 8

    .line 170
    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    if-nez v0, :cond_c

    .line 171
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->removeImmediately()V

    .line 172
    return-void

    .line 176
    :cond_c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowToken;->mPersistOnEmpty:Z

    .line 178
    iget-boolean v1, p0, Lcom/android/server/wm/WindowToken;->mHidden:Z

    if-eqz v1, :cond_14

    .line 179
    return-void

    .line 182
    :cond_14
    iget-object v1, p0, Lcom/android/server/wm/WindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    .line 183
    .local v1, "count":I
    const/4 v2, 0x0

    .line 184
    .local v2, "changed":Z
    const/4 v3, 0x0

    .line 186
    .local v3, "delayed":Z
    move v4, v3

    move v3, v2

    move v2, v0

    .local v2, "i":I
    .local v3, "changed":Z
    .local v4, "delayed":Z
    :goto_1f
    if-ge v2, v1, :cond_3a

    .line 187
    iget-object v5, p0, Lcom/android/server/wm/WindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    .line 188
    .local v5, "win":Lcom/android/server/wm/WindowState;
    iget-object v6, v5, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowStateAnimator;->isAnimationSet()Z

    move-result v6

    if-eqz v6, :cond_32

    .line 189
    const/4 v4, 0x1

    .line 191
    :cond_32
    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->onSetAppExiting()Z

    move-result v6

    or-int/2addr v3, v6

    .line 186
    .end local v5    # "win":Lcom/android/server/wm/WindowState;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 194
    .end local v2    # "i":I
    :cond_3a
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowToken;->setHidden(Z)V

    .line 196
    if-eqz v3, :cond_4c

    .line 197
    iget-object v2, p0, Lcom/android/server/wm/WindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 198
    iget-object v2, p0, Lcom/android/server/wm/WindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v0, v0}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 201
    :cond_4c
    if-eqz v4, :cond_55

    .line 202
    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    :cond_55
    return-void
.end method

.method setHidden(Z)V
    .registers 3
    .param p1, "hidden"    # Z

    .line 151
    iget-boolean v0, p0, Lcom/android/server/wm/WindowToken;->mHidden:Z

    if-eq p1, v0, :cond_6

    .line 152
    iput-boolean p1, p0, Lcom/android/server/wm/WindowToken;->mHidden:Z

    .line 154
    :cond_6
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 346
    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->stringName:Ljava/lang/String;

    if-nez v0, :cond_2e

    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 348
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "WindowToken{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 351
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/WindowToken;->stringName:Ljava/lang/String;

    .line 353
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_2e
    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->stringName:Ljava/lang/String;

    return-object v0
.end method

.method windowsCanBeWallpaperTarget()Z
    .registers 6

    .line 250
    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "j":I
    :goto_8
    if-ltz v0, :cond_1f

    .line 251
    iget-object v2, p0, Lcom/android/server/wm/WindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 252
    .local v2, "w":Lcom/android/server/wm/WindowState;
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x100000

    and-int/2addr v3, v4

    if-eqz v3, :cond_1c

    .line 253
    return v1

    .line 250
    .end local v2    # "w":Lcom/android/server/wm/WindowState;
    :cond_1c
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 257
    .end local v0    # "j":I
    :cond_1f
    const/4 v0, 0x0

    return v0
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;JZ)V
    .registers 11
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "trim"    # Z

    .line 319
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 320
    .local v0, "token":J
    const-wide v2, 0x10b00000001L

    invoke-super {p0, p1, v2, v3, p4}, Lcom/android/server/wm/WindowContainer;->writeToProto(Landroid/util/proto/ProtoOutputStream;JZ)V

    .line 321
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    const-wide v3, 0x10500000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 322
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_19
    iget-object v3, p0, Lcom/android/server/wm/WindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v3

    if-ge v2, v3, :cond_34

    .line 323
    iget-object v3, p0, Lcom/android/server/wm/WindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 324
    .local v3, "w":Lcom/android/server/wm/WindowState;
    const-wide v4, 0x20b00000003L

    invoke-virtual {v3, p1, v4, v5, p4}, Lcom/android/server/wm/WindowState;->writeToProto(Landroid/util/proto/ProtoOutputStream;JZ)V

    .line 322
    .end local v3    # "w":Lcom/android/server/wm/WindowState;
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 326
    .end local v2    # "i":I
    :cond_34
    const-wide v2, 0x10800000004L

    iget-boolean v4, p0, Lcom/android/server/wm/WindowToken;->mHidden:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 327
    const-wide v2, 0x10800000005L

    iget-boolean v4, p0, Lcom/android/server/wm/WindowToken;->waitingToShow:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 328
    const-wide v2, 0x10800000006L

    iget-boolean v4, p0, Lcom/android/server/wm/WindowToken;->paused:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 329
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 330
    return-void
.end method
