.class public Lcom/android/server/display/DisplayTransformManager;
.super Ljava/lang/Object;
.source "DisplayTransformManager.java"


# static fields
.field private static final COLOR_SATURATION_BOOSTED:F = 1.1f

.field private static final COLOR_SATURATION_NATURAL:F = 1.0f

.field private static final DISPLAY_COLOR_ENHANCED:I = 0x2

.field private static final DISPLAY_COLOR_MANAGED:I = 0x0

.field private static final DISPLAY_COLOR_UNMANAGED:I = 0x1

.field public static final LEVEL_COLOR_MATRIX_GRAYSCALE:I = 0xc8

.field public static final LEVEL_COLOR_MATRIX_INVERT_COLOR:I = 0x12c

.field public static final LEVEL_COLOR_MATRIX_NIGHT_DISPLAY:I = 0x64

.field public static final LEVEL_COLOR_MATRIX_SATURATION:I = 0x96

.field private static final PERSISTENT_PROPERTY_DISPLAY_COLOR:Ljava/lang/String; = "persist.sys.sf.native_mode"

.field private static final PERSISTENT_PROPERTY_SATURATION:Ljava/lang/String; = "persist.sys.sf.color_saturation"

.field private static final SURFACE_FLINGER:Ljava/lang/String; = "SurfaceFlinger"

.field private static final SURFACE_FLINGER_TRANSACTION_COLOR_MATRIX:I = 0x3f7

.field private static final SURFACE_FLINGER_TRANSACTION_DALTONIZER:I = 0x3f6

.field private static final SURFACE_FLINGER_TRANSACTION_DISPLAY_COLOR:I = 0x3ff

.field private static final SURFACE_FLINGER_TRANSACTION_SATURATION:I = 0x3fe

.field private static final TAG:Ljava/lang/String; = "DisplayTransformManager"


# instance fields
.field private final mColorMatrix:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mColorMatrix"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[F>;"
        }
    .end annotation
.end field

.field private mDaltonizerMode:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mDaltonizerModeLock"
    .end annotation
.end field

.field private final mDaltonizerModeLock:Ljava/lang/Object;

.field private final mTempColorMatrix:[[F
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mColorMatrix"
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 3

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/display/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    .line 89
    const/4 v0, 0x2

    const/16 v1, 0x10

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, F

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/android/server/display/DisplayTransformManager;->mTempColorMatrix:[[F

    .line 95
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayTransformManager;->mDaltonizerModeLock:Ljava/lang/Object;

    .line 96
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/display/DisplayTransformManager;->mDaltonizerMode:I

    .line 100
    return-void
.end method

.method private static applyColorMatrix([F)V
    .registers 6
    .param p0, "m"    # [F

    .line 192
    const-string v0, "SurfaceFlinger"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 193
    .local v0, "flinger":Landroid/os/IBinder;
    if-eqz v0, :cond_41

    .line 194
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 195
    .local v1, "data":Landroid/os/Parcel;
    const-string v2, "android.ui.ISurfaceComposer"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 196
    const/4 v2, 0x0

    if-eqz p0, :cond_25

    .line 197
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    move v3, v2

    .local v3, "i":I
    :goto_19
    const/16 v4, 0x10

    if-ge v3, v4, :cond_28

    .line 199
    aget v4, p0, v3

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeFloat(F)V

    .line 198
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 202
    .end local v3    # "i":I
    :cond_25
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    :cond_28
    const/16 v3, 0x3f7

    const/4 v4, 0x0

    :try_start_2b
    invoke-interface {v0, v3, v1, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_2e} :catch_34
    .catchall {:try_start_2b .. :try_end_2e} :catchall_32

    .line 209
    .end local v1    # "data":Landroid/os/Parcel;
    :goto_2e
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 210
    goto :goto_41

    .line 209
    .restart local v1    # "data":Landroid/os/Parcel;
    :catchall_32
    move-exception v2

    goto :goto_3d

    .line 206
    :catch_34
    move-exception v2

    .line 207
    .local v2, "ex":Landroid/os/RemoteException;
    :try_start_35
    const-string v3, "DisplayTransformManager"

    const-string v4, "Failed to set color transform"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3c
    .catchall {:try_start_35 .. :try_end_3c} :catchall_32

    .end local v2    # "ex":Landroid/os/RemoteException;
    goto :goto_2e

    .line 209
    :goto_3d
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2

    .line 212
    .end local v1    # "data":Landroid/os/Parcel;
    :cond_41
    :goto_41
    return-void
.end method

.method private static applyDaltonizerMode(I)V
    .registers 6
    .param p0, "mode"    # I

    .line 218
    const-string v0, "SurfaceFlinger"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 219
    .local v0, "flinger":Landroid/os/IBinder;
    if-eqz v0, :cond_2e

    .line 220
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 221
    .local v1, "data":Landroid/os/Parcel;
    const-string v2, "android.ui.ISurfaceComposer"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 222
    invoke-virtual {v1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 224
    const/16 v2, 0x3f6

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_18
    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1b} :catch_21
    .catchall {:try_start_18 .. :try_end_1b} :catchall_1f

    .line 228
    .end local v1    # "data":Landroid/os/Parcel;
    :goto_1b
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 229
    goto :goto_2e

    .line 228
    .restart local v1    # "data":Landroid/os/Parcel;
    :catchall_1f
    move-exception v2

    goto :goto_2a

    .line 225
    :catch_21
    move-exception v2

    .line 226
    .local v2, "ex":Landroid/os/RemoteException;
    :try_start_22
    const-string v3, "DisplayTransformManager"

    const-string v4, "Failed to set Daltonizer mode"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_29
    .catchall {:try_start_22 .. :try_end_29} :catchall_1f

    .end local v2    # "ex":Landroid/os/RemoteException;
    goto :goto_1b

    .line 228
    :goto_2a
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2

    .line 231
    .end local v1    # "data":Landroid/os/Parcel;
    :cond_2e
    :goto_2e
    return-void
.end method

.method private applySaturation(F)V
    .registers 7
    .param p1, "saturation"    # F

    .line 274
    const-string/jumbo v0, "persist.sys.sf.color_saturation"

    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const-string v0, "SurfaceFlinger"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 276
    .local v0, "flinger":Landroid/os/IBinder;
    if-eqz v0, :cond_38

    .line 277
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 278
    .local v1, "data":Landroid/os/Parcel;
    const-string v2, "android.ui.ISurfaceComposer"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 279
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 281
    const/16 v2, 0x3fe

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_22
    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_25} :catch_2b
    .catchall {:try_start_22 .. :try_end_25} :catchall_29

    .line 285
    .end local v1    # "data":Landroid/os/Parcel;
    :goto_25
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 286
    goto :goto_38

    .line 285
    .restart local v1    # "data":Landroid/os/Parcel;
    :catchall_29
    move-exception v2

    goto :goto_34

    .line 282
    :catch_2b
    move-exception v2

    .line 283
    .local v2, "ex":Landroid/os/RemoteException;
    :try_start_2c
    const-string v3, "DisplayTransformManager"

    const-string v4, "Failed to set saturation"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_29

    .line 283
    .end local v2    # "ex":Landroid/os/RemoteException;
    goto :goto_25

    .line 285
    :goto_34
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2

    .line 288
    .end local v1    # "data":Landroid/os/Parcel;
    :cond_38
    :goto_38
    return-void
.end method

.method private computeColorMatrixLocked()[F
    .registers 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mColorMatrix"
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/android/server/display/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 151
    .local v0, "count":I
    if-nez v0, :cond_a

    .line 152
    const/4 v1, 0x0

    return-object v1

    .line 155
    :cond_a
    iget-object v1, p0, Lcom/android/server/display/DisplayTransformManager;->mTempColorMatrix:[[F

    .line 156
    .local v1, "result":[[F
    const/4 v2, 0x0

    aget-object v3, v1, v2

    invoke-static {v3, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 157
    nop

    .local v2, "i":I
    :goto_13
    if-ge v2, v0, :cond_31

    .line 158
    iget-object v3, p0, Lcom/android/server/display/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [F

    .line 159
    .local v3, "rhs":[F
    add-int/lit8 v4, v2, 0x1

    rem-int/lit8 v4, v4, 0x2

    aget-object v4, v1, v4

    const/4 v5, 0x0

    rem-int/lit8 v6, v2, 0x2

    aget-object v6, v1, v6

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v8, v3

    invoke-static/range {v4 .. v9}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 157
    .end local v3    # "rhs":[F
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 161
    .end local v2    # "i":I
    :cond_31
    rem-int/lit8 v2, v0, 0x2

    aget-object v2, v1, v2

    return-object v2
.end method

.method public static needsLinearColorMatrix()Z
    .registers 2

    .line 237
    const-string/jumbo v0, "persist.sys.sf.native_mode"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_b

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return v1
.end method

.method public static needsLinearColorMatrix(I)Z
    .registers 2
    .param p0, "colorMode"    # I

    .line 246
    const/4 v0, 0x2

    if-eq p0, v0, :cond_5

    const/4 v0, 0x1

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    return v0
.end method

.method private setDisplayColor(I)V
    .registers 7
    .param p1, "color"    # I

    .line 294
    const-string/jumbo v0, "persist.sys.sf.native_mode"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const-string v0, "SurfaceFlinger"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 296
    .local v0, "flinger":Landroid/os/IBinder;
    if-eqz v0, :cond_38

    .line 297
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 298
    .local v1, "data":Landroid/os/Parcel;
    const-string v2, "android.ui.ISurfaceComposer"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 299
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 301
    const/16 v2, 0x3ff

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_22
    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_25} :catch_2b
    .catchall {:try_start_22 .. :try_end_25} :catchall_29

    .line 305
    .end local v1    # "data":Landroid/os/Parcel;
    :goto_25
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 306
    goto :goto_38

    .line 305
    .restart local v1    # "data":Landroid/os/Parcel;
    :catchall_29
    move-exception v2

    goto :goto_34

    .line 302
    :catch_2b
    move-exception v2

    .line 303
    .local v2, "ex":Landroid/os/RemoteException;
    :try_start_2c
    const-string v3, "DisplayTransformManager"

    const-string v4, "Failed to set display color"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_29

    .line 303
    .end local v2    # "ex":Landroid/os/RemoteException;
    goto :goto_25

    .line 305
    :goto_34
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2

    .line 308
    .end local v1    # "data":Landroid/os/Parcel;
    :cond_38
    :goto_38
    return-void
.end method

.method private updateConfiguration()V
    .registers 4

    .line 312
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    .line 315
    goto :goto_11

    .line 313
    :catch_9
    move-exception v0

    .line 314
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "DisplayTransformManager"

    const-string v2, "Could not update configuration"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 316
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_11
    return-void
.end method


# virtual methods
.method public getColorMatrix(I)[F
    .registers 5
    .param p1, "key"    # I

    .line 106
    iget-object v0, p0, Lcom/android/server/display/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    monitor-enter v0

    .line 107
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    .line 108
    .local v1, "value":[F
    if-nez v1, :cond_f

    const/4 v2, 0x0

    goto :goto_14

    :cond_f
    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v2

    :goto_14
    monitor-exit v0

    return-object v2

    .line 109
    .end local v1    # "value":[F
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public getDaltonizerMode()I
    .registers 3

    .line 168
    iget-object v0, p0, Lcom/android/server/display/DisplayTransformManager;->mDaltonizerModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 169
    :try_start_3
    iget v1, p0, Lcom/android/server/display/DisplayTransformManager;->mDaltonizerMode:I

    monitor-exit v0

    return v1

    .line 170
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public setColorMatrix(I[F)V
    .registers 7
    .param p1, "level"    # I
    .param p2, "value"    # [F

    .line 123
    if-eqz p2, :cond_20

    array-length v0, p2

    const/16 v1, 0x10

    if-ne v0, v1, :cond_8

    goto :goto_20

    .line 124
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected length: 16 (4x4 matrix), actual length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_20
    :goto_20
    iget-object v0, p0, Lcom/android/server/display/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    monitor-enter v0

    .line 129
    :try_start_23
    iget-object v1, p0, Lcom/android/server/display/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    .line 130
    .local v1, "oldValue":[F
    invoke-static {v1, p2}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v2

    if-nez v2, :cond_52

    .line 131
    if-nez p2, :cond_39

    .line 132
    iget-object v2, p0, Lcom/android/server/display/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_4b

    .line 133
    :cond_39
    if-nez v1, :cond_46

    .line 134
    iget-object v2, p0, Lcom/android/server/display/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    array-length v3, p2

    invoke-static {p2, v3}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_4b

    .line 136
    :cond_46
    array-length v2, p2

    const/4 v3, 0x0

    invoke-static {p2, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 140
    :goto_4b
    invoke-direct {p0}, Lcom/android/server/display/DisplayTransformManager;->computeColorMatrixLocked()[F

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/display/DisplayTransformManager;->applyColorMatrix([F)V

    .line 142
    .end local v1    # "oldValue":[F
    :cond_52
    monitor-exit v0

    .line 143
    return-void

    .line 142
    :catchall_54
    move-exception v1

    monitor-exit v0
    :try_end_56
    .catchall {:try_start_23 .. :try_end_56} :catchall_54

    throw v1
.end method

.method public setColorMode(I[F)Z
    .registers 7
    .param p1, "colorMode"    # I
    .param p2, "nightDisplayMatrix"    # [F

    .line 250
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez p1, :cond_d

    .line 251
    invoke-direct {p0, v2}, Lcom/android/server/display/DisplayTransformManager;->applySaturation(F)V

    .line 252
    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayTransformManager;->setDisplayColor(I)V

    goto :goto_2c

    .line 253
    :cond_d
    if-ne p1, v1, :cond_19

    .line 254
    const v2, 0x3f8ccccd    # 1.1f

    invoke-direct {p0, v2}, Lcom/android/server/display/DisplayTransformManager;->applySaturation(F)V

    .line 255
    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayTransformManager;->setDisplayColor(I)V

    goto :goto_2c

    .line 256
    :cond_19
    const/4 v0, 0x2

    if-ne p1, v0, :cond_23

    .line 257
    invoke-direct {p0, v2}, Lcom/android/server/display/DisplayTransformManager;->applySaturation(F)V

    .line 258
    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayTransformManager;->setDisplayColor(I)V

    goto :goto_2c

    .line 259
    :cond_23
    const/4 v3, 0x3

    if-ne p1, v3, :cond_2c

    .line 260
    invoke-direct {p0, v2}, Lcom/android/server/display/DisplayTransformManager;->applySaturation(F)V

    .line 261
    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayTransformManager;->setDisplayColor(I)V

    .line 263
    :cond_2c
    :goto_2c
    const/16 v0, 0x64

    invoke-virtual {p0, v0, p2}, Lcom/android/server/display/DisplayTransformManager;->setColorMatrix(I[F)V

    .line 265
    invoke-direct {p0}, Lcom/android/server/display/DisplayTransformManager;->updateConfiguration()V

    .line 267
    return v1
.end method

.method public setDaltonizerMode(I)V
    .registers 4
    .param p1, "mode"    # I

    .line 180
    iget-object v0, p0, Lcom/android/server/display/DisplayTransformManager;->mDaltonizerModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 181
    :try_start_3
    iget v1, p0, Lcom/android/server/display/DisplayTransformManager;->mDaltonizerMode:I

    if-eq v1, p1, :cond_c

    .line 182
    iput p1, p0, Lcom/android/server/display/DisplayTransformManager;->mDaltonizerMode:I

    .line 183
    invoke-static {p1}, Lcom/android/server/display/DisplayTransformManager;->applyDaltonizerMode(I)V

    .line 185
    :cond_c
    monitor-exit v0

    .line 186
    return-void

    .line 185
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method
