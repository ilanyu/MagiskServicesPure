.class abstract Lcom/android/server/display/DisplayDevice;
.super Ljava/lang/Object;
.source "DisplayDevice.java"


# instance fields
.field private mCurrentDisplayRect:Landroid/graphics/Rect;

.field private mCurrentLayerStack:I

.field private mCurrentLayerStackRect:Landroid/graphics/Rect;

.field private mCurrentOrientation:I

.field private mCurrentSurface:Landroid/view/Surface;

.field mDebugLastLoggedDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

.field private final mDisplayAdapter:Lcom/android/server/display/DisplayAdapter;

.field private final mDisplayToken:Landroid/os/IBinder;

.field private mPhysicalId:I

.field private final mUniqueId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayAdapter;Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 5
    .param p1, "displayAdapter"    # Lcom/android/server/display/DisplayAdapter;
    .param p2, "displayToken"    # Landroid/os/IBinder;
    .param p3, "uniqueId"    # Ljava/lang/String;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/display/DisplayDevice;->mPhysicalId:I

    .line 43
    iput v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentLayerStack:I

    .line 44
    iput v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentOrientation:I

    .line 63
    iput-object p1, p0, Lcom/android/server/display/DisplayDevice;->mDisplayAdapter:Lcom/android/server/display/DisplayAdapter;

    .line 64
    iput-object p2, p0, Lcom/android/server/display/DisplayDevice;->mDisplayToken:Landroid/os/IBinder;

    .line 65
    iput-object p3, p0, Lcom/android/server/display/DisplayDevice;->mUniqueId:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/DisplayAdapter;Landroid/os/IBinder;Ljava/lang/String;I)V
    .registers 5
    .param p1, "displayAdapter"    # Lcom/android/server/display/DisplayAdapter;
    .param p2, "displayToken"    # Landroid/os/IBinder;
    .param p3, "uniqueId"    # Ljava/lang/String;
    .param p4, "physicalId"    # I

    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/DisplayDevice;-><init>(Lcom/android/server/display/DisplayAdapter;Landroid/os/IBinder;Ljava/lang/String;)V

    .line 59
    iput p4, p0, Lcom/android/server/display/DisplayDevice;->mPhysicalId:I

    .line 60
    return-void
.end method


# virtual methods
.method public applyPendingDisplayDeviceInfoChangesLocked()V
    .registers 1

    .line 136
    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mAdapter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDevice;->mDisplayAdapter:Lcom/android/server/display/DisplayAdapter;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayAdapter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mUniqueId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDevice;->mUniqueId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mPhysicalId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDevice;->mPhysicalId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDisplayToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDevice;->mDisplayToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCurrentLayerStack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDevice;->mCurrentLayerStack:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCurrentOrientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDevice;->mCurrentOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCurrentLayerStackRect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDevice;->mCurrentLayerStackRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCurrentDisplayRect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDevice;->mCurrentDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCurrentSurface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDevice;->mCurrentSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 269
    return-void
.end method

.method public final getAdapterLocked()Lcom/android/server/display/DisplayAdapter;
    .registers 2

    .line 74
    iget-object v0, p0, Lcom/android/server/display/DisplayDevice;->mDisplayAdapter:Lcom/android/server/display/DisplayAdapter;

    return-object v0
.end method

.method public abstract getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;
.end method

.method public final getDisplayTokenLocked()Landroid/os/IBinder;
    .registers 2

    .line 84
    iget-object v0, p0, Lcom/android/server/display/DisplayDevice;->mDisplayToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public final getNameLocked()Ljava/lang/String;
    .registers 2

    .line 93
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getPhysicalId()I
    .registers 2

    .line 102
    iget v0, p0, Lcom/android/server/display/DisplayDevice;->mPhysicalId:I

    return v0
.end method

.method public final getUniqueId()Ljava/lang/String;
    .registers 2

    .line 109
    iget-object v0, p0, Lcom/android/server/display/DisplayDevice;->mUniqueId:Ljava/lang/String;

    return-object v0
.end method

.method public abstract hasStableUniqueId()Z
.end method

.method public onOverlayChangedLocked()V
    .registers 1

    .line 163
    return-void
.end method

.method public performTraversalLocked(Landroid/view/SurfaceControl$Transaction;)V
    .registers 2
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 142
    return-void
.end method

.method public final populateViewportLocked(Landroid/hardware/display/DisplayViewport;)V
    .registers 5
    .param p1, "viewport"    # Landroid/hardware/display/DisplayViewport;

    .line 234
    iget v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentOrientation:I

    iput v0, p1, Landroid/hardware/display/DisplayViewport;->orientation:I

    .line 236
    iget-object v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentLayerStackRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_10

    .line 237
    iget-object v0, p1, Landroid/hardware/display/DisplayViewport;->logicalFrame:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/display/DisplayDevice;->mCurrentLayerStackRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_15

    .line 239
    :cond_10
    iget-object v0, p1, Landroid/hardware/display/DisplayViewport;->logicalFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 242
    :goto_15
    iget-object v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentDisplayRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_21

    .line 243
    iget-object v0, p1, Landroid/hardware/display/DisplayViewport;->physicalFrame:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/display/DisplayDevice;->mCurrentDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_26

    .line 245
    :cond_21
    iget-object v0, p1, Landroid/hardware/display/DisplayViewport;->physicalFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 248
    :goto_26
    iget v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentOrientation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_33

    iget v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentOrientation:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_31

    goto :goto_33

    :cond_31
    const/4 v1, 0x0

    nop

    :cond_33
    :goto_33
    move v0, v1

    .line 250
    .local v0, "isRotated":Z
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v1

    .line 251
    .local v1, "info":Lcom/android/server/display/DisplayDeviceInfo;
    if-eqz v0, :cond_3d

    iget v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    goto :goto_3f

    :cond_3d
    iget v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    :goto_3f
    iput v2, p1, Landroid/hardware/display/DisplayViewport;->deviceWidth:I

    .line 252
    if-eqz v0, :cond_46

    iget v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    goto :goto_48

    :cond_46
    iget v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    :goto_48
    iput v2, p1, Landroid/hardware/display/DisplayViewport;->deviceHeight:I

    .line 253
    return-void
.end method

.method public requestDisplayModesLocked(II)V
    .registers 3
    .param p1, "colorMode"    # I
    .param p2, "modeId"    # I

    .line 160
    return-void
.end method

.method public requestDisplayStateLocked(II)Ljava/lang/Runnable;
    .registers 4
    .param p1, "state"    # I
    .param p2, "brightness"    # I

    .line 153
    const/4 v0, 0x0

    return-object v0
.end method

.method public final setDiffScreenProjection(Landroid/view/SurfaceControl$Transaction;Z)V
    .registers 4
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "isScreenProjection"    # Z

    .line 224
    iget-object v0, p0, Lcom/android/server/display/DisplayDevice;->mDisplayToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0, p2}, Landroid/view/SurfaceControl$Transaction;->setDiffScreenProjection(Landroid/os/IBinder;Z)Landroid/view/SurfaceControl$Transaction;

    .line 225
    return-void
.end method

.method public final setLayerStackLocked(Landroid/view/SurfaceControl$Transaction;I)V
    .registers 4
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "layerStack"    # I

    .line 169
    iget v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentLayerStack:I

    if-eq v0, p2, :cond_b

    .line 170
    iput p2, p0, Lcom/android/server/display/DisplayDevice;->mCurrentLayerStack:I

    .line 171
    iget-object v0, p0, Lcom/android/server/display/DisplayDevice;->mDisplayToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0, p2}, Landroid/view/SurfaceControl$Transaction;->setDisplayLayerStack(Landroid/os/IBinder;I)Landroid/view/SurfaceControl$Transaction;

    .line 173
    :cond_b
    return-void
.end method

.method public final setProjectionLocked(Landroid/view/SurfaceControl$Transaction;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "orientation"    # I
    .param p3, "layerStackRect"    # Landroid/graphics/Rect;
    .param p4, "displayRect"    # Landroid/graphics/Rect;

    .line 187
    iget v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentOrientation:I

    if-ne v0, p2, :cond_1c

    iget-object v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentLayerStackRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentLayerStackRect:Landroid/graphics/Rect;

    .line 189
    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentDisplayRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentDisplayRect:Landroid/graphics/Rect;

    .line 191
    invoke-virtual {v0, p4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    .line 192
    :cond_1c
    iput p2, p0, Lcom/android/server/display/DisplayDevice;->mCurrentOrientation:I

    .line 194
    iget-object v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentLayerStackRect:Landroid/graphics/Rect;

    if-nez v0, :cond_29

    .line 195
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentLayerStackRect:Landroid/graphics/Rect;

    .line 197
    :cond_29
    iget-object v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentLayerStackRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 199
    iget-object v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentDisplayRect:Landroid/graphics/Rect;

    if-nez v0, :cond_39

    .line 200
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentDisplayRect:Landroid/graphics/Rect;

    .line 202
    :cond_39
    iget-object v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 204
    iget-object v0, p0, Lcom/android/server/display/DisplayDevice;->mDisplayToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0, p2, p3, p4}, Landroid/view/SurfaceControl$Transaction;->setDisplayProjection(Landroid/os/IBinder;ILandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 207
    :cond_43
    return-void
.end method

.method public final setSurfaceLocked(Landroid/view/SurfaceControl$Transaction;Landroid/view/Surface;)V
    .registers 4
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "surface"    # Landroid/view/Surface;

    .line 213
    iget-object v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentSurface:Landroid/view/Surface;

    if-eq v0, p2, :cond_b

    .line 214
    iput-object p2, p0, Lcom/android/server/display/DisplayDevice;->mCurrentSurface:Landroid/view/Surface;

    .line 215
    iget-object v0, p0, Lcom/android/server/display/DisplayDevice;->mDisplayToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0, p2}, Landroid/view/SurfaceControl$Transaction;->setDisplaySurface(Landroid/os/IBinder;Landroid/view/Surface;)Landroid/view/SurfaceControl$Transaction;

    .line 217
    :cond_b
    return-void
.end method
