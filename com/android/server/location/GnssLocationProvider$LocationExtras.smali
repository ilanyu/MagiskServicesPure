.class Lcom/android/server/location/GnssLocationProvider$LocationExtras;
.super Ljava/lang/Object;
.source "GnssLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GnssLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocationExtras"
.end annotation


# instance fields
.field private final mBundle:Landroid/os/Bundle;

.field private mMaxCn0:I

.field private mMeanCn0:I

.field private mSvCount:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider$LocationExtras;->mBundle:Landroid/os/Bundle;

    .line 286
    return-void
.end method


# virtual methods
.method public getBundle()Landroid/os/Bundle;
    .registers 3

    .line 313
    monitor-enter p0

    .line 314
    :try_start_1
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$LocationExtras;->mBundle:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    monitor-exit p0

    return-object v0

    .line 315
    :catchall_a
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public reset()V
    .registers 2

    .line 298
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0}, Lcom/android/server/location/GnssLocationProvider$LocationExtras;->set(III)V

    .line 299
    return-void
.end method

.method public set(III)V
    .registers 5
    .param p1, "svCount"    # I
    .param p2, "meanCn0"    # I
    .param p3, "maxCn0"    # I

    .line 289
    monitor-enter p0

    .line 290
    :try_start_1
    iput p1, p0, Lcom/android/server/location/GnssLocationProvider$LocationExtras;->mSvCount:I

    .line 291
    iput p2, p0, Lcom/android/server/location/GnssLocationProvider$LocationExtras;->mMeanCn0:I

    .line 292
    iput p3, p0, Lcom/android/server/location/GnssLocationProvider$LocationExtras;->mMaxCn0:I

    .line 293
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_e

    .line 294
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider$LocationExtras;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Lcom/android/server/location/GnssLocationProvider$LocationExtras;->setBundle(Landroid/os/Bundle;)V

    .line 295
    return-void

    .line 293
    :catchall_e
    move-exception v0

    :try_start_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw v0
.end method

.method public setBundle(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 303
    if-eqz p1, :cond_20

    .line 304
    monitor-enter p0

    .line 305
    :try_start_3
    const-string/jumbo v0, "satellites"

    iget v1, p0, Lcom/android/server/location/GnssLocationProvider$LocationExtras;->mSvCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 306
    const-string/jumbo v0, "meanCn0"

    iget v1, p0, Lcom/android/server/location/GnssLocationProvider$LocationExtras;->mMeanCn0:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 307
    const-string/jumbo v0, "maxCn0"

    iget v1, p0, Lcom/android/server/location/GnssLocationProvider$LocationExtras;->mMaxCn0:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 308
    monitor-exit p0

    goto :goto_20

    :catchall_1d
    move-exception v0

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v0

    .line 310
    :cond_20
    :goto_20
    return-void
.end method
