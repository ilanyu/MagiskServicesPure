.class Lcom/android/server/lights/view/MessageView$PictureData;
.super Ljava/lang/Object;
.source "MessageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/lights/view/MessageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PictureData"
.end annotation


# instance fields
.field public mAlpha:D

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mMatrix:Landroid/graphics/Matrix;

.field public mScaleX:D

.field public mScaleY:D

.field final synthetic this$0:Lcom/android/server/lights/view/MessageView;


# direct methods
.method constructor <init>(Lcom/android/server/lights/view/MessageView;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/lights/view/MessageView;

    .line 303
    iput-object p1, p0, Lcom/android/server/lights/view/MessageView$PictureData;->this$0:Lcom/android/server/lights/view/MessageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/android/server/lights/view/MessageView$PictureData;->mScaleX:D

    .line 307
    iput-wide v0, p0, Lcom/android/server/lights/view/MessageView$PictureData;->mScaleY:D

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/lights/view/MessageView$PictureData;)Landroid/graphics/Bitmap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/view/MessageView$PictureData;

    .line 303
    iget-object v0, p0, Lcom/android/server/lights/view/MessageView$PictureData;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/lights/view/MessageView$PictureData;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/view/MessageView$PictureData;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .line 303
    iput-object p1, p0, Lcom/android/server/lights/view/MessageView$PictureData;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/server/lights/view/MessageView$PictureData;)Landroid/graphics/Matrix;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/view/MessageView$PictureData;

    .line 303
    iget-object v0, p0, Lcom/android/server/lights/view/MessageView$PictureData;->mMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/lights/view/MessageView$PictureData;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/view/MessageView$PictureData;
    .param p1, "x1"    # Landroid/graphics/Matrix;

    .line 303
    iput-object p1, p0, Lcom/android/server/lights/view/MessageView$PictureData;->mMatrix:Landroid/graphics/Matrix;

    return-object p1
.end method
