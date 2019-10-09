.class Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager$2;
.super Lmiui/process/IForegroundInfoListener$Stub;
.source "ThreeDimensionalGestureManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;


# direct methods
.method constructor <init>(Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;

    .line 197
    iput-object p1, p0, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager$2;->this$0:Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;

    invoke-direct {p0}, Lmiui/process/IForegroundInfoListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundInfoChanged(Lmiui/process/ForegroundInfo;)V
    .registers 4
    .param p1, "foregroundInfo"    # Lmiui/process/ForegroundInfo;

    .line 200
    iget-object v0, p0, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager$2;->this$0:Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;

    iget-object v1, p1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    # setter for: Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->mForegroundPackage:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->access$102(Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;Ljava/lang/String;)Ljava/lang/String;

    .line 201
    return-void
.end method
