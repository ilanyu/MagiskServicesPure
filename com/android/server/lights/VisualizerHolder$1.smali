.class Lcom/android/server/lights/VisualizerHolder$1;
.super Ljava/lang/Object;
.source "VisualizerHolder.java"

# interfaces
.implements Landroid/media/audiofx/Visualizer$OnDataCaptureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/lights/VisualizerHolder;->setOnDataCaptureListener(Lcom/android/server/lights/VisualizerHolder$OnDataCaptureListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/lights/VisualizerHolder;

.field final synthetic val$onDataCaptureListener:Lcom/android/server/lights/VisualizerHolder$OnDataCaptureListener;


# direct methods
.method constructor <init>(Lcom/android/server/lights/VisualizerHolder;Lcom/android/server/lights/VisualizerHolder$OnDataCaptureListener;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/lights/VisualizerHolder;

    .line 65
    iput-object p1, p0, Lcom/android/server/lights/VisualizerHolder$1;->this$0:Lcom/android/server/lights/VisualizerHolder;

    iput-object p2, p0, Lcom/android/server/lights/VisualizerHolder$1;->val$onDataCaptureListener:Lcom/android/server/lights/VisualizerHolder$OnDataCaptureListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFftDataCapture(Landroid/media/audiofx/Visualizer;[BI)V
    .registers 12
    .param p1, "visualizer"    # Landroid/media/audiofx/Visualizer;
    .param p2, "fft"    # [B
    .param p3, "samplingRate"    # I

    .line 73
    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([B)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 74
    :cond_7
    array-length v0, p2

    const/4 v1, 0x2

    div-int/2addr v0, v1

    new-array v0, v0, [F

    .line 75
    .local v0, "magnitudes":[F
    const/4 v2, 0x0

    .line 76
    .local v2, "max":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_e
    array-length v4, v0

    if-ge v3, v4, :cond_30

    .line 77
    mul-int v4, v1, v3

    aget-byte v4, p2, v4

    int-to-double v4, v4

    mul-int v6, v1, v3

    add-int/lit8 v6, v6, 0x1

    aget-byte v6, p2, v6

    int-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    double-to-float v4, v4

    aput v4, v0, v3

    .line 78
    aget v4, v0, v2

    aget v5, v0, v3

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2d

    .line 79
    move v2, v3

    .line 76
    :cond_2d
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 82
    .end local v3    # "i":I
    :cond_30
    iget-object v1, p0, Lcom/android/server/lights/VisualizerHolder$1;->this$0:Lcom/android/server/lights/VisualizerHolder;

    iget v1, v1, Lcom/android/server/lights/VisualizerHolder;->lastMax:I

    if-ne v1, v2, :cond_37

    .line 83
    return-void

    .line 85
    :cond_37
    iget-object v1, p0, Lcom/android/server/lights/VisualizerHolder$1;->this$0:Lcom/android/server/lights/VisualizerHolder;

    iput v2, v1, Lcom/android/server/lights/VisualizerHolder;->lastMax:I

    .line 86
    iget-object v1, p0, Lcom/android/server/lights/VisualizerHolder$1;->val$onDataCaptureListener:Lcom/android/server/lights/VisualizerHolder$OnDataCaptureListener;

    mul-int v3, v2, p3

    array-length v4, p2

    div-int/2addr v3, v4

    invoke-interface {v1, v3, v0}, Lcom/android/server/lights/VisualizerHolder$OnDataCaptureListener;->onFrequencyCapture(I[F)V

    .line 87
    return-void
.end method

.method public onWaveFormDataCapture(Landroid/media/audiofx/Visualizer;[BI)V
    .registers 4
    .param p1, "visualizer"    # Landroid/media/audiofx/Visualizer;
    .param p2, "waveform"    # [B
    .param p3, "samplingRate"    # I

    .line 69
    return-void
.end method
