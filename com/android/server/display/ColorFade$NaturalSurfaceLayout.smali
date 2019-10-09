.class final Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;
.super Ljava/lang/Object;
.source "ColorFade.java"

# interfaces
.implements Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/ColorFade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NaturalSurfaceLayout"
.end annotation


# instance fields
.field private final mDisplayId:I

.field private final mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field private mSurfaceControl:Landroid/view/SurfaceControl;


# direct methods
.method public constructor <init>(Landroid/hardware/display/DisplayManagerInternal;ILandroid/view/SurfaceControl;)V
    .registers 5
    .param p1, "displayManagerInternal"    # Landroid/hardware/display/DisplayManagerInternal;
    .param p2, "displayId"    # I
    .param p3, "surfaceControl"    # Landroid/view/SurfaceControl;

    .line 733
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 734
    iput-object p1, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 735
    iput p2, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mDisplayId:I

    .line 736
    iput-object p3, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 737
    iget-object v0, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManagerInternal;->registerDisplayTransactionListener(Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V

    .line 738
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 2

    .line 741
    monitor-enter p0

    .line 742
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 743
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_b

    .line 744
    iget-object v0, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManagerInternal;->unregisterDisplayTransactionListener(Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V

    .line 745
    return-void

    .line 743
    :catchall_b
    move-exception v0

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw v0
.end method

.method public onDisplayTransaction()V
    .registers 7

    .line 749
    monitor-enter p0

    .line 750
    :try_start_1
    iget-object v0, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_7

    .line 751
    monitor-exit p0

    return-void

    .line 754
    :cond_7
    iget-object v0, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v1, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mDisplayId:I

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    .line 755
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    iget v1, v0, Landroid/view/DisplayInfo;->rotation:I

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_58

    .end local v0    # "displayInfo":Landroid/view/DisplayInfo;
    goto :goto_52

    .line 770
    .restart local v0    # "displayInfo":Landroid/view/DisplayInfo;
    :pswitch_1a
    iget-object v1, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v5, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    int-to-float v5, v5

    invoke-virtual {v1, v5, v4}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 771
    iget-object v1, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v4, v3, v2, v4}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    .end local v0    # "displayInfo":Landroid/view/DisplayInfo;
    goto :goto_52

    .line 765
    .restart local v0    # "displayInfo":Landroid/view/DisplayInfo;
    :pswitch_28
    iget-object v1, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v3, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    int-to-float v3, v3

    iget v5, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    int-to-float v5, v5

    invoke-virtual {v1, v3, v5}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 767
    iget-object v1, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2, v4, v4, v2}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    .line 768
    goto :goto_52

    .line 761
    :pswitch_39
    iget-object v1, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v5, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    int-to-float v5, v5

    invoke-virtual {v1, v4, v5}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 762
    iget-object v1, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v4, v2, v3, v4}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    .line 763
    goto :goto_52

    .line 757
    :pswitch_47
    iget-object v1, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v4, v4}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 758
    iget-object v1, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v3, v4, v4, v3}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    .line 759
    nop

    .line 774
    .end local v0    # "displayInfo":Landroid/view/DisplayInfo;
    :goto_52
    monitor-exit p0

    .line 775
    return-void

    .line 774
    :catchall_54
    move-exception v0

    monitor-exit p0
    :try_end_56
    .catchall {:try_start_1 .. :try_end_56} :catchall_54

    throw v0

    nop

    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_47
        :pswitch_39
        :pswitch_28
        :pswitch_1a
    .end packed-switch
.end method
