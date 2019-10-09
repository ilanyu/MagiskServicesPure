.class Lcom/android/server/wm/WindowContainer;
.super Lcom/android/server/wm/ConfigurationContainer;
.source "WindowContainer.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lcom/android/server/wm/SurfaceAnimator$Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WindowContainer$ForAllWindowsConsumerWrapper;,
        Lcom/android/server/wm/WindowContainer$AnimationLayer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Lcom/android/server/wm/WindowContainer;",
        ">",
        "Lcom/android/server/wm/ConfigurationContainer<",
        "TE;>;",
        "Ljava/lang/Comparable<",
        "Lcom/android/server/wm/WindowContainer;",
        ">;",
        "Lcom/android/server/wm/SurfaceAnimator$Animatable;"
    }
.end annotation


# static fields
.field static final ANIMATION_LAYER_BOOSTED:I = 0x1

.field static final ANIMATION_LAYER_HOME:I = 0x2

.field static final ANIMATION_LAYER_PIP:I = 0x3

.field static final ANIMATION_LAYER_STANDARD:I = 0x0

.field static final POSITION_BOTTOM:I = -0x80000000

.field static final POSITION_TOP:I = 0x7fffffff

.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field protected final mChildren:Lcom/android/server/wm/WindowList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/wm/WindowList<",
            "TE;>;"
        }
    .end annotation
.end field

.field private mCommittedReparentToAnimationLeash:Z

.field private final mConsumerWrapperPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool<",
            "Lcom/android/server/wm/WindowContainer<",
            "TE;>.ForAllWindowsConsumerWrapper;>;"
        }
    .end annotation
.end field

.field mController:Lcom/android/server/wm/WindowContainerController;

.field private mLastLayer:I

.field private mLastRelativeToLayer:Landroid/view/SurfaceControl;

.field protected final mLastSurfacePosition:Landroid/graphics/Point;

.field protected mMiuiConfigFlag:I

.field protected mOrientation:I

.field private mParent:Lcom/android/server/wm/WindowContainer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/wm/WindowContainer<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;"
        }
    .end annotation
.end field

.field protected final mPendingTransaction:Landroid/view/SurfaceControl$Transaction;

.field protected mProjectioned:Z

.field protected final mService:Lcom/android/server/wm/WindowManagerService;

.field protected final mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

.field protected mSurfaceControl:Landroid/view/SurfaceControl;

.field private final mTmpChain1:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpChain2:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpPos:Landroid/graphics/Point;

.field private mTreeWeight:I


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 7
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;

    .line 147
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-direct {p0}, Lcom/android/server/wm/ConfigurationContainer;-><init>()V

    .line 86
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/WindowContainer;->mMiuiConfigFlag:I

    .line 88
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/WindowContainer;->mProjectioned:Z

    .line 109
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    .line 113
    new-instance v3, Lcom/android/server/wm/WindowList;

    invoke-direct {v3}, Lcom/android/server/wm/WindowList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 116
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/wm/WindowContainer;->mOrientation:I

    .line 118
    new-instance v3, Landroid/util/Pools$SynchronizedPool;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    iput-object v3, p0, Lcom/android/server/wm/WindowContainer;->mConsumerWrapperPool:Landroid/util/Pools$SynchronizedPool;

    .line 125
    iput v1, p0, Lcom/android/server/wm/WindowContainer;->mLastLayer:I

    .line 126
    iput-object v2, p0, Lcom/android/server/wm/WindowContainer;->mLastRelativeToLayer:Landroid/view/SurfaceControl;

    .line 135
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/WindowContainer;->mTmpPos:Landroid/graphics/Point;

    .line 136
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/WindowContainer;->mLastSurfacePosition:Landroid/graphics/Point;

    .line 139
    iput v0, p0, Lcom/android/server/wm/WindowContainer;->mTreeWeight:I

    .line 218
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTmpChain1:Ljava/util/LinkedList;

    .line 219
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTmpChain2:Ljava/util/LinkedList;

    .line 148
    iput-object p1, p0, Lcom/android/server/wm/WindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 149
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Lcom/android/server/wm/TransactionFactory;

    invoke-interface {v0}, Lcom/android/server/wm/TransactionFactory;->make()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/WindowContainer;->mPendingTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 150
    new-instance v0, Lcom/android/server/wm/SurfaceAnimator;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$yVRF8YoeNdTa8GR1wDStVsHu8xM;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$yVRF8YoeNdTa8GR1wDStVsHu8xM;-><init>(Lcom/android/server/wm/WindowContainer;)V

    invoke-direct {v0, p0, v1, p1}, Lcom/android/server/wm/SurfaceAnimator;-><init>(Lcom/android/server/wm/SurfaceAnimator$Animatable;Ljava/lang/Runnable;Lcom/android/server/wm/WindowManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    .line 151
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/wm/WindowContainer;)Landroid/util/Pools$SynchronizedPool;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/WindowContainer;

    .line 65
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mConsumerWrapperPool:Landroid/util/Pools$SynchronizedPool;

    return-object v0
.end method

.method private getParents(Ljava/util/LinkedList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;)V"
        }
    .end annotation

    .line 889
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "parents":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/server/wm/WindowContainer;>;"
    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    .line 890
    move-object v0, p0

    .line 892
    .local v0, "current":Lcom/android/server/wm/WindowContainer;
    :cond_4
    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 893
    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    .line 894
    if-nez v0, :cond_4

    .line 895
    return-void
.end method

.method private getPrefixOrderIndex(Lcom/android/server/wm/WindowContainer;)I
    .registers 6
    .param p1, "child"    # Lcom/android/server/wm/WindowContainer;

    .line 360
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    const/4 v0, 0x0

    .line 361
    .local v0, "order":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1b

    .line 362
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 363
    .local v2, "childI":Lcom/android/server/wm/WindowContainer;
    if-ne p1, v2, :cond_15

    .line 364
    goto :goto_1b

    .line 366
    :cond_15
    iget v3, v2, Lcom/android/server/wm/WindowContainer;->mTreeWeight:I

    add-int/2addr v0, v3

    .line 361
    .end local v2    # "childI":Lcom/android/server/wm/WindowContainer;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 368
    .end local v1    # "i":I
    :cond_1b
    :goto_1b
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    if-eqz v1, :cond_26

    .line 369
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    invoke-direct {v1, p0}, Lcom/android/server/wm/WindowContainer;->getPrefixOrderIndex(Lcom/android/server/wm/WindowContainer;)I

    move-result v1

    add-int/2addr v0, v1

    .line 373
    :cond_26
    add-int/lit8 v0, v0, 0x1

    .line 374
    return v0
.end method

.method private obtainConsumerWrapper(Ljava/util/function/Consumer;)Lcom/android/server/wm/WindowContainer$ForAllWindowsConsumerWrapper;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/WindowState;",
            ">;)",
            "Lcom/android/server/wm/WindowContainer<",
            "TE;>.ForAllWindowsConsumerWrapper;"
        }
    .end annotation

    .line 1054
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wm/WindowState;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mConsumerWrapperPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowContainer$ForAllWindowsConsumerWrapper;

    .line 1055
    .local v0, "wrapper":Lcom/android/server/wm/WindowContainer$ForAllWindowsConsumerWrapper;, "Lcom/android/server/wm/WindowContainer<TE;>.ForAllWindowsConsumerWrapper;"
    if-nez v0, :cond_11

    .line 1056
    new-instance v1, Lcom/android/server/wm/WindowContainer$ForAllWindowsConsumerWrapper;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/wm/WindowContainer$ForAllWindowsConsumerWrapper;-><init>(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer$1;)V

    move-object v0, v1

    .line 1058
    :cond_11
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowContainer$ForAllWindowsConsumerWrapper;->setConsumer(Ljava/util/function/Consumer;)V

    .line 1059
    return-object v0
.end method

.method private onChildAdded(Lcom/android/server/wm/WindowContainer;)V
    .registers 5
    .param p1, "child"    # Lcom/android/server/wm/WindowContainer;

    .line 274
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget v0, p0, Lcom/android/server/wm/WindowContainer;->mTreeWeight:I

    iget v1, p1, Lcom/android/server/wm/WindowContainer;->mTreeWeight:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/wm/WindowContainer;->mTreeWeight:I

    .line 275
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 276
    .local v0, "parent":Lcom/android/server/wm/WindowContainer;
    :goto_b
    if-eqz v0, :cond_19

    .line 277
    iget v1, v0, Lcom/android/server/wm/WindowContainer;->mTreeWeight:I

    iget v2, p1, Lcom/android/server/wm/WindowContainer;->mTreeWeight:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/wm/WindowContainer;->mTreeWeight:I

    .line 278
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    goto :goto_b

    .line 280
    :cond_19
    return-void
.end method

.method private onChildRemoved(Lcom/android/server/wm/WindowContainer;)V
    .registers 5
    .param p1, "child"    # Lcom/android/server/wm/WindowContainer;

    .line 299
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget v0, p0, Lcom/android/server/wm/WindowContainer;->mTreeWeight:I

    iget v1, p1, Lcom/android/server/wm/WindowContainer;->mTreeWeight:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/wm/WindowContainer;->mTreeWeight:I

    .line 300
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 301
    .local v0, "parent":Lcom/android/server/wm/WindowContainer;
    :goto_b
    if-eqz v0, :cond_19

    .line 302
    iget v1, v0, Lcom/android/server/wm/WindowContainer;->mTreeWeight:I

    iget v2, p1, Lcom/android/server/wm/WindowContainer;->mTreeWeight:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/wm/WindowContainer;->mTreeWeight:I

    .line 303
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    goto :goto_b

    .line 305
    :cond_19
    return-void
.end method


# virtual methods
.method addChild(Lcom/android/server/wm/WindowContainer;I)V
    .registers 6
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)V"
        }
    .end annotation

    .line 261
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "child":Lcom/android/server/wm/WindowContainer;, "TE;"
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-nez v0, :cond_12

    .line 266
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p2, p1}, Lcom/android/server/wm/WindowList;->add(ILjava/lang/Object;)V

    .line 267
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowContainer;->onChildAdded(Lcom/android/server/wm/WindowContainer;)V

    .line 270
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainer;->setParent(Lcom/android/server/wm/WindowContainer;)V

    .line 271
    return-void

    .line 262
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addChild: container="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is already a child of container="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " can\'t add to container="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected addChild(Lcom/android/server/wm/WindowContainer;Ljava/util/Comparator;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Ljava/util/Comparator<",
            "TE;>;)V"
        }
    .end annotation

    .line 230
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "child":Lcom/android/server/wm/WindowContainer;, "TE;"
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TE;>;"
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-nez v0, :cond_3a

    .line 236
    const/4 v0, -0x1

    .line 237
    .local v0, "positionToAdd":I
    if-eqz p2, :cond_25

    .line 238
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    .line 239
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10
    if-ge v2, v1, :cond_25

    .line 240
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-interface {p2, p1, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_22

    .line 241
    move v0, v2

    .line 242
    goto :goto_25

    .line 239
    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 247
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_25
    :goto_25
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2e

    .line 248
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowList;->add(Ljava/lang/Object;)Z

    goto :goto_33

    .line 250
    :cond_2e
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0, p1}, Lcom/android/server/wm/WindowList;->add(ILjava/lang/Object;)V

    .line 252
    :goto_33
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowContainer;->onChildAdded(Lcom/android/server/wm/WindowContainer;)V

    .line 255
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainer;->setParent(Lcom/android/server/wm/WindowContainer;)V

    .line 256
    return-void

    .line 231
    .end local v0    # "positionToAdd":I
    :cond_3a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addChild: container="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is already a child of container="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " can\'t add to container="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method applyMagnificationSpec(Landroid/view/SurfaceControl$Transaction;Landroid/view/MagnificationSpec;)V
    .registers 10
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "spec"    # Landroid/view/MagnificationSpec;

    .line 1086
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->shouldMagnify()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1087
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v3, p2, Landroid/view/MagnificationSpec;->scale:F

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, p2, Landroid/view/MagnificationSpec;->scale:F

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v2, p2, Landroid/view/MagnificationSpec;->offsetX:F

    iget v3, p2, Landroid/view/MagnificationSpec;->offsetY:F

    .line 1088
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    goto :goto_34

    .line 1090
    :cond_1d
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1e
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    if-ge v0, v1, :cond_34

    .line 1091
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/WindowContainer;->applyMagnificationSpec(Landroid/view/SurfaceControl$Transaction;Landroid/view/MagnificationSpec;)V

    .line 1090
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 1094
    .end local v0    # "i":I
    :cond_34
    :goto_34
    return-void
.end method

.method assignChildLayers()V
    .registers 2

    .line 1020
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V

    .line 1021
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    .line 1022
    return-void
.end method

.method assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V
    .registers 7
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 1000
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    const/4 v0, 0x0

    .line 1004
    .local v0, "layer":I
    const/4 v1, 0x0

    move v2, v0

    move v0, v1

    .local v0, "j":I
    .local v2, "layer":I
    :goto_4
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v3

    if-ge v0, v3, :cond_26

    .line 1005
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    .line 1006
    .local v3, "wc":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v3, p1}, Lcom/android/server/wm/WindowContainer;->assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V

    .line 1007
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->needsZBoost()Z

    move-result v4

    if-nez v4, :cond_23

    .line 1008
    add-int/lit8 v4, v2, 0x1

    .local v4, "layer":I
    invoke-virtual {v3, p1, v2}, Lcom/android/server/wm/WindowContainer;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    .line 1004
    .end local v2    # "layer":I
    .end local v3    # "wc":Lcom/android/server/wm/WindowContainer;
    move v2, v4

    .end local v4    # "layer":I
    .restart local v2    # "layer":I
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1011
    .end local v0    # "j":I
    :cond_26
    nop

    .local v1, "j":I
    :goto_27
    move v0, v1

    .end local v1    # "j":I
    .restart local v0    # "j":I
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    if-ge v0, v1, :cond_47

    .line 1012
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 1013
    .local v1, "wc":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->needsZBoost()Z

    move-result v3

    if-eqz v3, :cond_44

    .line 1014
    add-int/lit8 v3, v2, 0x1

    .local v3, "layer":I
    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/WindowContainer;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    .line 1011
    .end local v1    # "wc":Lcom/android/server/wm/WindowContainer;
    .end local v2    # "layer":I
    move v2, v3

    .end local v3    # "layer":I
    .restart local v2    # "layer":I
    :cond_44
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "j":I
    .local v1, "j":I
    goto :goto_27

    .line 1017
    .end local v1    # "j":I
    :cond_47
    return-void
.end method

.method assignLayer(Landroid/view/SurfaceControl$Transaction;I)V
    .registers 5
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "layer"    # I

    .line 964
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget v0, p0, Lcom/android/server/wm/WindowContainer;->mLastLayer:I

    if-ne p2, v0, :cond_b

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mLastRelativeToLayer:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    .line 965
    .local v0, "changed":Z
    :goto_c
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_1a

    if-eqz v0, :cond_1a

    .line 966
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->setLayer(Landroid/view/SurfaceControl$Transaction;I)V

    .line 967
    iput p2, p0, Lcom/android/server/wm/WindowContainer;->mLastLayer:I

    .line 968
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/WindowContainer;->mLastRelativeToLayer:Landroid/view/SurfaceControl;

    .line 970
    :cond_1a
    return-void
.end method

.method assignRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V
    .registers 6
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "relativeTo"    # Landroid/view/SurfaceControl;
    .param p3, "layer"    # I

    .line 973
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget v0, p0, Lcom/android/server/wm/WindowContainer;->mLastLayer:I

    if-ne p3, v0, :cond_b

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mLastRelativeToLayer:Landroid/view/SurfaceControl;

    if-eq v0, p2, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    .line 974
    .local v0, "changed":Z
    :goto_c
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_19

    if-eqz v0, :cond_19

    .line 975
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/WindowContainer;->setRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V

    .line 976
    iput p3, p0, Lcom/android/server/wm/WindowContainer;->mLastLayer:I

    .line 977
    iput-object p2, p0, Lcom/android/server/wm/WindowContainer;->mLastRelativeToLayer:Landroid/view/SurfaceControl;

    .line 979
    :cond_19
    return-void
.end method

.method cancelAnimation()V
    .registers 2

    .line 1159
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->cancelAnimation()V

    .line 1160
    return-void
.end method

.method checkAppWindowsReadyToShow()V
    .registers 3

    .line 681
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 682
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 683
    .local v1, "wc":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->checkAppWindowsReadyToShow()V

    .line 681
    .end local v1    # "wc":Lcom/android/server/wm/WindowContainer;
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 685
    .end local v0    # "i":I
    :cond_18
    return-void
.end method

.method checkCompleteDeferredRemoval()Z
    .registers 5

    .line 669
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    const/4 v0, 0x0

    .line 671
    .local v0, "stillDeferringRemoval":Z
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_1b

    .line 672
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 673
    .local v2, "wc":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->checkCompleteDeferredRemoval()Z

    move-result v3

    or-int/2addr v0, v3

    .line 671
    .end local v2    # "wc":Lcom/android/server/wm/WindowContainer;
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 676
    .end local v1    # "i":I
    :cond_1b
    return v0
.end method

.method public commitPendingTransaction()V
    .registers 1

    .line 1185
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    .line 1186
    return-void
.end method

.method public compareTo(Lcom/android/server/wm/WindowContainer;)I
    .registers 12
    .param p1, "other"    # Lcom/android/server/wm/WindowContainer;

    .line 837
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    if-ne p0, p1, :cond_4

    .line 838
    const/4 v0, 0x0

    return v0

    .line 841
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    iget-object v3, p1, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    if-ne v0, v3, :cond_21

    .line 842
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 843
    .local v0, "list":Lcom/android/server/wm/WindowList;, "Lcom/android/server/wm/WindowList<Lcom/android/server/wm/WindowContainer;>;"
    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    if-le v3, v4, :cond_20

    move v1, v2

    nop

    :cond_20
    return v1

    .line 846
    .end local v0    # "list":Lcom/android/server/wm/WindowList;, "Lcom/android/server/wm/WindowList<Lcom/android/server/wm/WindowContainer;>;"
    :cond_21
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTmpChain1:Ljava/util/LinkedList;

    .line 847
    .local v0, "thisParentChain":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/server/wm/WindowContainer;>;"
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mTmpChain2:Ljava/util/LinkedList;

    .line 849
    .local v3, "otherParentChain":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/server/wm/WindowContainer;>;"
    :try_start_25
    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowContainer;->getParents(Ljava/util/LinkedList;)V

    .line 850
    invoke-direct {p1, v3}, Lcom/android/server/wm/WindowContainer;->getParents(Ljava/util/LinkedList;)V

    .line 853
    const/4 v4, 0x0

    .line 854
    .local v4, "commonAncestor":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v0}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowContainer;

    .line 855
    .local v5, "thisTop":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v3}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowContainer;

    .line 856
    .local v6, "otherTop":Lcom/android/server/wm/WindowContainer;
    :goto_38
    if-eqz v5, :cond_57

    if-eqz v6, :cond_57

    if-ne v5, v6, :cond_57

    .line 857
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowContainer;

    move-object v4, v7

    .line 858
    invoke-virtual {v3}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 859
    invoke-virtual {v0}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowContainer;

    move-object v5, v7

    .line 860
    invoke-virtual {v3}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowContainer;
    :try_end_55
    .catchall {:try_start_25 .. :try_end_55} :catchall_b7

    move-object v6, v7

    goto :goto_38

    .line 864
    :cond_57
    if-eqz v4, :cond_98

    .line 871
    if-ne v4, p0, :cond_67

    .line 872
    nop

    .line 883
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mTmpChain1:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 884
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mTmpChain2:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 872
    return v1

    .line 873
    :cond_67
    if-ne v4, p1, :cond_75

    .line 874
    nop

    .line 883
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mTmpChain1:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 884
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mTmpChain2:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 874
    return v2

    .line 879
    :cond_75
    :try_start_75
    iget-object v7, v4, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 880
    .local v7, "list":Lcom/android/server/wm/WindowList;, "Lcom/android/server/wm/WindowList<Lcom/android/server/wm/WindowContainer;>;"
    invoke-virtual {v0}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v3}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v9
    :try_end_87
    .catchall {:try_start_75 .. :try_end_87} :catchall_b7

    if-le v8, v9, :cond_8c

    .line 881
    nop

    .line 883
    move v1, v2

    goto :goto_8d

    .line 881
    :cond_8c
    nop

    .line 883
    :goto_8d
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mTmpChain1:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 884
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mTmpChain2:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 880
    return v1

    .line 865
    .end local v7    # "list":Lcom/android/server/wm/WindowList;, "Lcom/android/server/wm/WindowList<Lcom/android/server/wm/WindowContainer;>;"
    :cond_98
    :try_start_98
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No in the same hierarchy this="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " other="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_b7
    .catchall {:try_start_98 .. :try_end_b7} :catchall_b7

    .line 883
    .end local v4    # "commonAncestor":Lcom/android/server/wm/WindowContainer;
    .end local v5    # "thisTop":Lcom/android/server/wm/WindowContainer;
    .end local v6    # "otherTop":Lcom/android/server/wm/WindowContainer;
    :catchall_b7
    move-exception v1

    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mTmpChain1:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 884
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mTmpChain2:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    throw v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 65
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    check-cast p1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->compareTo(Lcom/android/server/wm/WindowContainer;)I

    move-result p1

    return p1
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dumpAll"    # Z

    .line 1246
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1247
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "ContainerAnimator:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1248
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/SurfaceAnimator;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1250
    :cond_26
    return-void
.end method

.method endDelayingAnimationStart()V
    .registers 2

    .line 1231
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->endDelayingAnimationStart()V

    .line 1232
    return-void
.end method

.method fillsParent()Z
    .registers 2

    .line 766
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method forAllTasks(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/Task;",
            ">;)V"
        }
    .end annotation

    .line 815
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wm/Task;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 816
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Consumer;)V

    .line 815
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 818
    .end local v0    # "i":I
    :cond_18
    return-void
.end method

.method forAllWindows(Ljava/util/function/Consumer;Z)V
    .registers 4
    .param p2, "traverseTopToBottom"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/WindowState;",
            ">;Z)V"
        }
    .end annotation

    .line 804
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wm/WindowState;>;"
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowContainer;->obtainConsumerWrapper(Ljava/util/function/Consumer;)Lcom/android/server/wm/WindowContainer$ForAllWindowsConsumerWrapper;

    move-result-object v0

    .line 805
    .local v0, "wrapper":Lcom/android/server/wm/WindowContainer$ForAllWindowsConsumerWrapper;, "Lcom/android/server/wm/WindowContainer<TE;>.ForAllWindowsConsumerWrapper;"
    invoke-virtual {p0, v0, p2}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    .line 806
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer$ForAllWindowsConsumerWrapper;->release()V

    .line 807
    return-void
.end method

.method forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z
    .registers 8
    .param p2, "traverseTopToBottom"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/ToBooleanFunction<",
            "Lcom/android/server/wm/WindowState;",
            ">;Z)Z"
        }
    .end annotation

    .line 786
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "callback":Lcom/android/internal/util/ToBooleanFunction;, "Lcom/android/internal/util/ToBooleanFunction<Lcom/android/server/wm/WindowState;>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1f

    .line 787
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    .local v2, "i":I
    :goto_b
    if-ltz v2, :cond_3a

    .line 788
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 789
    return v1

    .line 787
    :cond_1c
    add-int/lit8 v2, v2, -0x1

    goto :goto_b

    .line 793
    .end local v2    # "i":I
    :cond_1f
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    .line 794
    .local v2, "count":I
    move v3, v0

    .local v3, "i":I
    :goto_26
    if-ge v3, v2, :cond_3a

    .line 795
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v4, p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 796
    return v1

    .line 794
    :cond_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    .line 800
    .end local v2    # "count":I
    .end local v3    # "i":I
    :cond_3a
    return v0
.end method

.method forceWindowsScaleableInTransaction(Z)V
    .registers 4
    .param p1, "force"    # Z

    .line 551
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 552
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 553
    .local v1, "wc":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowContainer;->forceWindowsScaleableInTransaction(Z)V

    .line 551
    .end local v1    # "wc":Lcom/android/server/wm/WindowContainer;
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 555
    .end local v0    # "i":I
    :cond_18
    return-void
.end method

.method getAnimation()Lcom/android/server/wm/AnimationAdapter;
    .registers 2

    .line 1217
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->getAnimation()Lcom/android/server/wm/AnimationAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAnimationLeashParent()Landroid/view/SurfaceControl;
    .registers 2

    .line 1169
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParentSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method getAppAnimationLayer(I)Landroid/view/SurfaceControl;
    .registers 4
    .param p1, "animationLayer"    # I
        .annotation build Lcom/android/server/wm/WindowContainer$AnimationLayer;
        .end annotation
    .end param

    .line 1176
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 1177
    .local v0, "parent":Lcom/android/server/wm/WindowContainer;
    if-eqz v0, :cond_b

    .line 1178
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowContainer;->getAppAnimationLayer(I)Landroid/view/SurfaceControl;

    move-result-object v1

    return-object v1

    .line 1180
    :cond_b
    const/4 v1, 0x0

    return-object v1
.end method

.method protected bridge synthetic getChildAt(I)Lcom/android/server/wm/ConfigurationContainer;
    .registers 2

    .line 65
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object p1

    return-object p1
.end method

.method protected getChildAt(I)Lcom/android/server/wm/WindowContainer;
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 165
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowContainer;

    return-object v0
.end method

.method protected getChildCount()I
    .registers 2

    .line 160
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    return v0
.end method

.method getController()Lcom/android/server/wm/WindowContainerController;
    .registers 2

    .line 898
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mController:Lcom/android/server/wm/WindowContainerController;

    return-object v0
.end method

.method getDimmer()Lcom/android/server/wm/Dimmer;
    .registers 2

    .line 1277
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    if-nez v0, :cond_6

    .line 1278
    const/4 v0, 0x0

    return-object v0

    .line 1280
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getDimmer()Lcom/android/server/wm/Dimmer;

    move-result-object v0

    return-object v0
.end method

.method public getMiuiConfigFlag()I
    .registers 2

    .line 1296
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget v0, p0, Lcom/android/server/wm/WindowContainer;->mMiuiConfigFlag:I

    return v0
.end method

.method public getMiuiProjection()Z
    .registers 2

    .line 1312
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-boolean v0, p0, Lcom/android/server/wm/WindowContainer;->mProjectioned:Z

    return v0
.end method

.method getOrientation()I
    .registers 2

    .line 699
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget v0, p0, Lcom/android/server/wm/WindowContainer;->mOrientation:I

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getOrientation(I)I

    move-result v0

    return v0
.end method

.method getOrientation(I)I
    .registers 8
    .param p1, "candidate"    # I

    .line 714
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->fillsParent()Z

    move-result v0

    const/4 v1, -0x2

    if-nez v0, :cond_8

    .line 716
    return v1

    .line 723
    :cond_8
    iget v0, p0, Lcom/android/server/wm/WindowContainer;->mOrientation:I

    const/4 v2, -0x1

    if-eq v0, v1, :cond_14

    iget v0, p0, Lcom/android/server/wm/WindowContainer;->mOrientation:I

    if-eq v0, v2, :cond_14

    .line 725
    iget v0, p0, Lcom/android/server/wm/WindowContainer;->mOrientation:I

    return v0

    .line 728
    :cond_14
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_1c
    if-ltz v0, :cond_46

    .line 729
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    .line 733
    .local v3, "wc":Lcom/android/server/wm/WindowContainer;
    const/4 v4, 0x3

    if-ne p1, v4, :cond_2c

    .line 734
    nop

    .line 733
    move v5, v4

    goto :goto_2e

    .line 734
    :cond_2c
    nop

    .line 733
    move v5, v1

    :goto_2e
    invoke-virtual {v3, v5}, Lcom/android/server/wm/WindowContainer;->getOrientation(I)I

    move-result v5

    .line 735
    .local v5, "orientation":I
    if-ne v5, v4, :cond_36

    .line 739
    move p1, v5

    .line 740
    goto :goto_42

    .line 743
    :cond_36
    if-ne v5, v1, :cond_39

    .line 744
    goto :goto_42

    .line 747
    :cond_39
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->fillsParent()Z

    move-result v4

    if-nez v4, :cond_45

    if-eq v5, v2, :cond_42

    goto :goto_45

    .line 728
    .end local v3    # "wc":Lcom/android/server/wm/WindowContainer;
    .end local v5    # "orientation":I
    :cond_42
    :goto_42
    add-int/lit8 v0, v0, -0x1

    goto :goto_1c

    .line 750
    .restart local v3    # "wc":Lcom/android/server/wm/WindowContainer;
    .restart local v5    # "orientation":I
    :cond_45
    :goto_45
    return v5

    .line 754
    .end local v0    # "i":I
    .end local v3    # "wc":Lcom/android/server/wm/WindowContainer;
    .end local v5    # "orientation":I
    :cond_46
    return p1
.end method

.method protected bridge synthetic getParent()Lcom/android/server/wm/ConfigurationContainer;
    .registers 2

    .line 65
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    return-object v0
.end method

.method protected final getParent()Lcom/android/server/wm/WindowContainer;
    .registers 2

    .line 155
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    return-object v0
.end method

.method public getParentSurfaceControl()Landroid/view/SurfaceControl;
    .registers 3

    .line 933
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 934
    .local v0, "parent":Lcom/android/server/wm/WindowContainer;
    if-nez v0, :cond_8

    .line 935
    const/4 v1, 0x0

    return-object v1

    .line 937
    :cond_8
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    return-object v1
.end method

.method public getPendingTransaction()Landroid/view/SurfaceControl$Transaction;
    .registers 2

    .line 1136
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mPendingTransaction:Landroid/view/SurfaceControl$Transaction;

    return-object v0
.end method

.method getPrefixOrderIndex()I
    .registers 2

    .line 353
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    if-nez v0, :cond_6

    .line 354
    const/4 v0, 0x0

    return v0

    .line 356
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    invoke-direct {v0, p0}, Lcom/android/server/wm/WindowContainer;->getPrefixOrderIndex(Lcom/android/server/wm/WindowContainer;)I

    move-result v0

    return v0
.end method

.method getRelativePosition(Landroid/graphics/Point;)V
    .registers 7
    .param p1, "outPos"    # Landroid/graphics/Point;

    .line 1267
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 1268
    .local v0, "bounds":Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 1269
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    .line 1270
    .local v1, "parent":Lcom/android/server/wm/WindowContainer;
    if-eqz v1, :cond_1e

    .line 1271
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 1272
    .local v2, "parentBounds":Landroid/graphics/Rect;
    iget v3, v2, Landroid/graphics/Rect;->left:I

    neg-int v3, v3

    iget v4, v2, Landroid/graphics/Rect;->top:I

    neg-int v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Point;->offset(II)V

    .line 1274
    .end local v2    # "parentBounds":Landroid/graphics/Rect;
    :cond_1e
    return-void
.end method

.method getSession()Landroid/view/SurfaceSession;
    .registers 2

    .line 957
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 958
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getSession()Landroid/view/SurfaceSession;

    move-result-object v0

    return-object v0

    .line 960
    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSurfaceControl()Landroid/view/SurfaceControl;
    .registers 2

    .line 1131
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method public getSurfaceHeight()I
    .registers 2

    .line 1241
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->getHeight()I

    move-result v0

    return v0
.end method

.method public getSurfaceWidth()I
    .registers 2

    .line 1236
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->getWidth()I

    move-result v0

    return v0
.end method

.method getTopChild()Lcom/android/server/wm/WindowContainer;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 664
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowContainer;

    return-object v0
.end method

.method getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/WindowState;",
            ">;)",
            "Lcom/android/server/wm/WindowState;"
        }
    .end annotation

    .line 821
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "callback":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/wm/WindowState;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1c

    .line 822
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 823
    .local v1, "w":Lcom/android/server/wm/WindowState;
    if-eqz v1, :cond_19

    .line 824
    return-object v1

    .line 821
    .end local v1    # "w":Lcom/android/server/wm/WindowState;
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 828
    .end local v0    # "i":I
    :cond_1c
    const/4 v0, 0x0

    return-object v0
.end method

.method hasChild(Lcom/android/server/wm/WindowContainer;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 393
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "child":Lcom/android/server/wm/WindowContainer;, "TE;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1f

    .line 394
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 395
    .local v2, "current":Lcom/android/server/wm/WindowContainer;, "TE;"
    if-eq v2, p1, :cond_1e

    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowContainer;->hasChild(Lcom/android/server/wm/WindowContainer;)Z

    move-result v3

    if-eqz v3, :cond_1b

    goto :goto_1e

    .line 393
    .end local v2    # "current":Lcom/android/server/wm/WindowContainer;, "TE;"
    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 396
    .restart local v2    # "current":Lcom/android/server/wm/WindowContainer;, "TE;"
    :cond_1e
    :goto_1e
    return v1

    .line 399
    .end local v0    # "i":I
    .end local v2    # "current":Lcom/android/server/wm/WindowContainer;, "TE;"
    :cond_1f
    const/4 v0, 0x0

    return v0
.end method

.method hasCommittedReparentToAnimationLeash()Z
    .registers 2

    .line 1116
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-boolean v0, p0, Lcom/android/server/wm/WindowContainer;->mCommittedReparentToAnimationLeash:Z

    return v0
.end method

.method hasContentToDisplay()Z
    .registers 5

    .line 621
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1c

    .line 622
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 623
    .local v2, "wc":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->hasContentToDisplay()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 624
    return v1

    .line 621
    .end local v2    # "wc":Lcom/android/server/wm/WindowContainer;
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 627
    .end local v0    # "i":I
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method isAnimating()Z
    .registers 2

    .line 581
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isSelfAnimating()Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    :goto_16
    return v0
.end method

.method isAppAnimating()Z
    .registers 5

    .line 589
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "j":I
    :goto_8
    if-ltz v0, :cond_1c

    .line 590
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 591
    .local v2, "wc":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isAppAnimating()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 592
    return v1

    .line 589
    .end local v2    # "wc":Lcom/android/server/wm/WindowContainer;
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 595
    .end local v0    # "j":I
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method isOnTop()Z
    .registers 2

    .line 659
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-ne v0, p0, :cond_1c

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isOnTop()Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    return v0
.end method

.method isSelfAnimating()Z
    .registers 2

    .line 602
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->isAnimating()Z

    move-result v0

    return v0
.end method

.method isSelfOrChildAnimating()Z
    .registers 5

    .line 562
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isSelfAnimating()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 563
    return v1

    .line 565
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    .local v0, "j":I
    :goto_f
    if-ltz v0, :cond_23

    .line 566
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 567
    .local v2, "wc":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isSelfOrChildAnimating()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 568
    return v1

    .line 565
    .end local v2    # "wc":Lcom/android/server/wm/WindowContainer;
    :cond_20
    add-int/lit8 v0, v0, -0x1

    goto :goto_f

    .line 571
    .end local v0    # "j":I
    :cond_23
    const/4 v0, 0x0

    return v0
.end method

.method isVisible()Z
    .registers 5

    .line 644
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1c

    .line 645
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 646
    .local v2, "wc":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 647
    return v1

    .line 644
    .end local v2    # "wc":Lcom/android/server/wm/WindowContainer;
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 650
    .end local v0    # "i":I
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method public makeAnimationLeash()Landroid/view/SurfaceControl$Builder;
    .registers 2

    .line 1164
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->makeSurface()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;
    .registers 5
    .param p1, "child"    # Lcom/android/server/wm/WindowContainer;

    .line 924
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 927
    .local v0, "p":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowContainer;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 928
    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    .line 927
    return-object v1
.end method

.method makeSurface()Landroid/view/SurfaceControl$Builder;
    .registers 3

    .line 915
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 916
    .local v0, "p":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowContainer;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    return-object v1
.end method

.method needsZBoost()Z
    .registers 4

    .line 1025
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1d

    .line 1026
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->needsZBoost()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1027
    const/4 v0, 0x1

    return v0

    .line 1025
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1030
    .end local v1    # "i":I
    :cond_1d
    return v0
.end method

.method protected onAnimationFinished()V
    .registers 1

    .line 1211
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    return-void
.end method

.method public onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .registers 4
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "leash"    # Landroid/view/SurfaceControl;

    .line 1197
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/WindowContainer;->mLastLayer:I

    .line 1198
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->reassignLayer(Landroid/view/SurfaceControl$Transaction;)V

    .line 1199
    return-void
.end method

.method public onAnimationLeashDestroyed(Landroid/view/SurfaceControl$Transaction;)V
    .registers 3
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 1203
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/WindowContainer;->mLastLayer:I

    .line 1204
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->reassignLayer(Landroid/view/SurfaceControl$Transaction;)V

    .line 1205
    return-void
.end method

.method onAppTransitionDone()V
    .registers 3

    .line 688
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 689
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 690
    .local v1, "wc":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->onAppTransitionDone()V

    .line 688
    .end local v1    # "wc":Lcom/android/server/wm/WindowContainer;
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 692
    .end local v0    # "i":I
    :cond_18
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .param p1, "newParentConfig"    # Landroid/content/res/Configuration;

    .line 170
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-super {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 171
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->updateSurfacePosition()V

    .line 172
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    .line 173
    return-void
.end method

.method onDescendantOverrideConfigurationChanged()V
    .registers 2

    .line 494
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    if-eqz v0, :cond_9

    .line 495
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->onDescendantOverrideConfigurationChanged()V

    .line 497
    :cond_9
    return-void
.end method

.method onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V
    .registers 4
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;

    .line 504
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 505
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 506
    .local v1, "child":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowContainer;->onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V

    .line 504
    .end local v1    # "child":Lcom/android/server/wm/WindowContainer;
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 508
    .end local v0    # "i":I
    :cond_18
    return-void
.end method

.method onMovedByResize()V
    .registers 3

    .line 537
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 538
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 539
    .local v1, "wc":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->onMovedByResize()V

    .line 537
    .end local v1    # "wc":Lcom/android/server/wm/WindowContainer;
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 541
    .end local v0    # "i":I
    :cond_18
    return-void
.end method

.method public onOverrideConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .param p1, "overrideConfiguration"    # Landroid/content/res/Configuration;

    .line 473
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->diffOverrideBounds(Landroid/graphics/Rect;)I

    move-result v0

    .line 474
    .local v0, "diff":I
    invoke-super {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->onOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 475
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    if-eqz v1, :cond_16

    .line 476
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->onDescendantOverrideConfigurationChanged()V

    .line 479
    :cond_16
    if-nez v0, :cond_19

    .line 480
    return-void

    .line 483
    :cond_19
    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_22

    .line 484
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->onResize()V

    goto :goto_25

    .line 486
    :cond_22
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->onMovedByResize()V

    .line 488
    :goto_25
    return-void
.end method

.method onParentResize()V
    .registers 2

    .line 528
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->hasOverrideBounds()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 529
    return-void

    .line 533
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->onResize()V

    .line 534
    return-void
.end method

.method onParentSet()V
    .registers 3

    .line 194
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    if-nez v0, :cond_5

    .line 195
    return-void

    .line 198
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_20

    .line 201
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->makeSurface()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 202
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 203
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->updateSurfacePosition()V

    goto :goto_2b

    .line 209
    :cond_20
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    iget-object v1, v1, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowContainer;->reparentSurfaceControl(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 213
    :goto_2b
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->assignChildLayers()V

    .line 214
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    .line 215
    return-void
.end method

.method onResize()V
    .registers 3

    .line 518
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 519
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 520
    .local v1, "wc":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->onParentResize()V

    .line 518
    .end local v1    # "wc":Lcom/android/server/wm/WindowContainer;
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 522
    .end local v0    # "i":I
    :cond_18
    return-void
.end method

.method positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V
    .registers 8
    .param p1, "position"    # I
    .param p3, "includingParents"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;Z)V"
        }
    .end annotation

    .line 415
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p2, "child":Lcom/android/server/wm/WindowContainer;, "TE;"
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-ne v0, p0, :cond_a5

    .line 421
    const/high16 v0, -0x80000000

    if-gez p1, :cond_c

    if-ne p1, v0, :cond_1a

    :cond_c
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 422
    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    const v2, 0x7fffffff

    if-le p1, v1, :cond_40

    if-ne p1, v2, :cond_1a

    goto :goto_40

    .line 423
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "positionAt: invalid position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", children number="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 424
    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 427
    :cond_40
    :goto_40
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    if-lt p1, v1, :cond_4e

    .line 428
    const p1, 0x7fffffff

    goto :goto_52

    .line 429
    :cond_4e
    if-nez p1, :cond_52

    .line 430
    const/high16 p1, -0x80000000

    .line 433
    :cond_52
    :goto_52
    if-eq p1, v0, :cond_83

    if-eq p1, v2, :cond_61

    .line 459
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/WindowList;->remove(Ljava/lang/Object;)Z

    .line 460
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/WindowList;->add(ILjava/lang/Object;)V

    goto :goto_a4

    .line 435
    :cond_61
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->peekLast()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p2, :cond_73

    .line 436
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/WindowList;->remove(Ljava/lang/Object;)Z

    .line 437
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/WindowList;->add(Ljava/lang/Object;)Z

    .line 439
    :cond_73
    if-eqz p3, :cond_a4

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eqz v0, :cond_a4

    .line 440
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0, v2, p0, v3}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    goto :goto_a4

    .line 445
    :cond_83
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->peekFirst()Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p2, :cond_95

    .line 446
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/WindowList;->remove(Ljava/lang/Object;)Z

    .line 447
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/WindowList;->addFirst(Ljava/lang/Object;)V

    .line 449
    :cond_95
    if-eqz p3, :cond_a4

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    if-eqz v1, :cond_a4

    .line 450
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    invoke-virtual {v1, v0, p0, v3}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 462
    :cond_a4
    :goto_a4
    return-void

    .line 416
    :cond_a5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeChild: container="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not a child of container="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " current parent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method prepareSurfaces()V
    .registers 3

    .line 1101
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-static {v0}, Landroid/view/SurfaceControl;->mergeToGlobalTransaction(Landroid/view/SurfaceControl$Transaction;)V

    .line 1105
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->hasLeash()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowContainer;->mCommittedReparentToAnimationLeash:Z

    .line 1106
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    if-ge v0, v1, :cond_26

    .line 1107
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->prepareSurfaces()V

    .line 1106
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 1109
    .end local v0    # "i":I
    :cond_26
    return-void
.end method

.method reassignLayer(Landroid/view/SurfaceControl$Transaction;)V
    .registers 3
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 1189
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 1190
    .local v0, "parent":Lcom/android/server/wm/WindowContainer;
    if-eqz v0, :cond_9

    .line 1191
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowContainer;->assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V

    .line 1193
    :cond_9
    return-void
.end method

.method removeChild(Lcom/android/server/wm/WindowContainer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 289
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "child":Lcom/android/server/wm/WindowContainer;, "TE;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 290
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowContainer;->onChildRemoved(Lcom/android/server/wm/WindowContainer;)V

    .line 291
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowContainer;->setParent(Lcom/android/server/wm/WindowContainer;)V

    .line 296
    return-void

    .line 293
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeChild: container="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not a child of container="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method removeIfPossible()V
    .registers 3

    .line 385
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 386
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 387
    .local v1, "wc":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->removeIfPossible()V

    .line 385
    .end local v1    # "wc":Lcom/android/server/wm/WindowContainer;
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 389
    .end local v0    # "i":I
    :cond_18
    return-void
.end method

.method removeImmediately()V
    .registers 4

    .line 315
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 316
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowContainer;

    .line 317
    .local v0, "child":Lcom/android/server/wm/WindowContainer;, "TE;"
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->removeImmediately()V

    .line 321
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 322
    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowContainer;->onChildRemoved(Lcom/android/server/wm/WindowContainer;)V

    .line 324
    .end local v0    # "child":Lcom/android/server/wm/WindowContainer;, "TE;"
    :cond_1e
    goto :goto_0

    .line 326
    :cond_1f
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    if-eqz v0, :cond_3f

    .line 327
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mPendingTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Transaction;->destroy(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 331
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    if-eqz v0, :cond_3a

    .line 332
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mPendingTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    .line 335
    :cond_3a
    iput-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 336
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    .line 339
    :cond_3f
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    if-eqz v0, :cond_48

    .line 340
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowContainer;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    .line 343
    :cond_48
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mController:Lcom/android/server/wm/WindowContainerController;

    if-eqz v0, :cond_4f

    .line 344
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowContainer;->setController(Lcom/android/server/wm/WindowContainerController;)V

    .line 347
    :cond_4f
    return-void
.end method

.method protected reparentSurfaceControl(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .registers 4
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "newParent"    # Landroid/view/SurfaceControl;

    .line 996
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/SurfaceAnimator;->reparent(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 997
    return-void
.end method

.method resetDragResizingChangeReported()V
    .registers 3

    .line 544
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 545
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 546
    .local v1, "wc":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->resetDragResizingChangeReported()V

    .line 544
    .end local v1    # "wc":Lcom/android/server/wm/WindowContainer;
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 548
    .end local v0    # "i":I
    :cond_18
    return-void
.end method

.method scheduleAnimation()V
    .registers 2

    .line 1124
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    if-eqz v0, :cond_9

    .line 1125
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    .line 1127
    :cond_9
    return-void
.end method

.method sendAppVisibilityToClients()V
    .registers 3

    .line 606
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 607
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 608
    .local v1, "wc":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->sendAppVisibilityToClients()V

    .line 606
    .end local v1    # "wc":Lcom/android/server/wm/WindowContainer;
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 610
    .end local v0    # "i":I
    :cond_18
    return-void
.end method

.method setController(Lcom/android/server/wm/WindowContainerController;)V
    .registers 5
    .param p1, "controller"    # Lcom/android/server/wm/WindowContainerController;

    .line 902
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mController:Lcom/android/server/wm/WindowContainerController;

    if-eqz v0, :cond_32

    if-nez p1, :cond_7

    goto :goto_32

    .line 903
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t set controller="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mController:Lcom/android/server/wm/WindowContainerController;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for container="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " Already set to="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mController:Lcom/android/server/wm/WindowContainerController;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 906
    :cond_32
    :goto_32
    if-eqz p1, :cond_38

    .line 907
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainerController;->setContainer(Lcom/android/server/wm/WindowContainer;)V

    goto :goto_42

    .line 908
    :cond_38
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mController:Lcom/android/server/wm/WindowContainerController;

    if-eqz v0, :cond_42

    .line 909
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mController:Lcom/android/server/wm/WindowContainerController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowContainerController;->setContainer(Lcom/android/server/wm/WindowContainer;)V

    .line 911
    :cond_42
    :goto_42
    iput-object p1, p0, Lcom/android/server/wm/WindowContainer;->mController:Lcom/android/server/wm/WindowContainerController;

    .line 912
    return-void
.end method

.method protected setLayer(Landroid/view/SurfaceControl$Transaction;I)V
    .registers 4
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "layer"    # I

    .line 985
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/SurfaceAnimator;->setLayer(Landroid/view/SurfaceControl$Transaction;I)V

    .line 986
    return-void
.end method

.method public setMiuiConfigFlag(IZ)V
    .registers 3
    .param p1, "miuiConfigFlag"    # I
        .annotation build Landroid/app/WindowConfiguration$MiuiConfigFlag;
        .end annotation
    .end param
    .param p2, "isSetToStack"    # Z

    .line 1288
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iput p1, p0, Lcom/android/server/wm/WindowContainer;->mMiuiConfigFlag:I

    .line 1289
    return-void
.end method

.method public setMiuiProjection(Z)V
    .registers 2
    .param p1, "projectioned"    # Z

    .line 1304
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iput-boolean p1, p0, Lcom/android/server/wm/WindowContainer;->mProjectioned:Z

    .line 1305
    return-void
.end method

.method setOrientation(I)V
    .registers 2
    .param p1, "orientation"    # I

    .line 695
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iput p1, p0, Lcom/android/server/wm/WindowContainer;->mOrientation:I

    .line 696
    return-void
.end method

.method protected final setParent(Lcom/android/server/wm/WindowContainer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowContainer<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;)V"
        }
    .end annotation

    .line 176
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "parent":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<Lcom/android/server/wm/WindowContainer;>;"
    iput-object p1, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    .line 179
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    if-eqz v0, :cond_12

    .line 181
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 183
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->onMergedOverrideConfigurationChanged()V

    .line 186
    :cond_12
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->onParentSet()V

    .line 187
    return-void
.end method

.method protected setRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V
    .registers 5
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "relativeTo"    # Landroid/view/SurfaceControl;
    .param p3, "layer"    # I

    .line 992
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/SurfaceAnimator;->setRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V

    .line 993
    return-void
.end method

.method setWaitingForDrawnIfResizingChanged()V
    .registers 3

    .line 511
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 512
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 513
    .local v1, "wc":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->setWaitingForDrawnIfResizingChanged()V

    .line 511
    .end local v1    # "wc":Lcom/android/server/wm/WindowContainer;
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 515
    .end local v0    # "i":I
    :cond_18
    return-void
.end method

.method shouldMagnify()Z
    .registers 4

    .line 944
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 945
    return v1

    .line 948
    :cond_6
    move v0, v1

    .local v0, "i":I
    :goto_7
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    if-ge v0, v2, :cond_21

    .line 949
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->shouldMagnify()Z

    move-result v2

    if-nez v2, :cond_1e

    .line 950
    return v1

    .line 948
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 953
    .end local v0    # "i":I
    :cond_21
    const/4 v0, 0x1

    return v0
.end method

.method startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;Z)V
    .registers 5
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "anim"    # Lcom/android/server/wm/AnimationAdapter;
    .param p3, "hidden"    # Z

    .line 1151
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/SurfaceAnimator;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;Z)V

    .line 1152
    return-void
.end method

.method startDelayingAnimationStart()V
    .registers 2

    .line 1224
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->startDelayingAnimationStart()V

    .line 1225
    return-void
.end method

.method switchUser()V
    .registers 3

    .line 771
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 772
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->switchUser()V

    .line 771
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 774
    .end local v0    # "i":I
    :cond_18
    return-void
.end method

.method transferAnimation(Lcom/android/server/wm/WindowContainer;)V
    .registers 4
    .param p1, "from"    # Lcom/android/server/wm/WindowContainer;

    .line 1155
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    iget-object v1, p1, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SurfaceAnimator;->transferAnimation(Lcom/android/server/wm/SurfaceAnimator;)V

    .line 1156
    return-void
.end method

.method updateSurfacePosition()V
    .registers 5

    .line 1253
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_5

    .line 1254
    return-void

    .line 1257
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTmpPos:Landroid/graphics/Point;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getRelativePosition(Landroid/graphics/Point;)V

    .line 1258
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTmpPos:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mLastSurfacePosition:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1259
    return-void

    .line 1262
    :cond_15
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mTmpPos:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mTmpPos:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 1263
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mLastSurfacePosition:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mTmpPos:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mTmpPos:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 1264
    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;JZ)V
    .registers 10
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "trim"    # Z

    .line 1045
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 1046
    .local v0, "token":J
    const-wide v2, 0x10b00000001L

    invoke-super {p0, p1, v2, v3, p4}, Lcom/android/server/wm/ConfigurationContainer;->writeToProto(Landroid/util/proto/ProtoOutputStream;JZ)V

    .line 1047
    iget v2, p0, Lcom/android/server/wm/WindowContainer;->mOrientation:I

    const-wide v3, 0x10500000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1048
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v2

    const-wide v3, 0x10800000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1049
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    const-wide v3, 0x10b00000004L

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/wm/SurfaceAnimator;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1050
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1051
    return-void
.end method
