.class Lcom/android/server/lights/view/MusicView$LineData;
.super Ljava/lang/Object;
.source "MusicView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/lights/view/MusicView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LineData"
.end annotation


# instance fields
.field public mBottomConfig:Lcom/android/server/lights/view/MusicView$WaveConfig;

.field public mBottomPaint:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Paint;",
            ">;"
        }
    .end annotation
.end field

.field public mLeftBottomPath:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation
.end field

.field public mLeftTopPath:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation
.end field

.field public mRightBottomPath:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation
.end field

.field public mRightTopPath:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation
.end field

.field public mTopConfig:Lcom/android/server/lights/view/MusicView$WaveConfig;

.field public mTopPaint:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Paint;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/lights/view/MusicView;


# direct methods
.method public constructor <init>(Lcom/android/server/lights/view/MusicView;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/lights/view/MusicView;

    .line 312
    iput-object p1, p0, Lcom/android/server/lights/view/MusicView$LineData;->this$0:Lcom/android/server/lights/view/MusicView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 303
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/lights/view/MusicView$LineData;->mLeftTopPath:Ljava/util/List;

    .line 304
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/lights/view/MusicView$LineData;->mLeftBottomPath:Ljava/util/List;

    .line 305
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/lights/view/MusicView$LineData;->mRightTopPath:Ljava/util/List;

    .line 306
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/lights/view/MusicView$LineData;->mRightBottomPath:Ljava/util/List;

    .line 307
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/lights/view/MusicView$LineData;->mTopPaint:Ljava/util/List;

    .line 308
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/lights/view/MusicView$LineData;->mBottomPaint:Ljava/util/List;

    .line 309
    new-instance v0, Lcom/android/server/lights/view/MusicView$WaveConfig;

    iget-object v1, p0, Lcom/android/server/lights/view/MusicView$LineData;->this$0:Lcom/android/server/lights/view/MusicView;

    invoke-direct {v0, v1}, Lcom/android/server/lights/view/MusicView$WaveConfig;-><init>(Lcom/android/server/lights/view/MusicView;)V

    iput-object v0, p0, Lcom/android/server/lights/view/MusicView$LineData;->mTopConfig:Lcom/android/server/lights/view/MusicView$WaveConfig;

    .line 310
    new-instance v0, Lcom/android/server/lights/view/MusicView$WaveConfig;

    iget-object v1, p0, Lcom/android/server/lights/view/MusicView$LineData;->this$0:Lcom/android/server/lights/view/MusicView;

    invoke-direct {v0, v1}, Lcom/android/server/lights/view/MusicView$WaveConfig;-><init>(Lcom/android/server/lights/view/MusicView;)V

    iput-object v0, p0, Lcom/android/server/lights/view/MusicView$LineData;->mBottomConfig:Lcom/android/server/lights/view/MusicView$WaveConfig;

    .line 313
    return-void
.end method
