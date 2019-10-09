.class Lcom/android/server/wm/Dimmer$AlphaAnimationSpec;
.super Ljava/lang/Object;
.source "Dimmer.java"

# interfaces
.implements Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/Dimmer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AlphaAnimationSpec"
.end annotation


# instance fields
.field private final mDuration:J

.field private final mFromAlpha:F

.field private final mToAlpha:F


# direct methods
.method constructor <init>(FFJ)V
    .registers 5
    .param p1, "fromAlpha"    # F
    .param p2, "toAlpha"    # F
    .param p3, "duration"    # J

    .line 378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 379
    iput p1, p0, Lcom/android/server/wm/Dimmer$AlphaAnimationSpec;->mFromAlpha:F

    .line 380
    iput p2, p0, Lcom/android/server/wm/Dimmer$AlphaAnimationSpec;->mToAlpha:F

    .line 381
    iput-wide p3, p0, Lcom/android/server/wm/Dimmer$AlphaAnimationSpec;->mDuration:J

    .line 382
    return-void
.end method


# virtual methods
.method public apply(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;J)V
    .registers 8
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "sc"    # Landroid/view/SurfaceControl;
    .param p3, "currentPlayTime"    # J

    .line 391
    long-to-float v0, p3

    invoke-virtual {p0}, Lcom/android/server/wm/Dimmer$AlphaAnimationSpec;->getDuration()J

    move-result-wide v1

    long-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/android/server/wm/Dimmer$AlphaAnimationSpec;->mToAlpha:F

    iget v2, p0, Lcom/android/server/wm/Dimmer$AlphaAnimationSpec;->mFromAlpha:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/server/wm/Dimmer$AlphaAnimationSpec;->mFromAlpha:F

    add-float/2addr v0, v1

    .line 393
    .local v0, "alpha":F
    invoke-virtual {p1, p2, v0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 394
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 398
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "from="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/Dimmer$AlphaAnimationSpec;->mFromAlpha:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 399
    const-string v0, " to="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/Dimmer$AlphaAnimationSpec;->mToAlpha:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 400
    const-string v0, " duration="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/wm/Dimmer$AlphaAnimationSpec;->mDuration:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 401
    return-void
.end method

.method public getDuration()J
    .registers 3

    .line 386
    iget-wide v0, p0, Lcom/android/server/wm/Dimmer$AlphaAnimationSpec;->mDuration:J

    return-wide v0
.end method

.method public writeToProtoInner(Landroid/util/proto/ProtoOutputStream;)V
    .registers 8
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 405
    const-wide v0, 0x10b00000003L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 406
    .local v0, "token":J
    iget v2, p0, Lcom/android/server/wm/Dimmer$AlphaAnimationSpec;->mFromAlpha:F

    const-wide v3, 0x10200000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 407
    iget v2, p0, Lcom/android/server/wm/Dimmer$AlphaAnimationSpec;->mToAlpha:F

    const-wide v3, 0x10200000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 408
    iget-wide v2, p0, Lcom/android/server/wm/Dimmer$AlphaAnimationSpec;->mDuration:J

    const-wide v4, 0x10300000003L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 409
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 410
    return-void
.end method
