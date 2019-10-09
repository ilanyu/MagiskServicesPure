.class Lcom/android/server/lights/view/MessageView$LineData;
.super Ljava/lang/Object;
.source "MessageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/lights/view/MessageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LineData"
.end annotation


# instance fields
.field public mConfig:Lcom/android/server/lights/view/MessageView$WaveConfig;

.field public mLeftPath:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation
.end field

.field public mPaint:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Paint;",
            ">;"
        }
    .end annotation
.end field

.field public mRightPath:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/lights/view/MessageView;


# direct methods
.method public constructor <init>(Lcom/android/server/lights/view/MessageView;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/lights/view/MessageView;

    .line 299
    iput-object p1, p0, Lcom/android/server/lights/view/MessageView$LineData;->this$0:Lcom/android/server/lights/view/MessageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/lights/view/MessageView$LineData;->mLeftPath:Ljava/util/List;

    .line 295
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/lights/view/MessageView$LineData;->mRightPath:Ljava/util/List;

    .line 296
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/lights/view/MessageView$LineData;->mPaint:Ljava/util/List;

    .line 297
    new-instance v0, Lcom/android/server/lights/view/MessageView$WaveConfig;

    iget-object v1, p0, Lcom/android/server/lights/view/MessageView$LineData;->this$0:Lcom/android/server/lights/view/MessageView;

    invoke-direct {v0, v1}, Lcom/android/server/lights/view/MessageView$WaveConfig;-><init>(Lcom/android/server/lights/view/MessageView;)V

    iput-object v0, p0, Lcom/android/server/lights/view/MessageView$LineData;->mConfig:Lcom/android/server/lights/view/MessageView$WaveConfig;

    .line 300
    return-void
.end method
