.class Lcom/android/server/lights/view/MusicView$WaveConfig;
.super Ljava/lang/Object;
.source "MusicView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/lights/view/MusicView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WaveConfig"
.end annotation


# instance fields
.field public acc:I

.field final synthetic this$0:Lcom/android/server/lights/view/MusicView;

.field public waveCenter:I

.field public waveHeight:I

.field public waveWidth:I

.field public width:I

.field public x:I

.field public y:I


# direct methods
.method constructor <init>(Lcom/android/server/lights/view/MusicView;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/lights/view/MusicView;

    .line 292
    iput-object p1, p0, Lcom/android/server/lights/view/MusicView$WaveConfig;->this$0:Lcom/android/server/lights/view/MusicView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/lights/view/MusicView$WaveConfig;->x:I

    .line 294
    iput v0, p0, Lcom/android/server/lights/view/MusicView$WaveConfig;->y:I

    .line 295
    const/16 v0, 0x78

    iput v0, p0, Lcom/android/server/lights/view/MusicView$WaveConfig;->acc:I

    .line 296
    const/16 v0, 0x8ca

    iput v0, p0, Lcom/android/server/lights/view/MusicView$WaveConfig;->width:I

    .line 297
    const/16 v0, 0x258

    iput v0, p0, Lcom/android/server/lights/view/MusicView$WaveConfig;->waveCenter:I

    .line 298
    const/16 v0, 0x640

    iput v0, p0, Lcom/android/server/lights/view/MusicView$WaveConfig;->waveWidth:I

    .line 299
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/server/lights/view/MusicView$WaveConfig;->waveHeight:I

    return-void
.end method
