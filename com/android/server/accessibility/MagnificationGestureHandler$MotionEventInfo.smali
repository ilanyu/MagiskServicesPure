.class final Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;
.super Ljava/lang/Object;
.source "MagnificationGestureHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/MagnificationGestureHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MotionEventInfo"
.end annotation


# static fields
.field private static final MAX_POOL_SIZE:I = 0xa

.field private static final sLock:Ljava/lang/Object;

.field private static sPool:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

.field private static sPoolSize:I


# instance fields
.field public event:Landroid/view/MotionEvent;

.field private mInPool:Z

.field private mNext:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

.field public policyFlags:I

.field public rawEvent:Landroid/view/MotionEvent;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 975
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 972
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;)Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    .line 972
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->mNext:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;)Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;
    .param p1, "x1"    # Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    .line 972
    iput-object p1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->mNext:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    return-object p1
.end method

.method private clear()V
    .registers 2

    .line 1033
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->event:Landroid/view/MotionEvent;

    # invokes: Lcom/android/server/accessibility/MagnificationGestureHandler;->recycleAndNullify(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler;->access$800(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->event:Landroid/view/MotionEvent;

    .line 1034
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->rawEvent:Landroid/view/MotionEvent;

    # invokes: Lcom/android/server/accessibility/MagnificationGestureHandler;->recycleAndNullify(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler;->access$800(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->rawEvent:Landroid/view/MotionEvent;

    .line 1035
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->policyFlags:I

    .line 1036
    return-void
.end method

.method static countOf(Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;I)I
    .registers 4
    .param p0, "info"    # Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;
    .param p1, "eventType"    # I

    .line 1039
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 1040
    :cond_4
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->event:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, p1, :cond_e

    const/4 v0, 0x1

    nop

    :cond_e
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->mNext:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    .line 1041
    invoke-static {v1, p1}, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->countOf(Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;I)I

    move-result v1

    add-int/2addr v0, v1

    .line 1040
    return v0
.end method

.method private initialize(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 1012
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->event:Landroid/view/MotionEvent;

    .line 1013
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->rawEvent:Landroid/view/MotionEvent;

    .line 1014
    iput p3, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->policyFlags:I

    .line 1015
    return-void
.end method

.method public static obtain(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;
    .registers 5
    .param p0, "event"    # Landroid/view/MotionEvent;
    .param p1, "rawEvent"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .line 988
    sget-object v0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 989
    :try_start_3
    invoke-static {}, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->obtainInternal()Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    move-result-object v1

    .line 990
    .local v1, "info":Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;
    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->initialize(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 991
    monitor-exit v0

    return-object v1

    .line 992
    .end local v1    # "info":Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method private static obtainInternal()Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;
    .registers 2

    .line 998
    sget v0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->sPoolSize:I

    if-lez v0, :cond_17

    .line 999
    sget v0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->sPoolSize:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->sPoolSize:I

    .line 1000
    sget-object v0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->sPool:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    .line 1001
    .local v0, "info":Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;
    iget-object v1, v0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->mNext:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    sput-object v1, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->sPool:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    .line 1002
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->mNext:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    .line 1003
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->mInPool:Z

    goto :goto_1c

    .line 1005
    .end local v0    # "info":Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;
    :cond_17
    new-instance v0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    invoke-direct {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;-><init>()V

    .line 1007
    .restart local v0    # "info":Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;
    :goto_1c
    return-object v0
.end method

.method public static toString(Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;)Ljava/lang/String;
    .registers 5
    .param p0, "info"    # Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    .line 1045
    if-nez p0, :cond_5

    .line 1046
    const-string v0, ""

    goto :goto_31

    .line 1048
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->event:Landroid/view/MotionEvent;

    .line 1047
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-static {v1}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ACTION_"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->mNext:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    .line 1048
    invoke-static {v1}, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->toString(Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1045
    :goto_31
    return-object v0
.end method


# virtual methods
.method public recycle()V
    .registers 4

    .line 1018
    sget-object v0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1019
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->mInPool:Z

    if-nez v1, :cond_20

    .line 1022
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->clear()V

    .line 1023
    sget v1, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->sPoolSize:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_1e

    .line 1024
    sget v1, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->sPoolSize:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    sput v1, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->sPoolSize:I

    .line 1025
    sget-object v1, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->sPool:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    iput-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->mNext:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    .line 1026
    sput-object p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->sPool:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    .line 1027
    iput-boolean v2, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->mInPool:Z

    .line 1029
    :cond_1e
    monitor-exit v0

    .line 1030
    return-void

    .line 1020
    :cond_20
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Already recycled."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1029
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v1
.end method
