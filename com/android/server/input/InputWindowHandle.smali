.class public final Lcom/android/server/input/InputWindowHandle;
.super Ljava/lang/Object;
.source "InputWindowHandle.java"


# instance fields
.field public canReceiveKeys:Z

.field public final clientWindow:Landroid/view/IWindow;

.field public dispatchingTimeoutNanos:J

.field public displayId:I

.field public frameBottom:I

.field public frameLeft:I

.field public frameRight:I

.field public frameTop:I

.field public hasFocus:Z

.field public hasWallpaper:Z

.field public final inputApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

.field public inputChannel:Landroid/view/InputChannel;

.field public inputFeatures:I

.field public layer:I

.field public layoutParamsFlags:I

.field public layoutParamsType:I

.field public name:Ljava/lang/String;

.field public ownerPid:I

.field public ownerUid:I

.field public paused:Z

.field private ptr:J

.field public scaleFactor:F

.field public final touchableRegion:Landroid/graphics/Region;

.field public visible:Z

.field public final windowState:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/server/input/InputApplicationHandle;Ljava/lang/Object;Landroid/view/IWindow;I)V
    .registers 6
    .param p1, "inputApplicationHandle"    # Lcom/android/server/input/InputApplicationHandle;
    .param p2, "windowState"    # Ljava/lang/Object;
    .param p3, "clientWindow"    # Landroid/view/IWindow;
    .param p4, "displayId"    # I

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    .line 101
    iput-object p1, p0, Lcom/android/server/input/InputWindowHandle;->inputApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    .line 102
    iput-object p2, p0, Lcom/android/server/input/InputWindowHandle;->windowState:Ljava/lang/Object;

    .line 103
    iput-object p3, p0, Lcom/android/server/input/InputWindowHandle;->clientWindow:Landroid/view/IWindow;

    .line 104
    iput p4, p0, Lcom/android/server/input/InputWindowHandle;->displayId:I

    .line 105
    return-void
.end method

.method private native nativeDispose()V
.end method


# virtual methods
.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 122
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/input/InputWindowHandle;->nativeDispose()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_8

    .line 124
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 125
    nop

    .line 126
    return-void

    .line 124
    :catchall_8
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/input/InputWindowHandle;->name:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ", layer="

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/input/InputWindowHandle;->layer:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", frame=["

    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/input/InputWindowHandle;->frameLeft:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/input/InputWindowHandle;->frameTop:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/input/InputWindowHandle;->frameRight:I

    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/input/InputWindowHandle;->frameBottom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", touchableRegion="

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", visible="

    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/input/InputWindowHandle;->visible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 109
    return-object v0
.end method
