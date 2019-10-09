.class Lcom/android/server/lights/view/MessageView$WaveConfig;
.super Ljava/lang/Object;
.source "MessageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/lights/view/MessageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WaveConfig"
.end annotation


# static fields
.field public static final EDGE_X:I = 0x2bc


# instance fields
.field public acc:I

.field final synthetic this$0:Lcom/android/server/lights/view/MessageView;

.field public waveCenter:I

.field public waveHeight:I

.field public waveWidth:I

.field public width:I

.field public x:I

.field public y:I


# direct methods
.method constructor <init>(Lcom/android/server/lights/view/MessageView;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/lights/view/MessageView;

    .line 282
    iput-object p1, p0, Lcom/android/server/lights/view/MessageView$WaveConfig;->this$0:Lcom/android/server/lights/view/MessageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/lights/view/MessageView$WaveConfig;->x:I

    .line 285
    const/16 v0, 0x2bc

    iput v0, p0, Lcom/android/server/lights/view/MessageView$WaveConfig;->y:I

    .line 286
    const/16 v0, 0x78

    iput v0, p0, Lcom/android/server/lights/view/MessageView$WaveConfig;->acc:I

    .line 287
    const/16 v0, 0x8ca

    iput v0, p0, Lcom/android/server/lights/view/MessageView$WaveConfig;->width:I

    .line 288
    const/16 v0, 0x1a9

    iput v0, p0, Lcom/android/server/lights/view/MessageView$WaveConfig;->waveCenter:I

    .line 289
    const/16 v0, 0x352

    iput v0, p0, Lcom/android/server/lights/view/MessageView$WaveConfig;->waveWidth:I

    .line 290
    const/16 v0, 0x20

    iput v0, p0, Lcom/android/server/lights/view/MessageView$WaveConfig;->waveHeight:I

    return-void
.end method
